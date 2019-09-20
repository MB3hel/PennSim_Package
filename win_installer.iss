; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "PennSim"
#define MyAppVersion "1.2.5_r436"
#define MyAppPublisher ""
#define MyAppURL "https://www.cis.upenn.edu/~milom/cse240-Fall06/pennsim/pennsim-guide.html"
#define MyAppExeName "PennSim.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D3FEFFD5-BB54-4210-8B7B-ED2E1767DBDA}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={%USERPROFILE}\{#MyAppName}
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=build/distributions
OutputBaseFilename=PennSim_Windows_Installer_{#MyAppVersion}
Compression=lzma
SolidCompression=yes
WizardStyle=modern

; Delete old stuff before install
[InstallDelete]
Type: files; Name: {app}\jre\*

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "build\launch4j\PennSim.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "build\launch4j\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "lc3os.obj"; DestDir: "{app}"; Flags: ignoreversion
Source: "lc3os.sym"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{autodesktop}\PennSim"; Filename: "{app}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

