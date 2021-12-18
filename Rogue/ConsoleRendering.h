#pragma once
#include <string>
#include "MapManager.h"
#include "InventoryManager.h"
#include "UserInterfaceManger.h"

class ConsoleWindowManager;
class InventoryManager;
class Player;
class MapManager;

class ConsoleRendering
{
public:
	// RENDERING
	void Render_All(ConsoleWindowManager& c, MapManager& m, Player& p, InventoryManager& i, UserInterfaceManager& ui);
	void Render_GUI(MapManager& m, InventoryManager& i);
	void Render_Stats(MapManager& m, Player& p, InventoryManager& i, UserInterfaceManager& ui);
	void Render_Inventory(ConsoleWindowManager& c, MapManager& m, InventoryManager& i, UserInterfaceManager& ui);
	void Render_Actions(MapManager& m, InventoryManager& i, UserInterfaceManager& ui);

private:
	// PRINTING
	void Print_Actions_GUI(MapManager& m, InventoryManager& i, UserInterfaceManager& ui);
	void Print_Stats(MapManager& m, Player& p, InventoryManager& i, UserInterfaceManager& ui);
	void Print_Inventory(InventoryManager& i, UserInterfaceManager& ui);
	void Print_Actions(char action, MapManager& m);

	// CREATING
	void Create_Stats_GUI(std::string& inventory);
	void Create_Inventory_GUI(std::string& inventory);
};
