using System.ComponentModel;
using System.Data;
using Unity;

namespace System.Web.UI.WebControls;

[DefaultProperty("QueryStringField")]
public class QueryStringParameter : Parameter
{
	[DefaultValue("")]
	public string QueryStringField
	{
		get
		{
			if (ViewState["QueryStringField"] is string result)
			{
				return result;
			}
			return "";
		}
		set
		{
			if (QueryStringField != value)
			{
				ViewState["QueryStringField"] = value;
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

	public QueryStringParameter()
	{
	}

	protected QueryStringParameter(QueryStringParameter original)
		: base(original)
	{
		QueryStringField = original.QueryStringField;
	}

	public QueryStringParameter(string name, string queryStringField)
		: base(name)
	{
		QueryStringField = queryStringField;
	}

	public QueryStringParameter(string name, TypeCode type, string queryStringField)
		: base(name, type)
	{
		QueryStringField = queryStringField;
	}

	public QueryStringParameter(string name, DbType dbType, string queryStringField)
		: base(name, dbType)
	{
		QueryStringField = queryStringField;
	}

	protected override Parameter Clone()
	{
		return new QueryStringParameter(this);
	}

	protected internal override object Evaluate(HttpContext context, Control control)
	{
		if (context == null || context.Request == null)
		{
			return null;
		}
		return context.Request.QueryString[QueryStringField];
	}
}
