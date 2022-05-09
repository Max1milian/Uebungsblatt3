#ifndef SPIEL
#define SPIEL 

#include "Aufgabe.h"
#include "SimpleInput.h"
#include "Configuration.h"
#include <sstream>
#include <iostream>

class Spiel
{
public:
	Spiel(Aufgabe* aufgabe)
	{
		aktuelleAufgabe = *aufgabe;
		init();
		spielSchleife();
	}
	void init();

private:
	Aufgabe aktuelleAufgabe;
	int aktiverSpielstein = 0;

	void ausgabeLogo();
	void ausgabeRahmen();
	void ausgabeLegende();
	void ausgabeSteuerung();
	void ausgabePunkte();
	void ausgabeZeit();

	void spielSchleife();
	void spielzug();
	bool eingabeErlaubt(char input);
};
#endif