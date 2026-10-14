using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Bindable(false)]
[Designer("System.Web.UI.Design.WebControls.WebParts.EditorPartDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
public abstract class EditorPart : Part
{
	private bool display = true;

	private WebPart webPartToEdit;

	private object zone;

	private string displayTitle;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual bool Display => display;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string DisplayTitle => displayTitle;

	protected WebPart WebPartToEdit => webPartToEdit;

	protected WebPartManager WebPartManager
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected EditorZoneBase Zone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public abstract bool ApplyChanges();

	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override IDictionary GetDesignModeState()
	{
		throw new NotImplementedException();
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		if (zone == null)
		{
			throw new InvalidOperationException();
		}
		base.OnPreRender(e);
		if (!Display)
		{
			Visible = false;
		}
	}

	public abstract void SyncChanges();
}
