# 🚀 WizFix Geliştirilmiş ve Optimize Edilmiş Versiyon 🌟
# 🧑‍💻 Yazan: Oguzhan DUYAR

Function Show-Menu {
    Clear-Host
    Write-Host "✨🔧✨ WizFix Windows'unu Uçuracak Araç ✨🔧✨" -ForegroundColor Cyan
    Write-Host "[1] 🔨 Sistem Dosyalarını Tamir Et (SFC & DISM) 🩹"
    Write-Host "[2] 🔄 Windows Güncelleştirmelerini Yakala ve Kur 🛠️"
    Write-Host "[3] 🚀 Uygulamaları Güncelleyelim (winget ile) 📦"
    Write-Host "[4] 💾 Disk ve RAM'e Sağlık Taraması Yap 🩺"
    Write-Host "[5] 🚦 Startup Uygulamalarını Yönet 🎛️"
    Write-Host "[6] 🌐 İnternet Hızını ve Ağını Kontrol Et 📡"
    Write-Host "[7] 🖥️ Sistem Bilgilerini Açığa Çıkar 📜"
    Write-Host "[8] 🎮 Oyuncu Modunu Etkinleştir 🎲"
    Write-Host "[9] 🛠️ Geliştirici Araçlarını Kur 👩‍💻"
    Write-Host "[10] 🧹 Geçici Dosyaları Sil ve Yer Aç 🗑️"
    Write-Host "[11] 🚀 Windows Efektlerini Kapat ve Hızlandır ⚡"
    Write-Host "[12] 🎯 Tüm İşlemleri Otomatik Yap (Otur İzle!) 🍿"
    Write-Host "[13] 🚪 Çıkış (Kaçalım mı?) 🏃‍♂️💨"
}

Function Repair-SystemFiles {
    Write-Host "🛠️ Sistem dosyalarını toparlıyoruz... Sabır biraz..." -ForegroundColor Green
    sfc /scannow
    DISM /Online /Cleanup-Image /RestoreHealth
}

Function Update-Windows {
    Write-Host "💫 Windows güncellemelerini avlayıp kuruyoruz... Bu biraz zaman alabilir. ☕" -ForegroundColor Green
    Install-Module PSWindowsUpdate -Force
    Import-Module PSWindowsUpdate
    Get-WindowsUpdate -AcceptAll -Install -AutoReboot
}

Function Update-Apps {
    Write-Host "🚀 Uygulamalar yenileniyor... Güncellemelerle uçuşa geçiyoruz!" -ForegroundColor Green
    winget upgrade --accept-source-agreements --accept-package-agreements
}

Function Test-DiskAndMemory {
    Write-Host "🩺 RAM'ini kontrol ediyoruz... Sağlıklı ol bakalım!" -ForegroundColor Green
    mdsched
    Write-Host "💽 Diskini tarıyoruz... Biraz temizlik hiç fena olmaz." -ForegroundColor Green
    chkdsk /f /r
}

Function Manage-Startup {
    Write-Host "🎚️ Startup uygulamalarını düzenlemek için görev yöneticisi geliyor... Haydi sadede gelelim!" -ForegroundColor Green
    Start-Process taskmgr
}

Function Network-Test {
    Write-Host "📡 Ping testi başlıyor! İnternet nasılmış bakalım..." -ForegroundColor Green
    ping 8.8.8.8
    Test-NetConnection
}

Function System-Info {
    Write-Host "🖥️ Bilgisayarının iç yüzünü ortaya çıkarıyoruz... Bilinmeyen kalmasın!" -ForegroundColor Green
    systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" /C:"Total Physical Memory" /C:"Available Physical Memory" /C:"Processor"
    ipconfig /all
}

Function Enable-GamerMode {
    Write-Host "🎮 Oyuncu modu etkinleştiriliyor... Performansa hazır ol!" -ForegroundColor Green
    winget install Microsoft.DirectX --accept-source-agreements --accept-package-agreements
    winget install Microsoft.VCRedist.2015+.x64
    winget install EpicGames.EpicGamesLauncher
}

Function Install-DeveloperTools {
    Write-Host "🛠️ Geliştirici araçlarını kuruyoruz... Kodlamaya başlıyoruz!" -ForegroundColor Green
    winget install Git.Git
    winget install Microsoft.VisualStudioCode
    winget install Python.Python.3.12
}

Function Clean-TempFiles {
    Write-Host "🧹 Geçici dosyaları temizleyip yer açıyoruz... Hadi biraz ferahlayalım!" -ForegroundColor Green
    Remove-Item -Path $env:TEMP\* -Recurse -Force
    Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force
}

Function Disable-VisualEffects {
    Write-Host "🚀 Gereksiz efektleri kapatıp hızlanıyoruz! Uçuşa hazır mısın?" -ForegroundColor Green
    SystemPropertiesPerformance.exe
}

Function Run-All {
    Write-Host "🍿 Tüm işlemleri tek tuşla yapıyoruz. Yaslan ve keyfine bak!" -ForegroundColor Magenta
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

# 🌟 Ana Döngü Başlıyor 🌟
Do {
    Show-Menu
    $choice = Read-Host "📌 Yapacağın işlemi seçiver (1-13) 😄"

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
        "13" { Write-Host "👋 Kaçıyoruz... Görüşürüz! 🏃‍♀️💨" -ForegroundColor Yellow; break }
        Default { Write-Host "❌ Geçersiz seçim yaptın dostum, tekrar dene!" -ForegroundColor Red }
    }
    Write-Host "✅ İşlem tamamdır, devam etmek için herhangi bir tuşa bas... 😉" -ForegroundColor Magenta
    [void][System.Console]::ReadKey($true)
} While ($choice -ne "13")
