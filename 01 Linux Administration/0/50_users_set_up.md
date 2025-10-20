When setting up users on Ubuntu, a common practice is to create one user with administrative privileges (admin) and a second
user for regular work without admin rights. Here is how you can do it:

1. During Ubuntu installation, you create the first user, which can be given admin rights by assigning sudo privileges. This
   user can execute commands with admin rights by prefixing commands with "sudo" and entering their password.

2. After installation, you can create a second, non-admin user for everyday work using the "adduser" command. This user will
   not have sudo privileges and thus cannot perform tasks that require administrative access, enhancing security for routine
   work.

3. To make a user admin after creation, add them to the sudo group with commands like "sudo usermod -aG sudo username".

This setup keeps the admin user for system management and the second user for regular tasks, minimizing risks by limiting
admin access. This aligns with Ubuntu best practices for user management and security.[1][2][3]

[1](https://www.digitalocean.com/community/tutorials/how-to-add-and-delete-users-on-ubuntu-20-04)
[2](https://www.digitalocean.com/community/tutorials/how-to-create-a-new-sudo-enabled-user-on-ubuntu)
[3](https://jumpcloud.com/blog/how-to-create-sudo-user-manage-sudo-access-ubuntu-22-04)
[4](https://edywerder.ch/ubuntu-manage-users-and-groups/)
[5](https://documentation.ubuntu.com/server/how-to/security/user-management/)
[6](https://www.wilderssecurity.com/threads/separate-standard-account-in-ubuntu.421466/)
[7](https://www.youtube.com/watch?v=g_PuZIoRoBI) [8](https://www.youtube.com/watch?v=Dm_Dnt2mjSo)
[9](https://www.reddit.com/r/linuxquestions/comments/1izhkxj/should_i_create_separate_user_for_different_stuff/)
