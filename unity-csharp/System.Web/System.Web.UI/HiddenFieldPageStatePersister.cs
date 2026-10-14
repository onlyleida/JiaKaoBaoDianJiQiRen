using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HiddenFieldPageStatePersister : PageStatePersister
{
	public HiddenFieldPageStatePersister(Page page)
		: base(page)
	{
	}

	public override void Load()
	{
		string rawViewState = Page.RawViewState;
		IStateFormatter stateFormatter = StateFormatter;
		if (!string.IsNullOrEmpty(rawViewState) && stateFormatter.Deserialize(rawViewState) is Pair pair)
		{
			ViewState = pair.First;
			ControlState = pair.Second;
		}
	}

	public override void Save()
	{
		IStateFormatter stateFormatter = StateFormatter;
		Page.RawViewState = stateFormatter.Serialize(new Pair(ViewState, ControlState));
	}
}
