"C:\Program Files (x86)\Windows Kits\8.1\bin\x86\signtool.exe" sign /v /d "sqlite" /du "https://github.com/pavel-pimenov/flylinkdc-r5xx/tree/master/client/sqlite" /fd sha1 /t http://timestamp.verisign.com/scripts/timstamp.dll sqlite3*.exe
"C:\Program Files (x86)\Windows Kits\8.1\bin\x86\signtool.exe" sign /as /v /d "sqlite" /du "https://github.com/pavel-pimenov/flylinkdc-r5xx/tree/master/client/sqlite" /fd sha256 /tr http://timestamp.comodoca.com/rfc3161 /td sha256 sqlite3*.exe
