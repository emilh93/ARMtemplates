netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow

Test-NetConnection -ComputerName logaccount123.file.core.windows.net -Port 445
# Save the password so the drive will persist on reboot
Invoke-Expression -Command "cmdkey /add:logaccount123.file.core.windows.net /user:Azure\logaccount123 /pass:rwAEY/uMx/Zj4ZgNsWNRcl+9TtvZm8+lvHVDL5fRCaBNF5Sh7L1+bE/YuEvx6fsZnL+66exMTWXx53ZPFI8OHQ=="
# Mount the drive
New-PSDrive -Name Z -PSProvider FileSystem -Root "\\logaccount123.file.core.windows.net\logshared"

Ping 10.0.0.5 > Z:\log.txt
