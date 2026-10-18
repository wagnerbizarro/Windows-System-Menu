$exit = 0;

while($exit -ne 1){
$option = Read-Host -Prompt "Please, select de option
1 - Exit
2 - System version  
3 - Uptime  
4 - CPU usage  
5 - Memory usage  
6 - Disk usage  
7 - System users  
8 - Connectivity  
"
switch($option){
   1 {$exit = 1; break}
   2 { Get-ComputerInfo | select-object OsName,OSDisplayVersion}
   3 {"Three"}
   4 {"Four"}
   5 {"5 Again"}
   6 {"6 Again"}
   7 {"7 Again"}
   8 {"8 Again"}
}

# Write-Output "$option!"
   
}