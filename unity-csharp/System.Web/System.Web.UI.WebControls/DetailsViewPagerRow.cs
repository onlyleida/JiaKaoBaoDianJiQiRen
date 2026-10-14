using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class DetailsViewPagerRow : DetailsViewRow, INamingContainer, INonBindingContainer
{
	[MonoTODO("why this class exists at all?")]
	public DetailsViewPagerRow(int rowIndex, DataControlRowType rowType, DataControlRowState rowState)
		: base(rowIndex, rowType, rowState)
	{
	}
}
