To encrypt a disk on Ubuntu, the most common and robust method is to use LUKS (Linux Unified Key Setup), which provides full
disk encryption at the block level. Here is a general approach:

1. Full Disk Encryption During Installation:

- When installing Ubuntu, the installer offers an option to enable full disk encryption.
- This encrypts the entire disk (except the boot partition) using LUKS with AES-256 encryption by default.
- You provide a passphrase that will be required at boot to unlock the encrypted volume.

2. Encrypting an Existing Disk or Partition Manually:

- Install the required tools: `cryptsetup`.
- Format the target partition with LUKS using the command: `sudo cryptsetup luksFormat /dev/sdXn` (replace sdXn with your
  partition).
- Open the encrypted partition: `sudo cryptsetup open /dev/sdXn encrypted_volume`.
- Create a filesystem on the mapped device under `/dev/mapper/encrypted_volume`:
  `sudo mkfs.ext4 /dev/mapper/encrypted_volume`.
- Mount the encrypted filesystem as needed.

3. Using LVM on LUKS:

- You can combine LUKS encryption with LVM to create encrypted logical volumes for flexibility.
- First encrypt the physical partition with LUKS, then set up LVM inside it.

4. Important Considerations:

- Back up all data before starting, as encryption will overwrite existing data.
- Choose a strong passphrase for security.
- Once encrypted, the system will require the passphrase at boot to unlock the disk.
- The boot partition itself remains unencrypted because the bootloader and kernel need to load before unlocking.

5. Post-Installation Encryption:

- If Ubuntu is already installed without encryption, you generally need to reinstall to enable full disk encryption.
- Alternatively, encrypt individual directories like the home directory with tools like `ecryptfs` or `fscrypt`.

Ubuntu uses LUKS encryption with strong defaults and integrates it well in the installer for ease of use. This protects data
at rest and guards against unauthorized access if the device is lost or stolen.[1][2][3][4]

[1](https://documentation.ubuntu.com/security/docs/security-features/storage/encryption-full-disk/)
[2](https://help.ubuntu.com/community/Full_Disk_Encryption_Howto_2019)
[3](https://jumpcloud.com/blog/how-to-enable-full-disk-encryption-ubuntu-22-04)
[4](https://gist.github.com/superjamie/d56d8bc3c9261ad603194726e3fef50f)
[5](https://www.reddit.com/r/linuxquestions/comments/swx2ro/researcher_looking_to_luks_encrypt_sensitive_data/)
[6](https://jumpcloud.com/blog/how-to-encrypt-ubuntu-20-04-desktop-post-installation)
[7](https://www.youtube.com/watch?v=ZmZYrBPVRVQ)
