# zwierzeta

Praca polega na stworzeniu prostej gry/zabawy dla dzieci prezentuj¹cej obrazki zwierz¹t, ich nazwy oraz dŸwiêki, jakie wydaj¹.
Dzia³a to w nastêpuj¹cy sposób:
 - przy naciœniêciu jednego z klawiszy klawiatury komputera pojawia siê obrazek zwierz¹tka (ka¿de zwierz¹tko ma przypisany swój klawisz),
 - jeœli przy wybranym obrazku przycisn¹æ lewy przycisk myszy - pojawia siê podpis bêd¹cy nazw¹ wyœwietlanego zwierzêcia,
 - jeœli nacisn¹æ prawy przycisk myszy - odtwarza siê odg³os zwierzêcia,
 - je¿eli wciœniemy spacjê, dowolne zwierz¹tko zostaje wylosowane i przy naciœniêciu odpowiedniego przycisku myszy wydaje odg³os(prawy) lub pojawia siê podpis(lewy).

Zmienne u¿yte w programie:
 - tablica obrazków ze zwierzêtami - animals
 - tablica klawiszy powi¹zanych z danym zwierzêciem (kaczka - z, krowa - x, jagniê - c) - animalKeys
 - tablica nazw zwierz¹t, które bêd¹ wyœwietlane po wciœniêciu lewego przycisku myszy - animalNames
 - Odtwarzacz dŸwiêków - zmienna player typu AudioPlayer
 - Kontekst dŸwiêkowy, z którego korzysta w/w odtwarzacz - zmienna minim
 - zmienna typu char, która zapamiêtuje ostatnio wciœniêty klawisz - currentKey

Funkcje u¿yte w programie:
 - setup - funkcja przygotowuje wszystkie potrzebne dane, tj.:
	- rozmiar okna, 
	- œcie¿ki obrazków zwierz¹t,
	- rozmiar tekstu,
	- kontekst dŸwiêkowy
 - showAnimalImage - funkcja, która wyœwietla obrazek z odpowiednim zwierzêciem, je¿eli wciœniêto powi¹zany z nim klawisz.
		     Je¿eli wciœniêto spacjê, to obrazek zostaje wylosowany.
 - showRandomAnimal - funkcja losuj¹ca obrazem ze zwierzêciem. Pocz¹tkowy indeks dla tablicy 'animals' z przedzia³u [0.. animals.length),
		      a nastêpnie w zmiennej currentKey zapamiêtywany jest klawisz dla zwierzêcia z wylosowanym indeksem.
		      Na koniec wywo³ana jest funkcja delay(200), która opóŸnia dzia³anie programu o 200ms, aby unikn¹æ sytuacji, w której
		      zwierzê jest losowane przez ca³y czas trzymania spacji.
 - showAnimalName - funkcja, której argumentem jest ci¹g znaków - imiê podanego zwierzêcia, które zostanie wyœwietlone na ekranie
 - playAnimalSound - funkcja, która na podstawie argumentu - œcie¿ki do pliku mp3 z odg³osem zwierzêcia ³aduje dany plik do kontekstu i go odtwarza
 - draw - funkcja, która wykorzystuje wszystkie powy¿sze (oprócz setup), w której znajduje siê logika programu, która jest wyjasniona w opisie projektu		      

W kodzie wykorzystane zosta³y:

- biblioteka do obs³ugi dŸwiêku - Minim, któr¹ nale¿a³o najpierw œci¹gn¹æ,
- pêtle 'for' - potrzebne do indeksowania tablic, które zawieraj¹ dane z obrazkami, dŸwiêkami, nazwami, oraz powi¹zanymi klawiszami dla poszczególnych zwierz¹t
