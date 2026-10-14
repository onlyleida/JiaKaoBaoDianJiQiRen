using System.Reflection;

namespace System.Web.UI;

public abstract class PropertyEntry
{
	private Type type;

	private string name;

	private string filter;

	private PropertyInfo pinfo;

	public Type DeclaringType => pinfo.DeclaringType;

	public string Filter
	{
		get
		{
			return filter;
		}
		set
		{
			filter = value;
		}
	}

	public string Name
	{
		get
		{
			return name;
		}
		set
		{
			name = value;
		}
	}

	public PropertyInfo PropertyInfo
	{
		get
		{
			return pinfo;
		}
		set
		{
			pinfo = value;
		}
	}

	public Type Type
	{
		get
		{
			return type;
		}
		set
		{
			type = value;
		}
	}

	internal PropertyEntry()
	{
	}
}
