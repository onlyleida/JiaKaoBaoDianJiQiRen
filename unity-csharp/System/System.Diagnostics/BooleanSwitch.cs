using System.Security.Permissions;

namespace System.Diagnostics;

[SwitchLevel(typeof(bool))]
public class BooleanSwitch : Switch
{
	public bool Enabled
	{
		get
		{
			if (SwitchSetting != 0)
			{
				return true;
			}
			return false;
		}
		[SecurityPermission(SecurityAction.LinkDemand, Flags = SecurityPermissionFlag.UnmanagedCode)]
		set
		{
			SwitchSetting = (value ? 1 : 0);
		}
	}

	public BooleanSwitch(string displayName, string description)
		: base(displayName, description)
	{
	}

	public BooleanSwitch(string displayName, string description, string defaultSwitchValue)
		: base(displayName, description, defaultSwitchValue)
	{
	}

	protected override void OnValueChanged()
	{
		if (bool.TryParse(Value, out var result))
		{
			SwitchSetting = (result ? 1 : 0);
		}
		else
		{
			base.OnValueChanged();
		}
	}
}
