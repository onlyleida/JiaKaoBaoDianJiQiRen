using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[ToolboxItem(false)]
public sealed class UnauthorizedWebPart : ProxyWebPart
{
	public UnauthorizedWebPart(string originalID, string originalTypeName, string originalPath, string genericWebPartID)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public UnauthorizedWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
