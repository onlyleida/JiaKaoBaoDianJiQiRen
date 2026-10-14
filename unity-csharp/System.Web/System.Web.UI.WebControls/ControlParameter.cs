using System.ComponentModel;
using System.Data;

namespace System.Web.UI.WebControls;

[DefaultProperty("ControlID")]
public class ControlParameter : Parameter
{
	[IDReferenceProperty(typeof(Control))]
	[DefaultValue("")]
	[RefreshProperties(RefreshProperties.All)]
	[TypeConverter(typeof(ControlIDConverter))]
	[WebCategory("Control")]
	public string ControlID
	{
		get
		{
			return ViewState.GetString("ControlID", string.Empty);
		}
		set
		{
			if (ControlID != value)
			{
				ViewState["ControlID"] = value;
				OnParameterChanged();
			}
		}
	}

	[DefaultValue("")]
	[TypeConverter(typeof(ControlPropertyNameConverter))]
	[WebCategory("Control")]
	public string PropertyName
	{
		get
		{
			return ViewState.GetString("PropertyName", string.Empty);
		}
		set
		{
			if (PropertyName != value)
			{
				ViewState["PropertyName"] = value;
				OnParameterChanged();
			}
		}
	}

	public ControlParameter()
	{
	}

	protected ControlParameter(ControlParameter original)
		: base(original)
	{
		ControlID = original.ControlID;
		PropertyName = original.PropertyName;
	}

	public ControlParameter(string name, string controlID)
		: base(name)
	{
		ControlID = controlID;
	}

	public ControlParameter(string name, string controlID, string propertyName)
		: base(name)
	{
		ControlID = controlID;
		PropertyName = propertyName;
	}

	public ControlParameter(string name, TypeCode type, string controlID, string propertyName)
		: base(name, type)
	{
		ControlID = controlID;
		PropertyName = propertyName;
	}

	public ControlParameter(string name, DbType dbType, string controlID, string propertyName)
		: base(name, dbType)
	{
		ControlID = controlID;
		PropertyName = propertyName;
	}

	protected override Parameter Clone()
	{
		return new ControlParameter(this);
	}

	protected internal override object Evaluate(HttpContext context, Control control)
	{
		if (control == null)
		{
			return null;
		}
		if (control.Page == null)
		{
			return null;
		}
		if (string.IsNullOrEmpty(ControlID))
		{
			throw new ArgumentException("The ControlID property is not set.");
		}
		Control control2 = null;
		for (Control namingContainer = control.NamingContainer; namingContainer != null; namingContainer = namingContainer.NamingContainer)
		{
			control2 = namingContainer.FindControl(ControlID);
			if (control2 != null)
			{
				break;
			}
		}
		if (control2 == null)
		{
			throw new InvalidOperationException("Control '" + ControlID + "' not found.");
		}
		string text = PropertyName;
		if (string.IsNullOrEmpty(text))
		{
			object[] customAttributes = control2.GetType().GetCustomAttributes(typeof(ControlValuePropertyAttribute), inherit: true);
			if (customAttributes.Length == 0)
			{
				throw new ArgumentException("The PropertyName property is not set and the Control identified by the ControlID property is not decorated with a ControlValuePropertyAttribute attribute.");
			}
			text = ((ControlValuePropertyAttribute)customAttributes[0]).Name;
		}
		return DataBinder.Eval(control2, text);
	}
}
