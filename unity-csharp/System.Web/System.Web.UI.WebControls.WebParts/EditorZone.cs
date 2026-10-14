using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Designer("System.Web.UI.Design.WebControls.WebParts.EditorZoneDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[SupportsEventValidation]
public class EditorZone : EditorZoneBase
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

	public EditorZone()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override EditorPartCollection CreateEditorParts()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
