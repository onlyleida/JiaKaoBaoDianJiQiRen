using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI;

[ToolboxItem(false)]
[DataBindingHandler("System.Web.UI.Design.TextDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DesignerDataBoundLiteralControl : Control
{
	private string text = string.Empty;

	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			if (value == null)
			{
				text = string.Empty;
			}
			else
			{
				text = value;
			}
		}
	}

	public DesignerDataBoundLiteralControl()
	{
		AutoID = false;
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			text = (string)savedState;
		}
	}

	protected internal override void Render(HtmlTextWriter output)
	{
		output.Write(text);
	}

	protected override object SaveViewState()
	{
		return text;
	}
}
