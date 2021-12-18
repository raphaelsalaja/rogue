#pragma once
#include <windows.h>

class ConsoleWindowManager
{
public:
	enum COLORS
	{
		BLACK = 0,
		DARK_BLUE = 1,
		DARK_GREEN = 2,
		LIGHT_BLUE = 3,
		DARK_RED = 4,
		MAGENTA = 5,
		ORANGE = 6,
		LIGHT_GRAY = 7,
		GRAY = 8,
		BLUE = 9,
		GREEN = 10,
		CYAN = 11,
		RED = 12,
		PINK = 13,
		YELLOW = 14,
		WHITE = 15
	};

	void BlankScreen();
	void HideConsoleCursor();
	void SetWindowDisplay(int width, int height);
	void SetText();
	void SetConsoleWindowColor(COLORS fg, COLORS bg);
	void SetConsoleWindowRandomColor(int random_color);
	void RepositionWindow(int width, int height);

	HANDLE GetConsoleHandle();

	HWND GetDesktopHandleWindow();
	HWND GetConsoleHandleWindow();

private:
	HANDLE HANDLE_CONSOLE;
	HWND HANDLE_WINDOW_DESKTOP;
	HWND HANDLE_WINDOW_CONSOLE;
};
