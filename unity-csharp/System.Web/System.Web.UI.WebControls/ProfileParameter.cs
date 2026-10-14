using System.ComponentModel;
using System.Data;

namespace System.Web.UI.WebControls;

[DefaultProperty("PropertyName")]
public class ProfileParameter : Parameter
{
	[DefaultValue("")]
	public string PropertyName
	{
		get
		{
			object obj = ViewState["PropertyName"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			ViewState["PropertyName"] = value;
		}
	}

	public ProfileParameter()
	{
	}

	protected ProfileParameter(ProfileParameter original)
		: base(original)
	{
		PropertyName = original.PropertyName;
	}

	public ProfileParameter(string name, string propertyName)
		: base(name)
	{
		PropertyName = propertyName;
	}

	public ProfileParameter(string name, TypeCode type, string propertyName)
		: base(name, type)
	{
		PropertyName = propertyName;
	}

	public ProfileParameter(string name, DbType dbType, string propertyName)
		: base(name, dbType)
	{
		PropertyName = propertyName;
	}

	protected override Parameter Clone()
	{
		return new ProfileParameter(this);
	}

	protected internal override object Evaluate(HttpContext context, Control control)
	{
		if (context == null || context.Profile == null)
		{
			return null;
		}
		if (string.IsNullOrEmpty(PropertyName))
		{
			return null;
		}
		return context.Profile[PropertyName];
	}
}
