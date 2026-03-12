#!/bin/bash
# fix-shared-folders.sh

echo "Starting to fix shared folders..."

# 1. Stop related services
sudo systemctl stop open-vm-tools 2>/dev/null

# 2. Unmount existing mounts
sudo umount /mnt/hgfs 2>/dev/null

# 3. Create mount point
sudo mkdir -p /mnt/hgfs
sudo chown $USER:$USER /mnt/hgfs
sudo chmod 755 /mnt/hgfs

# 4. Reinstall tools
echo "Reinstalling open-vm-tools..."
sudo apt update
sudo apt install --reinstall -y open-vm-tools open-vm-tools-desktop fuse

# 5. Load kernel module
sudo modprobe -r vmhgfs 2>/dev/null
sudo modprobe vmhgfs

# 6. Check shared folder configuration
echo "Configured shared folders:"
vmware-hgfsclient 2>/dev/null || echo "Unable to retrieve shared folders list"

# 7. Mount shared folders
echo "Attempting to mount..."
if sudo mount -t fuse.vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other,uid=$(id -u),gid=$(id -g) 2>/dev/null; then
    echo "Mount succeeded!"
else
    echo "Trying specific folders..."
    for folder in $(vmware-hgfsclient 2>/dev/null); do
        echo "Mounting $folder"
        sudo mkdir -p "/mnt/hgfs/$folder"
        sudo mount -t fuse.vmhgfs-fuse ".host:/$folder" "/mnt/hgfs/$folder" -o allow_other,uid=$(id -u),gid=$(id -g)
    done
fi

# 8. Configure automatic mount
echo "Configuring automatic mount..."
if ! grep -q "vmhgfs-fuse" /etc/fstab; then
    echo ".host:/ /mnt/hgfs fuse.vmhgfs-fuse allow_other,uid=$(id -u),gid=$(id -g),defaults 0 0" | sudo tee -a /etc/fstab
fi

# 9. Restart services
sudo systemctl start open-vm-tools
sudo systemctl enable open-vm-tools

# 10. Verify
echo ""
echo "=== Verification ==="
ls -la /mnt/hgfs/
echo ""

if [ -d "/mnt/hgfs" ] && [ "$(ls -A /mnt/hgfs/ 2>/dev/null)" ]; then
    echo "✅ Shared folders fixed successfully!"
    echo "Shared folders contents:"
    ls /mnt/hgfs/
else
    echo "❌ Shared folders are still empty or inaccessible"
    echo "Please check whether shared folders are enabled in VMware"
fi