using System.Security.Permissions;

namespace System.Diagnostics;

public class SourceSwitch : Switch
{
	public SourceLevels Level
	{
		get
		{
			return (SourceLevels)SwitchSetting;
		}
		[SecurityPermission(SecurityAction.LinkDemand, Flags = SecurityPermissionFlag.UnmanagedCode)]
		set
		{
			SwitchSetting = (int)value;
		}
	}

	public SourceSwitch(string name)
		: base(name, string.Empty)
	{
	}

	public SourceSwitch(string displayName, string defaultSwitchValue)
		: base(displayName, string.Empty, defaultSwitchValue)
	{
	}

	public bool ShouldTrace(TraceEventType eventType)
	{
		return ((uint)SwitchSetting & (uint)eventType) != 0;
	}

	protected override void OnValueChanged()
	{
		SwitchSetting = (int)Enum.Parse(typeof(SourceLevels), Value, ignoreCase: true);
	}
}
