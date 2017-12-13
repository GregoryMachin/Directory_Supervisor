$ExcludeFilter = "*.LOCK","*.config","*.bat","*.dat"
$IncludeFilter = "*.exe"
[DateTime]$LastWritetimeUpper = 'December 30, 2017'
[DateTime]$LastWritetimelower = 'December 1, 2017'
$FileSource = "C:\Users\clubb\AppData\Local\Temp"
#$FilesList = Get-ChildItem -Path c:\temp -Recurse -Exclude $ExcludeFilter  
#$FilesList = Get-ChildItem -Path c:\temp -Recurse -Include $IncludeFilter 
$FilesList = Get-ChildItem -Path $FileSource -Recurse    

#$FilesList | Get-Member

foreach ($File in $FilesList){
$File.Fullname
$File | ForEach-Object { $_.lastwritetime -gt $LastWritetimelower -AND $_.lastwritetime -lt  $LastWritetimeUpper}

}