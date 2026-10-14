using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Designer("System.Web.UI.Design.WebControls.WebParts.DeclarativeCatalogPartDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public sealed class DeclarativeCatalogPart : CatalogPart
{
	public string WebPartsListUserControlPath
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ITemplate WebPartsTemplate
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DeclarativeCatalogPart()
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
