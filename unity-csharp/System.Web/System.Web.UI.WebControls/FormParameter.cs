using System.ComponentModel;
using System.Data;
using Unity;

namespace System.Web.UI.WebControls;

[DefaultProperty("FormField")]
public class FormParameter : Parameter
{
	[DefaultValue("")]
	public string FormField
	{
		get
		{
			if (ViewState["FormField"] is string result)
			{
				return result;
			}
			return string.Empty;
		}
		set
		{
			if (FormField != value)
			{
				ViewState["FormField"] = value;
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

	public FormParameter()
	{
	}

	protected FormParameter(FormParameter original)
		: base(original)
	{
		FormField = original.FormField;
	}

	public FormParameter(string name, string formField)
		: base(name)
	{
		FormField = formField;
	}

	public FormParameter(string name, TypeCode type, string formField)
		: base(name, type)
	{
		FormField = formField;
	}

	public FormParameter(string name, DbType dbType, string formField)
		: base(name, dbType)
	{
		FormField = formField;
	}

	protected override Parameter Clone()
	{
		return new FormParameter(this);
	}

	protected internal override object Evaluate(HttpContext context, Control control)
	{
		return (context?.Request)?.Form[FormField];
	}
}
