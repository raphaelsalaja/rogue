#include "TitleScreenManager.h"
#include <iostream>
#include "ConsoleWindowManager.h"
#include "Macro.h"
#include <stdio.h>
#include <fcntl.h>
#include <windows.h>
#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <string>
#include <regex>
using namespace Macro;

void TitleScreenManager::WaitForInput()
{
	while (on_title_screen)
	{
		GoToScreenPosition(0, height / 2);
		if (GetKeyState(VK_RETURN) & 0x8000)
		{
			on_title_screen = false;
		}
	}
}

void TitleScreenManager::LoadTitle(int width, int height, string input)
{
	for (int i = 0; i < width; i++)
	{
		for (int j = 0; j < height; j++)
		{
			title_map[i * height + j] = input.at(i * height + j);
		}
	}
}

void TitleScreenManager::ReadTitle()
{
	string str;
	title_screen_file_contents = "";
	ifstream file("TITLE_Rogue.txt");
	bool width_retrieved = false;

	while (getline(file, str))
	{
		title_screen_file_contents += str;
		title_screen_file_contents.push_back('\n');
		char current_char = title_screen_file_contents.at(title_screen_file_contents.length() - 1);
		if (current_char == '\n')
		{
			if (width_retrieved == false)
			{
				width = title_screen_file_contents.length();
				width_retrieved = true;
			}
			height++;
		}
	}
	title_map = new char[width * height + 1]{};
}

void TitleScreenManager::PrintTitle(int width, int height, ConsoleWindowManager& cw_manager)
{
	srand(time(nullptr));
	int random_color = (rand() % 5) + 4;
	for (int i = 0; i < width; i++)
	{
		for (int j = 0; j < height; j++)
		{
			if (title_map[i * height + j] == '\n')
			{
				random_color = (rand() % 15) + 1;
			}
			cw_manager.SetConsoleWindowRandomColor(random_color);
			cout << title_map[i * height + j];
		}
	}
}

void TitleScreenManager::RenderTitle(ConsoleWindowManager& cw_manager)
{
	RepositionWindow(screen_width, screen_height);
	ReadTitle();
	LoadTitle(width, height, title_screen_file_contents);
	PrintTitle(width, height, cw_manager);
	WaitForInput();
}