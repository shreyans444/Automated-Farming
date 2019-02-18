# Pi_Code
Alle code voor de sensoren in te lezen op de raspberry pi is in deze map aanwezig.
In de "scripts" map vind u de daadwerkelijke python-scripts voor het inlezen van de sensoren.
In de "launcher" map vind u de .sh bestanden.
Deze sh-bestanden zijn aangemaakt om via crontab de script om de 5 minuten te lanceren.
Hierdoor worden de sensoren om de 5 minuten ingelezen, en de waarden verstuurt naar de database
