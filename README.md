<div align="center">
  <img src="icon.png" alt="WizFix Logo" width="200"/>

  # WizFix: The Magical Windows 11 Maintenance Tool
  **Authored by Oğuzhan Duyar**

  *Tired of dull maintenance routines? WizFix brings a spark of magic to cleaning, repairing, and updating your Windows 11 PC!*
</div>

<div align="center">

[![Version](https://img.shields.io/badge/version-2.0-blue.svg)](https://github.com/OguzhanDUYAR/WizFix)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/OguzhanDUYAR/WizFix/commits/main)
[![Open Source](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://opensource.org/)

</div>

---

## 🧙‍♂️ About The Project

**WizFix** isn't just another command-line script; it's a user-friendly, powerful, and fun experience designed to keep your Windows 11 system in top shape. Forget cryptic commands and boring black screens. WizFix provides a colorful, menu-driven interface with a touch of humor, making system maintenance accessible and enjoyable for everyone.

This tool consolidates essential Windows repair and maintenance utilities into a single, easy-to-use PowerShell script. Whether you're dealing with system slowdowns, update errors, or corrupted files, WizFix is your all-in-one magical solution.

## ✨ Key Features

WizFix comes packed with a set of powerful "spells" to fix your PC:

* 🧹 **Spring Cleaning:** Wipes temporary files, clears caches, and flushes your DNS. A fresh start for your system!
* 🕵️ **Detective SFC:** Deploys the System File Checker (`sfc /scannow`) to hunt down and repair corrupt system files.
* 👨‍⚕️ **Dr. DISM:** Performs open-heart surgery on the Windows Component Store (`DISM /RestoreHealth`) to fix deep-rooted image issues.
* 💧 **Update Reviver Potion:** Resets and restarts stuck Windows Update components, clearing the way for smooth updates.
* 🚀 **App Booster:** Uses `winget` to upgrade all your installed applications to their latest versions in one go.
* 💥 **The Big Bang!:** For ultimate power, this option runs all the spells sequentially, giving your PC a complete overhaul.

## 📸 Screenshot

Here's a glimpse of the magic portal you'll be using:

```powershell
========================================================================================
              Oğuzhan Duyar'ın Windows Onarım Sihirbazına Hoş Geldin!
========================================================================================

Hangi büyüyü yapmak istersin, ey cesur kullanıcı?
---------------------------------------------------
 [1] Bahar Temizliği (Dijital çer çöpü kapı dışarı eder!)
 [2] Dedektif SFC Görev Başında (Kayıp ve bozuk sistem dosyalarını avlar)
 [3] Dr. DISM Ameliyatta (Windows'un kalbini onarır, en derin yaraları iyileştirir)
 [4] Update Canlandırma İksiri (Tıkanan Windows Update borularını açar)
 [5] Uygulama Dopingi (Tüm programları ışık hızında son sürüme fırlatır)

 [9] BÜYÜK PATLAMA! (Tüm sihirleri yap, arkana yaslan ve kahveni yudumla)

 [Q] Toz Ol! (Sahneden ayrıl)

Seçimini yap ve Enter'a bas [1-5, 9, Q]:
```

## 🚀 Getting Started

To get a copy of WizFix up and running on your local machine, follow these simple steps.

### Prerequisites

* Windows 10 or Windows 11
* Administrator privileges

### Installation & Usage

1.  **Download the Script**
    * Go to the [Releases](https://github.com/OguzhanDUYAR/WizFix/releases) page and download the latest version of `WizFix_by_OguzhanDuyar.ps1`.
    * Or, simply clone the repo:
        ```sh
        git clone [https://github.com/](https://github.com/)OguzhanDUYAR/WizFix.git
        ```

2.  **Allow Script Execution**
    * By default, Windows prevents running scripts for security. You need to enable it for this session.
    * Right-click the Start Menu and select **Terminal (Admin)** or **Windows PowerShell (Admin)**.
    * Run the following command and press `Y` (or `E`) when prompted:
        ```powershell
        Set-ExecutionPolicy RemoteSigned -Scope Process
        ```
    * **Note:** This policy is only set for the current PowerShell session. It will revert to default when you close the window.

3.  **Run the Magic!**
    * In the same PowerShell (Admin) window, navigate to the directory where you saved the script.
        ```powershell
        cd C:\path\to\your\downloaded\script
        ```
    * Execute the script:
        ```powershell
        .\WizFix_EN.ps1
        ```
    * The menu will appear. Choose your desired action and let the magic happen!

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## 📜 License

Distributed under the MIT License. See `LICENSE.txt` for more information.

## 📧 Contact

Oğuzhan Duyar - 

Project Link: [https://github.com/OguzhanDUYAR/WizFix](https://github.com/OguzhanDUYAR/WizFix)


