#include "ConsoleRendering.h"
#include <iostream>
#include "Macro.h"

using namespace Macro;
using namespace std;

// PRINTING

void ConsoleRendering::Print_Stats(MapManager& m, Player& p, InventoryManager& i, UserInterfaceManager& ui)
{
	GoToScreenPosition(0, m.height + 1);

	for (const auto& i : ui.stats)
	{
		string x = i;
		x = ReplaceAll(string(x), string("-"), string("\xCD"));
		x = ReplaceAll(string(x), string("<"), string("\xC9"));
		x = ReplaceAll(string(x), string(">"), string("\xBB"));
		x = ReplaceAll(string(x), string(":"), string("\xC8"));
		x = ReplaceAll(string(x), string(";"), string("\xBC"));
		x = ReplaceAll(string(x), string("/"), string("\xCC"));
		x = ReplaceAll(string(x), string("]"), string("\xB9"));
		x = ReplaceAll(string(x), string("|"), string("\xBA"));
		x = ReplaceAll(string(x), string("v"), string("\xCB"));
		x = ReplaceAll(string(x), string("^"), string("\xCA"));

		cout << x << endl;
	}
	if (p.health >= 10)
	{
		string x = to_string(p.health);
		ui.stats.at(2).at(31) = x.at(1);
		ui.stats.at(2).at(29) = x.at(0);
	}
	else
	{
		string x = to_string(p.health);
		ui.stats.at(2).at(31) = x.at(0);
	}
	if (p.shield >= 10)
	{
		string x = to_string(p.shield);
		ui.stats.at(4).at(31) = x.at(1);
		ui.stats.at(4).at(29) = x.at(0);
	}
	else
	{
		string x = to_string(p.shield);
		ui.stats.at(4).at(31) = x.at(0);
	}
	if (p.magic >= 10)
	{
		string x = to_string(p.magic);
		ui.stats.at(6).at(31) = x.at(1);
		ui.stats.at(6).at(29) = x.at(0);
	}
	else
	{
		string x = to_string(p.magic);
		ui.stats.at(6).at(31) = x.at(0);
	}
}

void ConsoleRendering::Print_Actions_GUI(MapManager& m, InventoryManager& i, UserInterfaceManager& ui)
{
	int y = 1;

	for (const auto& i : ui.actions)
	{
		string x = i;
		x = ReplaceAll(string(x), string("-"), string("\xCD"));
		x = ReplaceAll(string(x), string("<"), string("\xC9"));
		x = ReplaceAll(string(x), string(">"), string("\xBB"));
		x = ReplaceAll(string(x), string(":"), string("\xC8"));
		x = ReplaceAll(string(x), string(";"), string("\xBC"));
		x = ReplaceAll(string(x), string("/"), string("\xCC"));
		x = ReplaceAll(string(x), string("]"), string("\xB9"));
		x = ReplaceAll(string(x), string("|"), string("\xBA"));
		x = ReplaceAll(string(x), string("v"), string("\xCB"));
		x = ReplaceAll(string(x), string("^"), string("\xCA"));
		GoToScreenPosition(40, m.height + y);
		y++;
		cout << x << endl;
	}
}

void ConsoleRendering::Print_Actions(char action, MapManager& m)
{
	GoToScreenPosition(0, m.height + 2);

	switch (action)
	{
	case 'I': cout << "YOU GAINED 1 HEALTH FROM: HEALTH POTION         ";
		break;
	case 'O': cout << "YOU GAINED 1 SHIELD FROM: SHIELD POTION         ";
		break;
	case 'P': cout << "YOU GAINED 1 MAGIC FROM: MAGIC POTION           ";
		break;
	case 'J': cout << "YOU DROPPED 1 HEALTH POTION                     ";
		break;
	case 'K': cout << "YOU DROPPED 1 SHIELD POTION                     ";
		break;
	case 'L': cout << "YOU DROPPED 1 MAGIC POTION                      ";
		break;
	}
}

void ConsoleRendering::Print_Inventory(InventoryManager& i, UserInterfaceManager& ui)
{
	for (const auto& i : ui.inventory)
	{
		string x = i;
		x = ReplaceAll(string(x), string("-"), string("\xCD"));
		x = ReplaceAll(string(x), string("<"), string("\xC9"));
		x = ReplaceAll(string(x), string(">"), string("\xBB"));
		x = ReplaceAll(string(x), string(":"), string("\xC8"));
		x = ReplaceAll(string(x), string(";"), string("\xBC"));
		x = ReplaceAll(string(x), string("/"), string("\xCC"));
		x = ReplaceAll(string(x), string("]"), string("\xB9"));
		x = ReplaceAll(string(x), string("|"), string("\xBA"));
		cout << x << std::endl;
	}
}

// CREATING
void ConsoleRendering::Create_Stats_GUI(string& inventory)
{
	cout << endl;

	for (size_t i = 0; i < inventory.length(); i++)
	{
		cout << "-";
	}

	cout << endl;
	cout << inventory;
	cout << endl;

	for (size_t i = 0; i < inventory.length(); i++)
	{
		cout << "-";
	}
}

void ConsoleRendering::Create_Inventory_GUI(string& inventory)
{
	cout << endl;

	for (size_t i = 0; i < inventory.length(); i++)
	{
		cout << "-";
	}

	cout << endl;
	cout << inventory;
	cout << endl;

	for (size_t i = 0; i < inventory.length(); i++)
	{
		cout << "-";
	}

	cout << endl;
}

// RENDERING
void ConsoleRendering::Render_GUI(MapManager& m, InventoryManager& i)
{
	GoToScreenPosition(2, m.height + 3);

	if (!i.inventory_open)
	{
	}
}

void ConsoleRendering::Render_Stats(MapManager& m, Player& p, InventoryManager& i, UserInterfaceManager& ui)
{
	Print_Stats(m, p, i, ui);
}

void ConsoleRendering::Render_Actions(MapManager& m, InventoryManager& i, UserInterfaceManager& ui)
{
	Print_Actions_GUI(m, i, ui);
}

void ConsoleRendering::Render_Inventory(ConsoleWindowManager& c, MapManager& m, InventoryManager& i, UserInterfaceManager& ui)
{
	// DRAWS THE PLAYER'S INVENTORY ON SCREEN
	if (i.inventory_open)
	{
		c.BlankScreen();
		Print_Inventory(i, ui);
	}
	else
	{
		c.BlankScreen();
		m.RenderMap(c);
	}
}

void ConsoleRendering::Render_All(ConsoleWindowManager& c, MapManager& m, Player& p, InventoryManager& i, UserInterfaceManager& ui)
{
	Render_Stats(m, p, i, ui);
	if (!p.in_combat)
	{
		Render_Actions(m, i, ui);
	}
	Render_GUI(m, i);
}
