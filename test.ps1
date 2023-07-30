$src = @"
public class Syscom
{
    public static void notepad()
    {
        System.Diagnostics.Process.Start("notepad.exe");
    }
    
    public int mul(int a, int b)
    {
        return (a*b);
    }
    public static void Main()
    {
        System.Diagnostics.Process.Start("cmd.exe", "/k dir");
        notepad();
    }
}
"@

Add-Type -TypeDefinition $src -OutputType Library -OutputAssembly ./syscom.dll
Add-Type -TypeDefinition $src -OutputType ConsoleApplication -OutputAssembly ./syscom.exe