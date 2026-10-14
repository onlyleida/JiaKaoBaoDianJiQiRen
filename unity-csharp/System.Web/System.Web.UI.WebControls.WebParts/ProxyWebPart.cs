using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[ToolboxItem(false)]
public abstract class ProxyWebPart : WebPart
{
	public string GenericWebPartID
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string OriginalID
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string OriginalPath
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string OriginalTypeName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected ProxyWebPart(string originalID, string originalTypeName, string originalPath, string genericWebPartID)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected ProxyWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
