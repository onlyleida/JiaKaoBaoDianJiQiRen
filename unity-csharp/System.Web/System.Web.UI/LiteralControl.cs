using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI;

[ToolboxItem(false)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class LiteralControl : Control, ITextControl
{
	private string _text;

	public virtual string Text
	{
		get
		{
			return _text;
		}
		set
		{
			_text = ((value == null) ? string.Empty : value);
		}
	}

	public LiteralControl()
	{
		EnableViewState = false;
		AutoID = false;
	}

	public LiteralControl(string text)
		: this()
	{
		Text = text;
	}

	protected internal override void Render(HtmlTextWriter output)
	{
		output.Write(_text);
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}
}
