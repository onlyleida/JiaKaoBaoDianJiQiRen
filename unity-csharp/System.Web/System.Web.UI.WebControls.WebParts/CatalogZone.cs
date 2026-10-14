using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[SupportsEventValidation]
[Designer("System.Web.UI.Design.WebControls.WebParts.CatalogZoneDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class CatalogZone : CatalogZoneBase
{
	public virtual ITemplate ZoneTemplate
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

	public CatalogZone()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override CatalogPartCollection CreateCatalogParts()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
