namespace System.Web.UI.Design;

public class EditableDesignerRegion : DesignerRegion
{
	[System.MonoNotSupported("")]
	public virtual string Content
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public bool ServerControlsOnly
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual bool SupportsDataBinding
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public EditableDesignerRegion(ControlDesigner owner, string name)
		: base(owner, name)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public EditableDesignerRegion(ControlDesigner owner, string name, bool serverControlsOnly)
		: base(owner, name, serverControlsOnly)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public virtual ViewRendering GetChildViewRendering(Control control)
	{
		throw new NotImplementedException();
	}
}
