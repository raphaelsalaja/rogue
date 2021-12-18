#include "RandomWeapon.h"

#include <fstream>
#include <iostream>

#include "Macro.h"

RandomWeapon::RandomWeapon()
{
}

void RandomWeapon::SetType(int choice)
{
	type = Macro::GenerateRandomNumber(weapon_types->length());
}

void RandomWeapon::SetItemNames(string file_name)
{
	int index = 0;
	string line;
	ifstream myfile(file_name);
	if (myfile.is_open())
	{
		while (!myfile.eof())
		{
			getline(myfile, line);
			ITEM_TYPES[index] = line;
			cout << ITEM_TYPES[index] << endl;
			index++;
		}
		myfile.close();
	}
	else { cout << "FILE CANNOT BE OPENED"; }
}

void RandomWeapon::GenerateRandomWeapon()
{
	CreateItem(symbol, weapon_types->length());
}
