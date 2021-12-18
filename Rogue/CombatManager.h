#pragma once
#include "Player.h"
#include "Enemy.h"
class MapManager;
class Player;
class Enemy;

class CombatManager
{
public:
	void Fight(Player& p, MapManager& m, Enemy& e);

private:
	int sleep_timer = 5000;

	enum TURN
	{
		PLAYER,
		ENEMY
	};

	enum RESULTS
	{
		PLAYER_DEAD,
		ENEMY_DEAD,
		STILL_ALIVE
	};

	TURN _TURN = ENEMY;
	RESULTS _RESULTS = STILL_ALIVE;

	void SetTurn(TURN desired_turn);

	void HitEnemy(Enemy& e, Player& p);
	void HitPlayer(Enemy& e, Player& p);

	void PrintStatements(MapManager& m, Enemy& e, Player& p, int statements);

	void UpdateResults(Enemy& e, Player& p);

	void SleepTimer();
};
