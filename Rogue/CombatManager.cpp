#include "CombatManager.h"

#include <iostream>

#include "Macro.h"

void CombatManager::Fight(Player& p, MapManager& m, Enemy& e)
{
	switch (_TURN)
	{
	case PLAYER: HitEnemy(e, p);
		PrintStatements(m, e, p, 1);
		UpdateResults(e, p);
		if (_RESULTS == ENEMY_DEAD)
		{
			PrintStatements(m, e, p, 6);
			while (p.in_combat)
			{
				if (GetKeyState(VK_RETURN) & 0x8000)
				{
					p.in_combat = false;
				}
			}
			break;
		}
		PrintStatements(m, e, p, 2);
		SetTurn(ENEMY);
		break;
	case ENEMY: HitPlayer(e, p);
		PrintStatements(m, e, p, 3);
		UpdateResults(e, p);
		if (_RESULTS == PLAYER_DEAD)
		{
			PrintStatements(m, e, p, 5);
			while (p.in_combat)
			{
				if (GetKeyState(VK_RETURN) & 0x8000)
				{
					p.in_combat = false;
					exit(1);
				}
			}
			break;
		}
		PrintStatements(m, e, p, 4);
		SetTurn(PLAYER);
		break;
	}
}

void CombatManager::SetTurn(TURN desired_turn)
{
	_TURN = desired_turn;
}

void CombatManager::HitEnemy(Enemy& e, Player& p)
{
	e.SetDesiredHealth(e.GetHealth() - (p.GetDamage()));
	SleepTimer();
}

void CombatManager::HitPlayer(Enemy& e, Player& p)
{
	p.SetDesiredHealth(p.GetHealth() - e.GetDamage());
	SleepTimer();
}

void CombatManager::PrintStatements(MapManager& m, Enemy& e, Player& p, int statements)
{
	string statement;
	switch (statements)
	{
	case 1: statement = "YOU HIT " + e.GetName() + " WITH " + std::to_string(p.GetDamage()) + " DAMAGE           ";
		Macro::GoToScreenPosition(45, m.height + 3);
		SleepTimer();
		cout << statement;
		break;
	case 2: statement = e.GetName() + " NOW HAS " + std::to_string(e.GetHealth()) + " HEALTH                   ";
		Macro::GoToScreenPosition(45, m.height + 3);
		SleepTimer();
		cout << statement;
		break;
	case 3: statement = e.GetName() + " HIT YOU WITH " + std::to_string(e.GetDamage()) + " DAMAGE                ";
		Macro::GoToScreenPosition(45, m.height + 3);
		SleepTimer();
		cout << statement;
		break;
	case 4: statement = "YOU NOW HAVE " + std::to_string(p.GetHealth()) + " HEALTH                   ";
		Macro::GoToScreenPosition(45, m.height + 3);
		SleepTimer();
		cout << statement;
		break;
	case 5: statement = "YOU HAVE DIED, PRESS ENTER TO QUIT           ";
		Macro::GoToScreenPosition(45, m.height + 3);
		SleepTimer();
		cout << statement;
		break;
	case 6: statement = e.GetName() + " HAS DIED, PRESS ENTER TO CONTINUE           ";
		Macro::GoToScreenPosition(45, m.height + 3);
		SleepTimer();
		cout << statement;
		break;
	}
}

void CombatManager::UpdateResults(Enemy& e, Player& p)
{
	if (p.GetHealth() <= 0)
	{
		_RESULTS = PLAYER_DEAD;
	}
	if (e.GetHealth() <= 0)
	{
		_RESULTS = ENEMY_DEAD;
	}
}

void CombatManager::SleepTimer()
{
	Sleep(1000);
}