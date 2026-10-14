using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class StateItem
{
	private bool _isDirty;

	private object _value;

	public bool IsDirty
	{
		get
		{
			return _isDirty;
		}
		set
		{
			_isDirty = value;
		}
	}

	public object Value
	{
		get
		{
			return _value;
		}
		set
		{
			_value = value;
		}
	}

	private StateItem()
	{
	}

	internal StateItem(object value)
	{
		_value = value;
	}
}
