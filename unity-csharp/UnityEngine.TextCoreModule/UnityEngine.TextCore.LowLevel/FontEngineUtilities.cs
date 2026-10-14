using System.Runtime.InteropServices;

namespace UnityEngine.TextCore.LowLevel;

[StructLayout(LayoutKind.Sequential, Size = 1)]
internal struct FontEngineUtilities
{
	internal static bool Approximately(float a, float b)
	{
		return Mathf.Abs(a - b) < 0.001f;
	}

	internal static int MaxValue(int a, int b, int c)
	{
		int result;
		if (a >= b)
		{
			result = ((a < c) ? c : a);
		}
		else
		{
			result = ((b < c) ? c : b);
		}
		return result;
	}
}
