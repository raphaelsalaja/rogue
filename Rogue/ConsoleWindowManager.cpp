#include "ConsoleWindowManager.h"

HANDLE ConsoleWindowManager::GetConsoleHandle()
{
	return HANDLE_CONSOLE = GetStdHandle(STD_OUTPUT_HANDLE);
}

HWND ConsoleWindowManager::GetDesktopHandleWindow()
{
	return HANDLE_WINDOW_DESKTOP = GetDesktopWindow();
}

HWND ConsoleWindowManager::GetConsoleHandleWindow()
{
	return HANDLE_WINDOW_CONSOLE = GetConsoleWindow();
}

void ConsoleWindowManager::BlankScreen()
{
	system("CLS");
}

void ConsoleWindowManager::HideConsoleCursor()
{
	CONSOLE_CURSOR_INFO CONSOLE_CURSOR_INFO_CONSOLE;
	GetConsoleCursorInfo(GetConsoleHandle(), &CONSOLE_CURSOR_INFO_CONSOLE);
	CONSOLE_CURSOR_INFO_CONSOLE.bVisible = false;
	SetConsoleCursorInfo(GetConsoleHandle(), &CONSOLE_CURSOR_INFO_CONSOLE);
}

void ConsoleWindowManager::SetWindowDisplay(int width, int height)
{
	HMONITOR HANDLE_MONITOR = MonitorFromWindow(GetConsoleHandleWindow(), MONITOR_DEFAULTTONEAREST);
	if (HANDLE_MONITOR)
	{
		MONITORINFO MONITOR_INFO{sizeof(MONITOR_INFO)};
		if (::GetMonitorInfo(HANDLE_MONITOR, &MONITOR_INFO))
		{
			int x = (MONITOR_INFO.rcWork.left + MONITOR_INFO.rcWork.right) / 2 - width / 2;
			int y = (MONITOR_INFO.rcWork.top + MONITOR_INFO.rcWork.bottom) / 2 - height / 2;
			SetConsoleTitle(TEXT("ROGUE"));
			SetWindowPos(GetConsoleHandleWindow(), nullptr, x, y, width, height,
			             SWP_NOZORDER | SWP_NOOWNERZORDER | SWP_SHOWWINDOW);
		}
	}
}

void ConsoleWindowManager::SetText()
{
	CONSOLE_FONT_INFOEX CONSOLE_FONT = {0};
	CONSOLE_FONT.cbSize = sizeof CONSOLE_FONT;
	CONSOLE_FONT.dwFontSize.X = 8;
	CONSOLE_FONT.dwFontSize.Y = 12;
	wcscpy_s(CONSOLE_FONT.FaceName, L"Terminal");
	SetCurrentConsoleFontEx(GetConsoleHandle(), 0, &CONSOLE_FONT);
}

void ConsoleWindowManager::SetConsoleWindowColor(COLORS fg, COLORS bg)
{
	SetConsoleTextAttribute(GetConsoleHandle(), fg + bg * 16);
}


void ConsoleWindowManager::SetConsoleWindowRandomColor(int random_color)
{
	SetConsoleTextAttribute(GetConsoleHandle(), random_color + BLACK * 16);
}
