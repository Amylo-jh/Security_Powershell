# obfuscation

$string = {get-process}.toString()
$encoded_command = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($string))
powershell.exe -encodedcommand $encoded_command

$encoded_command

$decoded_command = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($encoded_command))
$decoded_command