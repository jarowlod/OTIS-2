@ECHO OFF
@ECHO Optymalizacja pliku otis2.exe ...
@C:\codetyphon\fpc\fpc32\bin\i386-win32\strip.exe otis2.exe
@ECHO ---------------------------------
@ECHO Kopiowanie pliku otis2.exe do katalogu w sieci W:\OTIS2\Update\otis2.exe ...
@copy /Y otis2.exe "W:\OTIS2\Update\otis2.exe"
@ECHO ---------------------------------
@ECHO Kopiowanie katalogu raporty do katalogu w sieci W:\OTIS2\Update\raporty\ ...
@copy /Y raporty\*.* "W:\OTIS2\Update\raporty\*.*"
@ECHO ---------------------------------
@ECHO Zmieä numer wersji w bazie danych !
@pause