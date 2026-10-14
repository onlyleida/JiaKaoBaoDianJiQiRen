using System;

namespace UnityEngine.Analytics;

[Flags]
public enum AnalyticsEventPriority
{
	FlushQueueFlag = 1,
	CacheImmediatelyFlag = 2,
	AllowInStopModeFlag = 4,
	SendImmediateFlag = 8,
	NormalPriorityEvent = 0,
	NormalPriorityEvent_WithCaching = CacheImmediatelyFlag,
	HighPriorityEvent = FlushQueueFlag,
	HighPriorityEvent_InStopMode = FlushQueueFlag | AllowInStopModeFlag,
	HighestPriorityEvent = FlushQueueFlag | SendImmediateFlag
}
