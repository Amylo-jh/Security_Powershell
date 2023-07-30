# information gathering

$ip = "127.0.0.1"
$port = 21, 80, 135, 3389, 5586

$tcp = New-Object System.Net.Sockets.TcpClient

foreach ($p in $port)
{
    try {
        $tcp.connect($ip, $p)
        $tcp
        $p
    }
    catch {
        
    }
}

# vm detection
$vmware = Get-ChildItem HKLM:\SYSTEM\ControlSet001\Services
$vmware | Where-Object -Property name -Match "vm"

