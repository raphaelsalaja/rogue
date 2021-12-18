#include "Macro.h"
#include "ConsoleWindowManager.h"
#include <time.h>

using namespace std;

void Macro::GoToScreenPosition(short C, short R)
{
	COORD xy;
	xy.X = C;
	xy.Y = R;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), xy);
}

void Macro::RepositionWindow(int width, int height)
{
	HWND hConsoleWnd = GetConsoleWindow();
	HMONITOR hMonitor = MonitorFromWindow(hConsoleWnd, MONITOR_DEFAULTTONEAREST);
	if (hMonitor)
	{
		MONITORINFO info{
			sizeof(info)
		}; // set cbSize member and fill the rest with zero
		if (::GetMonitorInfo(hMonitor, &info))
		{
			int x = (info.rcWork.left + info.rcWork.right) / 2 - width / 2;
			int y = (info.rcWork.top + info.rcWork.bottom) / 2 - height / 2;
			SetConsoleTitle(TEXT("ROGUE"));
			SetWindowPos(hConsoleWnd, nullptr, x, y, width, height, SWP_NOZORDER | SWP_NOOWNERZORDER | SWP_SHOWWINDOW);
		}
	}
}

string Macro::ReplaceAll(string str, const string& from, const string& to)
{
	size_t start_pos = 0;
	while ((start_pos = str.find(from, start_pos)) != string::npos)
	{
		str.replace(start_pos, from.length(), to);
		start_pos += to.length(); // Handles case where 'to' is a substring of 'from'
	}
	return str;
}

int Macro::Separate(int input, char from, char count)
{
	int d = 1;
	for (int i = 0; i < from; i++, d *= 10);
	int m = 1;
	for (int i = 0; i < count; i++, m *= 10);
	return ((input / d) % m);
}

int Macro::GenerateRandomNumber(int max)
{
	srand(static_cast<unsigned>(time(nullptr)));
	return rand() % max;
}

int Macro::GenerateRandomNumberWithoutZero(int max)
{
	srand(time(nullptr));
	return (rand() % max) + 1.0;
}