# zwierzeta

Praca polega na stworzeniu prostej gry/zabawy dla dzieci prezentuj�cej obrazki zwierz�t, ich nazwy oraz d�wi�ki, jakie wydaj�.
Dzia�a to w nast�puj�cy spos�b:
 - przy naci�ni�ciu jednego z klawiszy klawiatury komputera pojawia si� obrazek zwierz�tka (ka�de zwierz�tko ma przypisany sw�j klawisz),
 - je�li przy wybranym obrazku przycisn�� lewy przycisk myszy - pojawia si� podpis b�d�cy nazw� wy�wietlanego zwierz�cia,
 - je�li nacisn�� prawy przycisk myszy - odtwarza si� odg�os zwierz�cia,
 - je�eli wci�niemy spacj�, dowolne zwierz�tko zostaje wylosowane i przy naci�ni�ciu odpowiedniego przycisku myszy wydaje odg�os(prawy) lub pojawia si� podpis(lewy).

Zmienne u�yte w programie:
 - tablica obrazk�w ze zwierz�tami - animals
 - tablica klawiszy powi�zanych z danym zwierz�ciem (kaczka - z, krowa - x, jagni� - c) - animalKeys
 - tablica nazw zwierz�t, kt�re b�d� wy�wietlane po wci�ni�ciu lewego przycisku myszy - animalNames
 - Odtwarzacz d�wi�k�w - zmienna player typu AudioPlayer
 - Kontekst d�wi�kowy, z kt�rego korzysta w/w odtwarzacz - zmienna minim
 - zmienna typu char, kt�ra zapami�tuje ostatnio wci�ni�ty klawisz - currentKey

Funkcje u�yte w programie:
 - setup - funkcja przygotowuje wszystkie potrzebne dane, tj.:
	- rozmiar okna, 
	- �cie�ki obrazk�w zwierz�t,
	- rozmiar tekstu,
	- kontekst d�wi�kowy
 - showAnimalImage - funkcja, kt�ra wy�wietla obrazek z odpowiednim zwierz�ciem, je�eli wci�ni�to powi�zany z nim klawisz.
		     Je�eli wci�ni�to spacj�, to obrazek zostaje wylosowany.
 - showRandomAnimal - funkcja losuj�ca obrazem ze zwierz�ciem. Pocz�tkowy indeks dla tablicy 'animals' z przedzia�u [0.. animals.length),
		      a nast�pnie w zmiennej currentKey zapami�tywany jest klawisz dla zwierz�cia z wylosowanym indeksem.
		      Na koniec wywo�ana jest funkcja delay(200), kt�ra op�nia dzia�anie programu o 200ms, aby unikn�� sytuacji, w kt�rej
		      zwierz� jest losowane przez ca�y czas trzymania spacji.
 - showAnimalName - funkcja, kt�rej argumentem jest ci�g znak�w - imi� podanego zwierz�cia, kt�re zostanie wy�wietlone na ekranie
 - playAnimalSound - funkcja, kt�ra na podstawie argumentu - �cie�ki do pliku mp3 z odg�osem zwierz�cia �aduje dany plik do kontekstu i go odtwarza
 - draw - funkcja, kt�ra wykorzystuje wszystkie powy�sze (opr�cz setup), w kt�rej znajduje si� logika programu, kt�ra jest wyjasniona w opisie projektu		      

W kodzie wykorzystane zosta�y:

- biblioteka do obs�ugi d�wi�ku - Minim, kt�r� nale�a�o najpierw �ci�gn��,
- p�tle 'for' - potrzebne do indeksowania tablic, kt�re zawieraj� dane z obrazkami, d�wi�kami, nazwami, oraz powi�zanymi klawiszami dla poszczeg�lnych zwierz�t
