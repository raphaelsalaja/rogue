#pragma once
#include <string>
using namespace std;

class RandomItemGenerator
{
public:
	RandomItemGenerator();
	~RandomItemGenerator();

	virtual void SetType(int choice);
	virtual void SetItemNames(string file_name);
	virtual void SetName(int name_index, string type);
	void SetStrength();
	void SetWeight();
	void SetSpeed();
	void SetSymbol(char symbol);

	void CreateItem(char symbol, char item_type_amount);

	string name, type;
	string ITEM_TYPES[20]{};

private:
	int strength, weight, speed;
	char symbol;
};
