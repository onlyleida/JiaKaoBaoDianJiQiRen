using System.ComponentModel;
using System.Data;

namespace System.Web.UI.WebControls;

[DefaultProperty("SessionField")]
public class SessionParameter : Parameter
{
	[DefaultValue("")]
	[WebCategory("Parameter")]
	public string SessionField
	{
		get
		{
			if (ViewState["SessionField"] is string result)
			{
				return result;
			}
			return "";
		}
		set
		{
			if (SessionField != value)
			{
				ViewState["SessionField"] = value;
				OnParameterChanged();
			}
		}
	}

	public SessionParameter()
	{
	}

	protected SessionParameter(SessionParameter original)
		: base(original)
	{
		SessionField = original.SessionField;
	}

	public SessionParameter(string name, string sessionField)
		: base(name)
	{
		SessionField = sessionField;
	}

	public SessionParameter(string name, TypeCode type, string sessionField)
		: base(name, type)
	{
		SessionField = sessionField;
	}

	public SessionParameter(string name, DbType dbType, string sessionField)
		: base(name, dbType)
	{
		SessionField = sessionField;
	}

	protected override Parameter Clone()
	{
		return new SessionParameter(this);
	}

	protected internal override object Evaluate(HttpContext context, Control control)
	{
		if (context == null || context.Session == null)
		{
			return null;
		}
		return context.Session[SessionField];
	}
}
