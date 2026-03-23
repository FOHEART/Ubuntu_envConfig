配置github ssh key

1. 生成新的 SSH 密钥
```bash
ssh-keygen -t ed25519 -C "humaoxiao@vip.qq.com"
```

2. 启动 SSH 代理并添加密钥
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

3. 复制公钥
```bash
cat ~/.ssh/id_ed25519.pub
```

### 添加到 GitHub

- 登录 GitHub → 点击头像 → **Settings**
    
- 左侧菜单选择 **SSH and GPG keys**
    
- 点击 **New SSH key**，粘贴复制的公钥，命名后保存。
## 测试连接

```bash
ssh -T git@github.com
```

```bash
hmx@hmx-virtual-machine:~/Desktop$ ssh -T git@github.com
The authenticity of host 'github.com (20.205.243.166)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Hi FOHEART! You've successfully authenticated, but GitHub does not provide shell access.
```
