DELETE from Planta WHERE Ph_solo < 5; --> Deleta a planta que possui um ph menor que cinco
DELETE from Colheita WHERE Peso_Kg < 10000; --> Deleta a colheita que tem peso menor que 10000 kg

DROP TABLE Fazenda;
DROP TABLE Colheita;
DROP TABLE Plantio;
DROP TABLE Agricultor;
DROP TABLE Planta;