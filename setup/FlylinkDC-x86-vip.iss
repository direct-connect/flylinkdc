; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
; customer: help@com-line.su

#define PPA_PORTAL_MERGE
#define FLYLIKDC_USE_CUSTOM_ICON
#define FLYLIKDC_USE_CUSTOM_SETUP_INFO

#define YANDEX_VID_PREFIX 599

#include "FlylinkDC_Def.hss"

[Icons]
Name: {group}\����; Filename: {app}\FlylinkDC{code:Postfix|_}.exe; WorkingDir: {app}; IconFilename: "{app}\setup.ico"
Name: {userstartup}\����; Filename: {app}\FlylinkDC{code:Postfix|_}.exe; Tasks: startup; WorkingDir: {app} ; IconFilename: "{app}\setup.ico"
;Name: {group}\{cm:ProgramOnTheWeb,FlylinkDC++{code:Postfix| }}; Filename: http://www.flylinkdc.ru
Name: {group}\{cm:UninstallProgram,����}; Filename: {uninstallexe} ; IconFilename: "{app}\setup.ico"
Name: {commondesktop}\����; Filename: {app}\FlylinkDC{code:Postfix|_}.exe; Tasks: desktopicon; WorkingDir: {app} ; IconFilename: "{app}\setup.ico"
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\����; Filename: {app}\FlylinkDC{code:Postfix|_}.exe; Tasks: quicklaunchicon; WorkingDir: {app} ; IconFilename: "{app}\setup.ico"



[Setup]
OutputBaseFilename=SetupFlylinkDC-vip-inet65-test-6
WizardImageFile=vip_custom\setup-1.bmp
WizardSmallImageFile=vip_custom\setup-2.bmp
;Hint: Define FLYLIKDC_USE_CUSTOM_ICON
SetupIconFile=vip_custom\setup.ico  
;LicenseFile=vip_custom\license.rtf

;WizardImageFile=setup-1.bmp
;WizardSmallImageFile=setup-2.bmp
;SetupIconFile=setup.ico
;LicenseFile=license_ru-RU.rtf

#ifdef FLYLIKDC_USE_CUSTOM_SETUP_INFO
AppName=����{code:Postfix| }
#include "version_info.txt"
AppVerName=����
VersionInfoDescription=���� Setup
VersionInfoProductName=����
AppPublisher=FlylinkDC++ Team
AppPublisherURL=http://flylinkdc.blogspot.com
AppSupportURL=http://flylinkdc.blogspot.com
AppUpdatesURL=http://flylinkdc.blogspot.com
DefaultDirName={pf}\FlylinkDC++{code:Postfix|_}
DefaultGroupName=����{code:Postfix| }
#endif

[Components]
Name: "program"; Description: "Program Files"; Types: full compact custom; Flags: fixed
Name: "DCPlusPlus"; Description: "����-��������� �� ��� ����"; Types: full compact custom; Flags: fixed
Name: "DCPlusPlus\vip_custom"; Description: "dc.inet65.net"; Flags: exclusive

#include "FlylinkDC-x86.hss"
[Files]

Source: "vip_custom\fly-server-getip.config";           			     DestDir: "{app}"; Flags: overwritereadonly	
Source: "vip_custom\setup.ico";           			     DestDir: "{app}"; Flags: overwritereadonly	
Source: "vip_custom\splash.png";           			     DestDir: "{app}"; Flags: overwritereadonly	
;Source: "vip_custom\license.rtf";                   DestDir: "{app}"; Flags: overwritereadonly	
Source: "vip_custom\DCPlusPlus.xml";                          DestDir: "{code:fUser}"; Flags: onlyifdoesntexist
Source: "vip_custom\Favorites.xml";                           DestDir: "{code:fUser}"; Flags: onlyifdoesntexist

;Source: "..\compiled\Settings\common\GeoIPCountryWhois.csv";  DestDir: "{code:fUser}"; Flags: overwritereadonly
Source: "..\compiled\Settings\common\CustomLocations.bmp";    DestDir: "{code:fUser}"; Flags: onlyifdoesntexist
Source: "..\compiled\Settings\common\CustomLocations.ini";    DestDir: "{code:fUser}"; Flags: onlyifdoesntexist
;Source: "..\compiled\Settings\common\P2PGuard.ini";    DestDir: "{code:fUser}"; Flags: onlyifdoesntexist


#include "inc_finally.hss"
