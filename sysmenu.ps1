$exit = 0;

while ($exit -ne 1) {

   $option = Read-Host -Prompt "`n`nPlease, select de option
1 - Exit
2 - System version  
3 - Uptime  
4 - CPU usage  
5 - Memory usage  
6 - Disk usage  
7 - System users  
8 - Connectivity  
`n`n
"
   switch ($option) {
      1 {
         $exit = 1; 
         Write-Output "Bye`n"; 
         $choose = "exit"; 
         break
      }

      2 {
         Clear-Host; 
         $choose = "System version"; 
         Write-Output (systeminfo | findstr /i "Ver")
      }

      3 {
         Clear-Host; 
         $choose = "Uptime"; 
         Write-Output (systeminfo | findstr /i "Boot Time")
         #Português BR
         #Write-Output (systeminfo | findstr /i "Tempo")
      }

      4 {
         Clear-Host; 
         Write-Output(taskmgr)
      }
   
      5 {
         Clear-Host; 
         $choose = "Memory usage"
         Write-Output(systeminfo | findstr /i "Mem")
      }

      6 {
         Clear-Host; 
         $choose = "Disk usage"
         Write-Output(diskmgmt.msc)
      }

      7 {
         Clear-Host; 
         $choose = "System users"
         Write-Output(netplwiz)
      }

      8 {
         Clear-Host; 
         $choose = "Connectivity"
         Write-Output(ipconfig /all)
      }
   }
   Read-Host -Prompt "`n`nPress Enter to $choose"

}