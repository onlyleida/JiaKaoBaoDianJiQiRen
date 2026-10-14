using System.ComponentModel;
using System.Data;
using Unity;

namespace System.Web.UI.WebControls;

[DefaultProperty("CookieName")]
public class CookieParameter : Parameter
{
	[DefaultValue("")]
	public string CookieName
	{
		get
		{
			return ViewState.GetString("CookieName", string.Empty);
		}
		set
		{
			if (CookieName != value)
			{
				ViewState["CookieName"] = value;
				OnParameterChanged();
			}
		}
	}

	public bool ValidateInput
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public CookieParameter()
	{
	}

	protected CookieParameter(CookieParameter original)
		: base(original)
	{
		CookieName = original.CookieName;
	}

	public CookieParameter(string name, string cookieName)
		: base(name)
	{
		CookieName = cookieName;
	}

	public CookieParameter(string name, TypeCode type, string cookieName)
		: base(name, type)
	{
		CookieName = cookieName;
	}

	public CookieParameter(string name, DbType dbType, string cookieName)
		: base(name, dbType)
	{
		CookieName = cookieName;
	}

	protected override Parameter Clone()
	{
		return new CookieParameter(this);
	}

	protected internal override object Evaluate(HttpContext context, Control control)
	{
		if (context == null || context.Request == null)
		{
			return null;
		}
		return context.Request.Cookies[CookieName]?.Value;
	}
}
