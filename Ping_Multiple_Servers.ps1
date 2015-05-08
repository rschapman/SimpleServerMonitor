#Author: Robert Chapman    
#Email: rschapman@gmail.com
#Purpose: Ping Multiple Servers / Computers       
#Version: 1
#"d-bwqa", "d-bwjs",

$ServerName = "d-bwjd","d-bwjq","d-bwjp","d-bobjs","d-bobjd","d-bobjqa","d-bobjp","d-bws","d-bwd","d-bwq","d-bwp"

foreach ($Server in $ServerName) {

		if (test-Connection -ComputerName $Server -Count 2 -Quiet ) { 
		
			write-Host "$Server is alive." -ForegroundColor Green
		
					} else
					
						{ Write-Warning "$Server may not be alive."
			
					}	
		
}