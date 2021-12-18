#pragma once
#include <string>
using namespace std;

namespace Macro
{
	void GoToScreenPosition(short C, short R);
	void RepositionWindow(int width, int height);

	string ReplaceAll(string str, const string& from, const string& to);

	int Separate(int input, char from, char count);

	int GenerateRandomNumber(int max);
	int GenerateRandomNumberWithoutZero(int max);
}
