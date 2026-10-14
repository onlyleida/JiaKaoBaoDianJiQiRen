using System;
using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using System.Timers;

namespace Microsoft.Win32;

[PermissionSet(SecurityAction.LinkDemand, Unrestricted = true)]
public sealed class SystemEvents
{
	private static Hashtable TimerStore = new Hashtable();

	[MonoTODO]
	public static event EventHandler DisplaySettingsChanged
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event EventHandler DisplaySettingsChanging
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event EventHandler EventsThreadShutdown
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event EventHandler InstalledFontsChanged
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("")]
	public static event EventHandler LowMemory
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event EventHandler PaletteChanged
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event PowerModeChangedEventHandler PowerModeChanged
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event SessionEndedEventHandler SessionEnded
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event SessionEndingEventHandler SessionEnding
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event SessionSwitchEventHandler SessionSwitch
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event EventHandler TimeChanged
	{
		add
		{
		}
		remove
		{
		}
	}

	public static event TimerElapsedEventHandler TimerElapsed;

	[MonoTODO("Currently does nothing on Mono")]
	public static event UserPreferenceChangedEventHandler UserPreferenceChanged
	{
		add
		{
		}
		remove
		{
		}
	}

	[MonoTODO("Currently does nothing on Mono")]
	public static event UserPreferenceChangingEventHandler UserPreferenceChanging
	{
		add
		{
		}
		remove
		{
		}
	}

	private SystemEvents()
	{
	}

	public static IntPtr CreateTimer(int interval)
	{
		int hashCode = Guid.NewGuid().GetHashCode();
		Timer timer = new Timer(interval);
		timer.Elapsed += InternalTimerElapsed;
		TimerStore.Add(hashCode, timer);
		return new IntPtr(hashCode);
	}

	public static void KillTimer(IntPtr timerId)
	{
		Timer timer = (Timer)TimerStore[timerId.GetHashCode()];
		timer.Stop();
		timer.Elapsed -= InternalTimerElapsed;
		timer.Dispose();
		TimerStore.Remove(timerId.GetHashCode());
	}

	private static void InternalTimerElapsed(object e, ElapsedEventArgs args)
	{
		if (TimerElapsed != null)
		{
			TimerElapsed(null, new TimerElapsedEventArgs(IntPtr.Zero));
		}
	}

	[MonoTODO]
	public static void InvokeOnEventsThread(Delegate method)
	{
		throw new NotImplementedException();
	}
}
