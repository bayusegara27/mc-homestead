@echo off
REM === Pindah ke folder repo lokal ===
cd /d "%USERPROFILE%\AppData\Roaming\.minecraft\mc-homestead"

REM === Sinkronkan folder dari .minecraft ke dalam repo (mirror / hapus yang tidak ada) ===
robocopy "..\config" "config" /MIR
robocopy "..\datapacks" "datapacks" /MIR
robocopy "..\kubejs" "kubejs" /MIR
robocopy "..\mods" "mods" /MIR
robocopy "..\patchouli_books" "patchouli_books" /MIR
robocopy "..\resourcepacks" "resourcepacks" /MIR
robocopy "..\scripts" "scripts" /MIR
robocopy "..\shaderpacks" "shaderpacks" /MIR

REM === Tambahkan SEMUA perubahan, termasuk penghapusan ===
git add -A

REM === Commit otomatis ===
git commit -m "Auto sync on %date% %time%"

REM === Push ke GitHub ===
git push origin main

echo Sinkronisasi selesai.
pause
