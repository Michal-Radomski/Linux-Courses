To configure user-based authentication in Apache/httpd, you typically use Basic Authentication with a password file. Here is
a step-by-step guide:

1. Create a password file using the `htpasswd` utility:

   ```
   htpasswd -c /path/to/.htpasswd username
   ```

   This command creates the file and adds the specified user. For additional users, omit the `-c` option.

2. Configure Apache to require authentication for a directory or location by editing your Apache configuration file
   (`httpd.conf` or a site config) or creating a `.htaccess` file inside the directory to protect:

   Example configuration in `httpd.conf`:

   ```apache
   <Directory "/var/www/html/protected">
       AuthType Basic
       AuthName "Restricted Area"
       AuthUserFile /path/to/.htpasswd
       Require valid-user
   </Directory>
   ```

   - `AuthType Basic` enables Basic Authentication.
   - `AuthName` sets the authentication realm shown in the login popup.
   - `AuthUserFile` points to the password file with user credentials.
   - `Require valid-user` means any user in the password file can access.

3. Restart Apache to apply changes.

This method prompts users for a username and password before granting access, restricting content to only authorized users.
For security, it is recommended to use HTTPS (SSL/TLS) so that credentials are encrypted during transmission.

More advanced setups can integrate with LDAP/Active Directory for centralized user management. Apache supports modules like
`mod_authnz_ldap` for that purpose.

This approach provides basic user-based authentication in Apache that can be easily managed and configured for secure access
control.[1][3][4][5]

[1](https://httpd.apache.org/docs/2.4/howto/auth.html)
[2](https://maarten.mulders.it/2019/03/securing-apache-httpd-with-microsoft-active-directory/)
[3](https://www.digitalocean.com/community/tutorials/how-to-set-up-password-authentication-with-apache-on-ubuntu-14-04)
[4](http://ssh.dukejournals.org/howto/auth.html) [5](https://httpd.apache.org/docs/2.4/programs/htpasswd.html)
[6](https://www.youtube.com/watch?v=00bwCjPp-FU) [7](https://discourse.openondemand.org/t/configure-apache-auth/2653)
[8](https://stackoverflow.com/questions/39895062/apache-httpd-server-authentication)
