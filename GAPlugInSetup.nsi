; example1.nsi
;
; This script is perhaps one of the simplest NSIs you can make. All of the
; optional settings are left to their default settings. The installer simply 
; prompts the user asking them where to install, and drops a copy of example1.nsi
; there. 

;--------------------------------

; The name of the installer
Name "Gestione Accessi PlugIn"

; The file to write
OutFile "C:\Users\MANZOGI9\DIST\Gestione Accessi PlugIn.exe"

; The default installation directory
InstallDir $PROFILE\AppData\Roaming\Microsoft\AddIns

; Request application privileges for Windows Vista
RequestExecutionLevel user

;--------------------------------

; Pages
;Page license
Page instfiles
;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File "Gestione Accessi PlugIn.xlam"
  
SectionEnd ; end the section
