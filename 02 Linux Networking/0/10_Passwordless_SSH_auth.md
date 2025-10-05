Password-less SSH authentication using public/private key pairs in Linux involves generating a key pair on the client
machine, copying the public key to the server, and then using the private key to authenticate without a password. Here are
the detailed steps:

## Steps to Configure Password-less SSH Authentication

### 1. Generate SSH Key Pair on Client

Use the ssh-keygen command to create a public-private key pair.

- Run: `ssh-keygen -t ed25519 -a 100`
- By default, the keys are saved in `~/.ssh/` as `id_ed25519` (private key) and `id_ed25519.pub` (public key).
- Optionally, enter a passphrase to secure the private key on your local machine.

### 2. Copy the Public Key to the Server

Transfer the public key to the remote server to enable key-based authentication.

- Use: `ssh-copy-id user@remote-server`
- This appends the public key to the `~/.ssh/authorized_keys` file of the specified user on the server.

### 3. Set Correct Permissions on Server

Ensure the `.ssh` directory and `authorized_keys` file have proper permissions.

- `.ssh` directory should be `700`
- `authorized_keys` file should be `600`

### 4. Disable Password Authentication (Optional but Recommended)

For enhanced security, disable password login on the server by editing `/etc/ssh/sshd_config`.

- Set `PasswordAuthentication no`
- Reload or restart the SSH service: `sudo systemctl reload sshd`

### 5. Test SSH Key Authentication

Try logging in to the server:

- `ssh user@remote-server`
- You should connect without a password prompt, relying on the SSH key pair.

## How This Works

- The client proves possession of the private key by decrypting a challenge encrypted with the public key stored on the
  server.
- If the proof succeeds, the user is authenticated without sending a password.

This method is highly secure and commonly used for secure server administration, automation, and scripts.[1][3][4][5][7][8]

[1](https://www.cyberciti.biz/faq/how-to-set-up-ssh-keys-on-linux-unix/)
[2](https://www.instructables.com/Linux-setup-for-SSH-password-less-login/) [3](https://guide.plgrid.pl/en/computing/ssh_key)
[4](https://ostechnix.com/configure-ssh-key-based-authentication-linux/)
[5](https://www.redhat.com/en/blog/key-based-authentication-ssh) [6](https://www.youtube.com/watch?v=LGUyqbyDNDg)
[7](https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server)
[8](https://www.strongdm.com/blog/ssh-passwordless-login) [9](https://www.ssh.com/academy/ssh/keygen)
[10](https://www.redhat.com/en/blog/passwordless-ssh)

Yes, it is possible to have multiple SSH key pairs in the `~/.ssh/` folder on a Linux system. You can store several pairs of
public/private keys there with different filenames to distinguish them.

However, since there are multiple keys, you need to manage which key to use for which server or service. This is typically
done through the `~/.ssh/config` file, where you can specify for each host which key file (IdentityFile) to use for
authentication.

Key points:

- All keys are kept flat in `~/.ssh/` (no subfolders), with distinct filenames like `id_ed25519_github`, `id_rsa_work`, etc.
- Use `ssh-keygen` with the `-f` flag to create a key pair with a specific filename inside `~/.ssh/`.
- Configure `~/.ssh/config` to map hosts to the appropriate key files.
- Permissions must be strict on the keys and `.ssh` directory.

This way, having multiple SSH key pairs in the `~/.ssh/` folder is a common and manageable practice.[1][2][3]

[1](https://dev.to/josephmidura/how-to-manage-multiple-ssh-key-pairs-1ik)
[2](https://stackoverflow.com/questions/23751625/how-to-manage-multiple-ssh-keys-in-the-ssh-directory)
[3](https://www.reddit.com/r/linuxquestions/comments/hurcyo/is_it_best_practice_to_have_multiple_ssh_keys/)
[4](https://www.redhat.com/en/blog/manage-multiple-ssh-key-pairs)
[5](https://code400.com/forum/forum/iseries-programming-languages/ifs/152670-managing-multiple-ssh-key-pairs-for-the-same-user)
