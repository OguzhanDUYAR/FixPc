# 🚀 WizFix Enhanced and Optimized Version 🌟
# 🧑‍💻 Author: Oguzhan DUYAR

Function Show-Menu {
    Clear-Host
    Write-Host "✨🔧✨ WizFix: Boost Your Windows Performance ✨🔧✨" -ForegroundColor Cyan
    Write-Host "[1] 🔨 Repair System Files (SFC & DISM) 🩹"
    Write-Host "[2] 🔄 Check and Install Windows Updates 🛠️"
    Write-Host "[3] 🚀 Update Installed Apps (via winget) 📦"
    Write-Host "[4] 💾 Scan Disk and Memory for Errors 🩺"
    Write-Host "[5] 🚦 Manage Startup Applications 🎛️"
    Write-Host "[6] 🌐 Run Internet and Network Tests 📡"
    Write-Host "[7] 🖥️ Display System Information 📜"
    Write-Host "[8] 🎮 Enable Gamer Mode 🎲"
    Write-Host "[9] 🛠️ Install Developer Tools 👩‍💻"
    Write-Host "[10] 🧹 Clean Temporary Files 🗑️"
    Write-Host "[11] 🚀 Disable Visual Effects for Speed ⚡"
    Write-Host "[12] 🎯 Run All Tasks Automatically 🍿"
    Write-Host "[13] 🚪 Exit (Time to Bounce!) 🏃‍♂️💨"
}

Function Repair-SystemFiles {
    Write-Host "🛠️ Repairing system files... Hang tight..." -ForegroundColor Green
    sfc /scannow
    DISM /Online /Cleanup-Image /RestoreHealth
}

Function Update-Windows {
    Write-Host "💫 Checking and installing Windows updates... Might take a moment. ☕" -ForegroundColor Green
    Install-Module PSWindowsUpdate -Force
    Import-Module PSWindowsUpdate
    Get-WindowsUpdate -AcceptAll -Install -AutoReboot
}

Function Update-Apps {
    Write-Host "🚀 Updating your apps... Let’s fly with the latest versions!" -ForegroundColor Green
    winget upgrade --accept-source-agreements --accept-package-agreements
}

Function Test-DiskAndMemory {
    Write-Host "🩺 Launching memory diagnostic tool... Stay healthy RAM!" -ForegroundColor Green
    mdsched
    Write-Host "💽 Scanning disk for issues... A little cleaning never hurts." -ForegroundColor Green
    chkdsk /f /r
}

Function Manage-Startup {
    Write-Host "🎚️ Opening Task Manager to manage startup apps... Let’s trim the fat!" -ForegroundColor Green
    Start-Process taskmgr
}

Function Network-Test {
    Write-Host "📡 Running ping and network tests... Let’s see how your internet is doing!" -ForegroundColor Green
    ping 8.8.8.8
    Test-NetConnection
}

Function System-Info {
    Write-Host "🖥️ Showing detailed system information... Nothing to hide here!" -ForegroundColor Green
    systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" /C:"Total Physical Memory" /C:"Available Physical Memory" /C:"Processor"
    ipconfig /all
}

Function Enable-GamerMode {
    Write-Host "🎮 Enabling Gamer Mode... Get ready to perform!" -ForegroundColor Green
    winget install Microsoft.DirectX --accept-source-agreements --accept-package-agreements
    winget install Microsoft.VCRedist.2015+.x64
    winget install EpicGames.EpicGamesLauncher
}

Function Install-DeveloperTools {
    Write-Host "🛠️ Installing developer tools... Let’s get coding!" -ForegroundColor Green
    winget install Git.Git
    winget install Microsoft.VisualStudioCode
    winget install Python.Python.3.12
}

Function Clean-TempFiles {
    Write-Host "🧹 Cleaning temporary files... Let’s breathe some fresh space!" -ForegroundColor Green
    Remove-Item -Path $env:TEMP\* -Recurse -Force
    Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force
}

Function Disable-VisualEffects {
    Write-Host "🚀 Disabling visual effects to boost speed... Let’s fly!" -ForegroundColor Green
    SystemPropertiesPerformance.exe
}

Function Run-All {
    Write-Host "🍿 Running all tasks in one go. Sit back and enjoy the show!" -ForegroundColor Magenta
    Repair-SystemFiles
    Update-Windows
    Update-Apps
    Test-DiskAndMemory
    Network-Test
    System-Info
    Enable-GamerMode
    Install-DeveloperTools
    Clean-TempFiles
    Disable-VisualEffects
}

# 🌟 Main Loop Starts 🌟
Do {
    Show-Menu
    $choice = Read-Host "📌 Choose an option (1-13) 😄"

    Switch ($choice) {
        "1" { Repair-SystemFiles }
        "2" { Update-Windows }
        "3" { Update-Apps }
        "4" { Test-DiskAndMemory }
        "5" { Manage-Startup }
        "6" { Network-Test }
        "7" { System-Info }
        "8" { Enable-GamerMode }
        "9" { Install-DeveloperTools }
        "10" { Clean-TempFiles }
        "11" { Disable-VisualEffects }
        "12" { Run-All }
        "13" { Write-Host "👋 Exiting... See you later! 🏃‍♀️💨" -ForegroundColor Yellow; break }
        Default { Write-Host "❌ Invalid selection, try again buddy!" -ForegroundColor Red }
    }
    Write-Host "✅ Task complete. Press any key to continue... 😉" -ForegroundColor Magenta
    [void][System.Console]::ReadKey($true)
} While ($choice -ne "13")
