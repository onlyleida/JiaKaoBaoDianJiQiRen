using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Designer("System.Web.UI.Design.WebControls.WebParts.PageCatalogPartDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public sealed class PageCatalogPart : CatalogPart
{
	public PageCatalogPart()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override WebPartDescriptionCollection GetAvailableWebPartDescriptions()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override WebPart GetWebPart(WebPartDescription description)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
