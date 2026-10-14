using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Designer("System.Web.UI.Design.WebControls.WebParts.WebPartZoneDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[SupportsEventValidation]
public class WebPartZone : WebPartZoneBase
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

	public WebPartZone()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal override WebPartCollection GetInitialWebParts()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
