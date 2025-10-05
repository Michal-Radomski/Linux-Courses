To set up password-less SSH authentication with a passphrase on Linux, the process is similar to regular key-based
authentication but includes adding a passphrase to your private key for extra security.

Here are the detailed steps:

### 1. Generate SSH Key Pair with Passphrase

- Run this command on your client machine:
  ```bash
  ssh-keygen -t ed25519
  ```
- When prompted to "Enter passphrase," type a secure passphrase that will encrypt your private key. This adds an extra layer
  of protection so that even if your private key file is stolen, it cannot be used without the passphrase.
- The keys will be saved by default to `~/.ssh/id_ed25519` (private) and `~/.ssh/id_ed25519.pub` (public).

### 2. Copy the Public Key to the Server

- Use:
  ```bash
  ssh-copy-id user@remote-server
  ```
- This copies your public key to the server's `~/.ssh/authorized_keys` file.

### 3. Test the SSH Connection

- Connect using:
  ```bash
  ssh user@remote-server
  ```
- The connection will prompt for the passphrase that you set during key generation (instead of password).

### 4. Use ssh-agent for Convenience (Optional)

- To avoid typing the passphrase every time, use `ssh-agent` to cache the decrypted private key in memory.
- Start the agent:
  ```bash
  eval "$(ssh-agent -s)"
  ```
- Add your key:
  ```bash
  ssh-add ~/.ssh/id_ed25519
  ```
- After this, SSH connections will not ask for the passphrase until the agent session ends.

### 5. (Optional) Disable Password Authentication on Server

- Edit `/etc/ssh/sshd_config` on the server:
  ```
  PasswordAuthentication no
  ```
- Restart SSH service:
  ```bash
  sudo systemctl restart sshd
  ```

This setup means authentication uses the encrypted private key with a passphrase instead of a user password, combining
security with convenience by optionally using `ssh-agent`.[1][2][8]

[1](https://www.hostinger.com/tutorials/how-to-setup-passwordless-ssh)
[2](https://wiki.debian.org/Setup%20SSH%20Passwordless%20Login)
[3](https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server)
[4](https://www.strongdm.com/blog/ssh-passwordless-login) [5](https://www.redhat.com/en/blog/passwordless-ssh)
[6](https://www.instructables.com/Linux-setup-for-SSH-password-less-login/)
[7](https://www.phcomp.co.uk/Tutorials/Unix-And-Linux/ssh-passwordless-login.html)
[8](https://dev.to/sebos/mastering-ssh-key-based-authentication-secure-passwordless-login-for-linux-and-windows-4okm)
