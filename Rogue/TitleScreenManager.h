#pragma once
#include <string>
#include "Player.h"
using namespace std;

class TitleScreenManager
{
public:
	bool on_title_screen = true;

	char* title_map = nullptr;

	string title_screen_file_contents;

	void WaitForInput();
	void LoadTitle(int width, int height, string input);
	void ReadTitle();
	void PrintTitle(int width, int height, ConsoleWindowManager& cw_manager);
	void RenderTitle(ConsoleWindowManager& cw_manager);;
private:
	const int screen_width = 858;
	const int screen_height = 300;
	int width = NULL;
	int height = NULL;
};
