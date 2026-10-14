using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputReset : HtmlInputButton
{
	private static readonly object ServerClickEvent = new object();

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool CausesValidation
	{
		get
		{
			return ViewState.GetBool("CausesValidation", def: true);
		}
		set
		{
			ViewState["CausesValidation"] = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", "");
		}
		set
		{
			ViewState["ValidationGroup"] = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler ServerClick
	{
		add
		{
			Events.AddHandler(ServerClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ServerClickEvent, value);
		}
	}

	public HtmlInputReset()
		: base("reset")
	{
	}

	public HtmlInputReset(string type)
		: base(type)
	{
	}
}
