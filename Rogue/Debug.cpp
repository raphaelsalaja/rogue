#include <iostream>

#include "Debug.h"
#include "Macro.h"

#include "ConsoleWindowManager.h"
#include "MapManager.h"

using namespace Macro;
using namespace std;
void Debug::DebugControls(MapManager& m, Player& p, InventoryManager& i)
{
	GoToScreenPosition(0, m.height + 1);
	if (GetKeyState('B') & 0x8000)
	{
		if (p.health != 0)
		{
			p.health--;
		}
		cout << "YOU TOOK 1 DAMAGE TO HEALTH                   ";
	}
	if (GetKeyState('N') & 0x8000)
	{
		if (p.shield != 0)
		{
			p.shield--;
		}
		cout << "YOU TOOK 1 DAMAGE TO SHIELD                   ";
	}
	if (GetKeyState('M') & 0x8000)
	{
		if (p.magic != 0)
		{
			p.magic--;
		}
		cout << "YOU USED 1 MAGIC                              ";
	}
}