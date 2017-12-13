$FilesList = Get-ChildItem -Path c:\temp -Recurse -Filter "*.LOCK"  
$FilesList | Get-Member

foreach ($File in $FilesList){
$File.Fullname

}