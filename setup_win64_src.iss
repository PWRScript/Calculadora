; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Calculadora"
#define MyAppVersion "1.0"
#define MyAppPublisher "miguelpython"
#define MyAppExeName "Calculadora.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D1A1459E-9EC6-49E4-BB69-953B396CD879}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\miguelpython\Calculadora
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=C:\Users\migue
OutputBaseFilename=setup_win64
SetupIconFile=C:\Users\migue\PycharmProjects\Calculadora Cientifica\source\assents\calculadoralogo.ico
Compression=lzma
SolidCompression=yes
DisableWelcomePage=False
ArchitecturesInstallIn64BitMode=x64 ia64
ArchitecturesAllowed=x64 ia64
UninstallDisplayName=Calculadora
UninstallDisplayIcon={app}\Calculadora.exe
MinVersion=0,6.0
VersionInfoVersion=1.0
VersionInfoCompany=miguelpython
VersionInfoDescription=Uma calculadora simples baseada em Tkinter/Python
VersionInfoProductName=Calculadora
VersionInfoProductVersion=1.0

[Languages]
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\migue\PycharmProjects\Calculadora Cientifica\Dist\Win64\Files\Calculadora.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\migue\PycharmProjects\Calculadora Cientifica\source\assents\*"; DestDir: "{app}\assents"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

