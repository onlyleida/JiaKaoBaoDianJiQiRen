using System.ComponentModel;
using System.Data;

namespace System.Web.UI.WebControls;

[DefaultProperty("RouteKey")]
public class RouteParameter : Parameter
{
	private string routeKey;

	[DefaultValue("")]
	public string RouteKey
	{
		get
		{
			return routeKey;
		}
		set
		{
			routeKey = value ?? string.Empty;
		}
	}

	public RouteParameter()
	{
		RouteKey = string.Empty;
		Name = string.Empty;
		Type = TypeCode.Empty;
		Direction = ParameterDirection.Input;
		DefaultValue = null;
	}

	protected RouteParameter(RouteParameter original)
		: base(original)
	{
		RouteKey = original.RouteKey;
	}

	public RouteParameter(string name, string routeKey)
		: base(name)
	{
		RouteKey = routeKey;
	}

	public RouteParameter(string name, DbType dbType, string routeKey)
		: base(name, dbType)
	{
		RouteKey = routeKey;
	}

	public RouteParameter(string name, TypeCode type, string routeKey)
		: base(name, type)
	{
		RouteKey = routeKey;
	}

	protected override Parameter Clone()
	{
		return new RouteParameter(this);
	}

	protected internal override object Evaluate(HttpContext context, Control control)
	{
		if (context == null || control == null)
		{
			return null;
		}
		return (control.Page ?? throw new NullReferenceException(".NET emulation")).RouteData?.Values[RouteKey];
	}
}
