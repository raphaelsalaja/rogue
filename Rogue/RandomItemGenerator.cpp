#include "RandomItemGenerator.h"

#include "Macro.h"

RandomItemGenerator::RandomItemGenerator()
{
	name = "";
	type = "";
	strength = 0;
	weight = 0;
	speed = 0;
	symbol = ' ';
}

RandomItemGenerator::~RandomItemGenerator()
{
}

void RandomItemGenerator::SetType(int choice)
{
}

void RandomItemGenerator::SetItemNames(string file_name)
{
}

void RandomItemGenerator::SetName(int name_index, string type)
{
}

void RandomItemGenerator::SetStrength()
{
	strength = Macro::GenerateRandomNumber(10);
}

void RandomItemGenerator::SetWeight()
{
	weight = Macro::GenerateRandomNumber(10);
}

void RandomItemGenerator::SetSpeed()
{
	speed = Macro::GenerateRandomNumber(10);
}

void RandomItemGenerator::SetSymbol(char symbol)
{
	this->symbol = symbol;
}

void RandomItemGenerator::CreateItem(char symbol, char item_type_amount)
{
	SetType(Macro::GenerateRandomNumber(item_type_amount));
	SetName(Macro::GenerateRandomNumber(ITEM_TYPES->length()), type);
	SetStrength();
	SetWeight();
	SetSpeed();
	SetSymbol(symbol);
}
