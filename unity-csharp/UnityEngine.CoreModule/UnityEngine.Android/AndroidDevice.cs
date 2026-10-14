using System.Runtime.CompilerServices;
using UnityEngine.Bindings;

namespace UnityEngine.Android;

public class AndroidDevice
{
	[MethodImpl(MethodImplOptions.InternalCall)]
	[FreeFunction]
	[NativeHeader("PlatformDependent/AndroidPlayer/Source/SustainedPerformance.h")]
	public static extern void SetSustainedPerformanceMode(bool enabled);
}
