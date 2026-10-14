using System.ComponentModel;

namespace System.Diagnostics;

[Designer("System.Diagnostics.Design.ProcessThreadDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class ProcessThread : Component
{
	[MonitoringDescription("The base priority of this thread.")]
	[MonoTODO]
	public int BasePriority => 0;

	[MonitoringDescription("The current priority of this thread.")]
	[MonoTODO]
	public int CurrentPriority => 0;

	[MonoTODO]
	[MonitoringDescription("The ID of this thread.")]
	public int Id => 0;

	[Browsable(false)]
	[MonoTODO]
	public int IdealProcessor
	{
		set
		{
		}
	}

	[MonoTODO]
	[MonitoringDescription("Thread gets a priority boot when interactively used by a user.")]
	public bool PriorityBoostEnabled
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	[MonoTODO]
	[MonitoringDescription("The priority level of this thread.")]
	public ThreadPriorityLevel PriorityLevel
	{
		get
		{
			return ThreadPriorityLevel.Idle;
		}
		set
		{
		}
	}

	[MonoTODO]
	[MonitoringDescription("The amount of CPU time used in privileged mode.")]
	public TimeSpan PrivilegedProcessorTime => new TimeSpan(0L);

	[MonoTODO]
	[Browsable(false)]
	public IntPtr ProcessorAffinity
	{
		set
		{
		}
	}

	[MonoTODO]
	[MonitoringDescription("The start address in memory of this thread.")]
	public IntPtr StartAddress => (IntPtr)0;

	[MonitoringDescription("The time this thread was started.")]
	[MonoTODO]
	public DateTime StartTime => new DateTime(0L);

	[MonoTODO]
	[MonitoringDescription("The current state of this thread.")]
	public ThreadState ThreadState => ThreadState.Initialized;

	[MonitoringDescription("The total amount of CPU time used.")]
	[MonoTODO]
	public TimeSpan TotalProcessorTime => new TimeSpan(0L);

	[MonitoringDescription("The amount of CPU time used in user mode.")]
	[MonoTODO]
	public TimeSpan UserProcessorTime => new TimeSpan(0L);

	[MonitoringDescription("The reason why this thread is waiting.")]
	[MonoTODO]
	public ThreadWaitReason WaitReason => ThreadWaitReason.Executive;

	[MonoTODO("Parse parameters")]
	internal ProcessThread()
	{
	}

	[MonoTODO]
	public void ResetIdealProcessor()
	{
	}
}
