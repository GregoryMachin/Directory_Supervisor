$ExcludeFilter = "*.LOCK","*.config","*.bat","*.dat"
$IncludeFilter = "*.exe"

#$FilesList = Get-ChildItem -Path c:\temp -Recurse -Exclude $ExcludeFilter  
$FilesList = Get-ChildItem -Path c:\temp -Recurse -Include $IncludeFilter  

$FilesList | Get-Member

foreach ($File in $FilesList){
$File.Fullname

}