## 이 방법은 현재 세션에서만 이벤트를 등록하는 방법
# 윈도우에서 5초에 한 번 디스크 관련 이벤트가 생겼는지 묻는 쿼리
$query = "SELECT * from Win32_VolumeChangeEvent WITHIN 5"

# 이벤트 소비자 등록 쿼리
$action = {Invoke-WmiMethod win32_process -Name create -ArgumentList "calc.exe"}

# 만든 쿼리와 소비자를 등록
Register-WmiEvent -Query $query -SourceIdentifier 'USB_event' -Action $action

## 이 방법은 영구 이벤트 등록하는 방법
Set-WmiInstance -class __EventFilter -Namespace 'root\subscription'