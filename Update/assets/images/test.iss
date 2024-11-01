; Script generated by the Inno Setup Script Wizard.

#define MyAppName "Level Down Launcher"
#define MyAppVersion "1.0.5"
#define MyAppPublisher "C.Q. Ventures LLC"
#define MyAppExeName "LevelDownLauncher.exe"

[Setup]
AppId={{ECAB96BB-E9CA-44E3-B987-E34D78917AA3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
DisableProgramGroupPage=yes
OutputDir=C:\Users\dcann\source\repos\Level Down Launcher\Level Down Launcher 1.0.5\
OutputBaseFilename=mysetup
SetupIconFile=C:\Users\dcann\source\repos\Level Down Launcher\Level Down Launcher\assets\images\ld.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; Include only the necessary folders and files from the dist output directory
Source: "C:\Users\dcann\source\repos\Level Down Launcher\Level Down Launcher\dist\LevelDownLauncher\LevelDownLauncher.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dcann\source\repos\Level Down Launcher\Level Down Launcher\dist\LevelDownLauncher\assets\*"; DestDir: "{app}\assets"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\dcann\source\repos\Level Down Launcher\Level Down Launcher\dist\LevelDownLauncher\_internal\*"; DestDir: "{app}\_internal"; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\.myp\OpenWithProgids"; ValueType: string; ValueName: "LevelDownLauncherFile"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\LevelDownLauncherFile"; ValueType: string; ValueName: ""; ValueData: "Level Down Launcher File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\LevelDownLauncherFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\LevelDownLauncherFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: nowait postinstall skipifsilent
