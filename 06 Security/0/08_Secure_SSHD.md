To secure SSHD (the SSH daemon) on Linux, applying best practices in the SSH configuration and system settings is crucial to
reduce vulnerabilities and protect remote access:

- Disable root login by setting `PermitRootLogin no` in `/etc/ssh/sshd_config` to prevent attackers from directly accessing
  the most privileged account.
- Use key-based authentication and disable password authentication with `PasswordAuthentication no` to prevent brute-force
  password attacks.
- Change the default SSH port from 22 to a non-standard port using the `Port` directive to reduce automated attack noise.
- Limit user logins to only necessary accounts using the `AllowUsers` or `AllowGroups` directives.
- Set a limit on maximum authentication attempts with `MaxAuthTries` (recommended 3 or 4) to mitigate brute-force risks.
- Configure idle session timeouts using `ClientAliveInterval` and `ClientAliveCountMax` to disconnect inactive sessions
  automatically.
- Disable users’ ability to set environment variables via SSH by setting `PermitUserEnvironment no`.
- Use tools like Fail2Ban to block IP addresses exhibiting malicious login attempts.
- Keep SSH server software updated to patch known vulnerabilities.
- Use firewall rules to restrict SSH access to trusted IP addresses or networks wherever possible.
- Optionally, use multi-factor authentication (MFA) on top of SSH keys for an additional layer of security.

After making changes in `/etc/ssh/sshd_config`, restart SSHD to apply settings (`sudo systemctl restart sshd`). Regularly
review logs and monitor for suspicious activity.

These combined measures constitute a strong security posture for SSHD on Linux systems, significantly reducing the attack
surface and enhancing control over remote access.[1][2][3]

[1](https://www.blumira.com/blog/secure-ssh-on-linux)
[2](https://tailscale.com/learn/ssh-security-best-practices-protecting-your-remote-access-infrastructure)
[3](https://linux-audit.com/ssh/audit-and-harden-your-ssh-configuration/)
[4](https://security.gatech.edu/ssh-security-guidelines/)
[5](https://www.reddit.com/r/cybersecurity/comments/1f1sty0/article_10_essential_ssh_server_security_tips/)
[6](https://www.redhat.com/en/blog/eight-ways-secure-ssh)
[7](https://www.beyondtrust.com/blog/entry/ssh-key-management-overview-6-best-practices)
