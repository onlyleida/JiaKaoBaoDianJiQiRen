using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Designer("System.Web.UI.Design.WebControls.WebParts.CatalogPartDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[Bindable(false)]
public abstract class CatalogPart : Part
{
	public string DisplayTitle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected WebPartManager WebPartManager
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected CatalogZoneBase Zone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected CatalogPart()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract WebPartDescriptionCollection GetAvailableWebPartDescriptions();

	public abstract WebPart GetWebPart(WebPartDescription description);
}
