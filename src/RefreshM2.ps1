   function Refresh-M2 {
        param(
            $interval = 180
        )
        "Refreshing the IE Window every $interval seconds.  Make sure you log into M2 before running this script here: https://dha-bcs.csd.disa.mil/"
        "Press any key to stop."
        $shell = New-Object -ComObject Shell.Application
        do {
            'Refreshing M2'
            $shell.Windows() | 
                Where-Object { $_.Document.url -like 'https://dha-bcs.csd.disa.mil/*' }  | 
                ForEach-Object { $_.Refresh() }
            Start-Sleep -Seconds $interval
        } until ( [System.Console]::KeyAvailable )
        [System.Console]::ReadKey($true) | Out-Null
    }

Refresh-M2
