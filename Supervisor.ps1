$ExcludeFilter = "*.LOCK","*.config","*.bat","*.dat"


$FilesList = Get-ChildItem -Path c:\temp -Recurse -Exclude $ExcludeFilter  
$FilesList | Get-Member

foreach ($File in $FilesList){
$File.Fullname

}