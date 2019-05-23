@ECHO OFF
@ECHO Optymalizacja pliku otis2.exe ...
@C:\codetyphon\fpc\fpc32\bin\i386-win32\strip.exe -p otis2.exe
@ECHO ---------------------------------

@ECHO .
@ECHO Kopiowanie pliku otis2.exe do katalogu w sieci W:\OTIS2\Update\otis2.exe ...
@copy /Y otis2.exe "W:\OTIS2\Update\otis2.exe"
@ECHO ---------------------------------

@ECHO .
@ECHO Kopiowanie katalogu raporty do katalogu w sieci W:\OTIS2\Update\raporty\ ...
@xcopy raporty\*.* "W:\OTIS2\Update\raporty\*.*" /D /Y
@ECHO ---------------------------------

@ECHO .
@ECHO Kopiowanie katalogu NrStolikow do katalogu w sieci W:\OTIS2\Update\NrStolikow\ ...
@xcopy NrStolikow\*.* "W:\OTIS2\Update\NrStolikow\*.*" /D /Y
@ECHO ---------------------------------
@ECHO Zmien numer wersji w bazie danych !
@pause