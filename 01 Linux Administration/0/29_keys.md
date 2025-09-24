To generate SSH public and private keys on Ubuntu, follow these steps:

1. Open a terminal.
2. Use the command to generate a key pair. The recommended modern and secure key type is Ed25519:

   ```
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

   Replace "your_email@example.com" with your actual email address as a label.

3. When prompted, specify the file to save the key (press Enter to accept the default, which is usually
   `/home/your_username/.ssh/id_ed25519`).

4. Enter a passphrase to protect the private key (optional but recommended); confirm the passphrase.

5. After completion, your private key will be saved (e.g., `id_ed25519`), and your public key will be saved as
   `id_ed25519.pub` in the `.ssh` directory within your home folder.

This will create a secure SSH key pair for authentication purposes on Ubuntu.[1][3][4][5]

[1](https://git-scm.com/book/en/v2/Git-on-the-Server-Generating-Your-SSH-Public-Key)
[2](https://www.reddit.com/r/linux4noobs/comments/rm38r6/ssh_keys/) [3](https://help.ubuntu.com/community/SSH/OpenSSH/Keys)
[4](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-22-04)
[5](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
[6](https://docs.gitlab.com/user/ssh/) [7](https://www.ssh.com/academy/ssh/keygen)
[8](https://support.atlassian.com/bitbucket-cloud/docs/set-up-personal-ssh-keys-on-linux/)
[9](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-20-04)
