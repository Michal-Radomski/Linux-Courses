To get the serial number (product key) of the Windows preinstalled on your laptop before erasing all data, you can use the
following methods:

1. Using Command Prompt:

- Open the Command Prompt as administrator (search for "cmd", right-click, and select "Run as administrator").
- Run the command:

```
wmic path softwareLicensingService get OA3xOriginalProductKey
```

This will display the 25-character Windows product key embedded in your system firmware.

2. Using PowerShell:

- Open PowerShell as administrator.
- Run this command:

```
(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey
```

This also retrieves the product key from the system.

3. Using Registry Editor (less direct):

- Open Registry Editor (`regedit`).
- Navigate to:

```
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform
```

- Look for the value labeled `BackupProductKeyDefault`.

Once you have the product key stored, you can reinstall Windows cleanly later without relying on preinstalled software. Keep
this key safe during the process.

Note: Many modern laptops have the product key embedded in the UEFI firmware, so Windows installation will auto-activate if
you reinstall the same edition.

These methods are the most straightforward ways to retrieve your Windows product key before wiping and reinstalling the
OS.[1][2][3]

[1](https://www.ninjaone.com/blog/how-to-find-a-windows-10-product-key/)
[2](https://www.techrepublic.com/article/3-simple-ways-to-find-your-windows-10-product-key/)
[3](https://support.microsoft.com/en-us/windows/find-your-windows-product-key-aaa2bf69-7b2b-9f13-f581-a806abf0a886)
[4](https://www.reddit.com/r/WindowsHelp/comments/195ms29/how_to_read_windows_10_product_key/)
[5](https://www.youtube.com/watch?v=cCaJwzMKi9I)
[6](https://techcommunity.microsoft.com/discussions/windows10space/where-do-i-find-windows-10-pro-product-key/4281742)
[7](https://www.dell.com/support/kbdoc/en-ie/000132462/windows-product-key-frequently-asked-questions-faq)
[8](https://www.youtube.com/watch?v=t3E5yp_hXss) [9](https://www.tomshardware.com/how-to/find-windows-product-key)
[10](https://www.avg.com/en/signal/find-windows-10-product-key)

Yes, if your laptop uses UEFI firmware, the Windows product key is often embedded in the UEFI BIOS. This means when you erase
the disk and reinstall the same edition of Windows, the installer automatically detects the key from the hardware and
activates Windows without you needing to manually enter the serial key. This is called a digital license or OEM key stored in
firmware, and it simplifies reinstallations on the same machine.

However, ensure you install the same Windows edition (e.g., Home or Pro) that originally came with your laptop, as the
embedded key is edition-specific. If this is followed, the activation will be automatic once connected to the internet after
installation.

In summary: with UEFI and embedded keys, you can wipe your disk and reinstall Windows, and the product key will be retrieved
from hardware automatically during installation.[1][4][6]

[1](https://www.reddit.com/r/buildapc/comments/115trdk/windows_10_activated_without_license_key/)
[2](https://community.spiceworks.com/t/pull-windows-key-from-uefi-bios/1010865)
[3](https://www.youtube.com/watch?v=eGHWESrQiEc)
[4](https://answers.microsoft.com/en-us/windows/forum/all/install-windows-10-without-product-key/f0b59b4f-b818-46f4-a0a6-63c85aca695f)
[5](https://www.sevenforums.com/windows-updates-activation/356139-does-uefi-installation-affect-windows-activation.html)
[6](https://www.tenforums.com/installation-upgrade/180022-autounattend-no-product-key-2.html)
[7](https://learn.microsoft.com/en-us/answers/questions/3230264/activate-windows-10-without-a-product-key-availabl)
