netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow

ping 10.0.0.5 > C:\Users\Students\Desktop\log1.txt


$storageAccount = Get-AzStorageAccount -ResourceGroupName Test2 `
  -Name "eheu01129323" `

$ctx = $storageAccount.Context 

Set-AzStorageBlobContent -File "C:\Users\Students\Desktop\log1.txt" `
  -Container "blob1" `
  -Blob "log1.txt" `
  -Context $ctx
