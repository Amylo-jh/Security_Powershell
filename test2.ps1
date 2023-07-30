$apicode = @"
[DllImport("user32.dll")]
public static extern int LockWorkStation();
"@

$lock = Add-Type -MemberDefinition $apicode -Name LockPC -Namespace LockWork -PassThru
if(0 -eq $lock::LockWorkstation()) {
    throw "Failed to lock workstation"
}