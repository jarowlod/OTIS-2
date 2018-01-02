# OTIS-2

Środowisko pracy:
Typhon IDE
is the Pascal Rapid Application Development tool,
part of CodeTyphon Programming Studio.

Wersja środowiska: 6.3

Dodatkowy Komponent TYearPlanner: w katalogu Projekty\YearPlanner\

Program do automatycznej aktualizacji: w katalogu Projekty\Update\

Przygotowanie do pracy:

Utworzenie tabel w bazie danych na podstawie: Projekty\Create Table.sql
Utworzenie pierwszego użytkownika i dodanie go do tabeli (uprawnienia), nadanie uprawnień administratora (Mod8 = 1).
W tabeli (ver_otis2) wpisać:
verP          = numer aktualnej wersji programu (potrzebne do aktualizacji) np: '0.0.1.5'
path_Update   = lokalizacja programu do aktualizacji np: 'C:\OTIS2\Update.exe', może być lokalizacja w zasobach sieci.
path_Foto     = lokalizacja katalogu zdjęć np: 'C:\Zasoby\ZK Foto\'
path_NO_Foto  = lokalizacja zdjęcia zastępczego np: 'Raporty\kotek.jpg'
Station_Name_For_Widzenia = nazwa komputera na którym realizowane są widzenia np: '153PC1600'
TimerInterval = czas w msec odpytywania serwera w celu wyszukania nowych komunikatów do użytkownika.

w pliku config.ini podajemy lokalizację bazy MySQL.
[CONFIG]
HostName=192.168.1.1
Port=3306