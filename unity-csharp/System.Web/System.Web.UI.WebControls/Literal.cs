using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[DefaultProperty("Text")]
[DataBindingHandler("System.Web.UI.Design.TextDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[Designer("System.Web.UI.Design.WebControls.LiteralDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ControlBuilder(typeof(LiteralControlBuilder))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Literal : Control, ITextControl
{
	[WebSysDescription("")]
	[DefaultValue(LiteralMode.Transform)]
	[WebCategory("Behavior")]
	public LiteralMode Mode
	{
		get
		{
			if (ViewState["Mode"] != null)
			{
				return (LiteralMode)ViewState["Mode"];
			}
			return LiteralMode.Transform;
		}
		set
		{
			if (value < LiteralMode.Transform || value > LiteralMode.Encode)
			{
				throw new ArgumentOutOfRangeException();
			}
			ViewState["Mode"] = value;
		}
	}

	[WebCategory("Appearance")]
	[DefaultValue("")]
	[Bindable(true)]
	[WebSysDescription("")]
	[Localizable(true)]
	public string Text
	{
		get
		{
			return ViewState.GetString("Text", string.Empty);
		}
		set
		{
			ViewState["Text"] = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void Focus()
	{
		throw new NotSupportedException();
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (obj is LiteralControl literalControl)
		{
			Text = literalControl.Text;
			return;
		}
		throw new HttpException(Locale.GetText("'Literal' cannot have children of type '{0}'", obj.GetType()));
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (Mode == LiteralMode.Encode)
		{
			writer.Write(HttpUtility.HtmlEncode(Text));
		}
		else
		{
			writer.Write(Text);
		}
	}
}
