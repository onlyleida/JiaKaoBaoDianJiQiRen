using System.Drawing;

namespace System.Web.UI.Design;

public class DesignerRegion : DesignerObject
{
	public static readonly string DesignerRegionAttributeName;

	[System.MonoNotSupported("")]
	public virtual string Description
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
	public virtual string DisplayName
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
	public bool EnsureSize
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
	public virtual bool Highlight
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
	public virtual bool Selectable
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
	public virtual bool Selected
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
	public object UserData
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
	public DesignerRegion(ControlDesigner designer, string name)
		: this(designer, name, selectable: false)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public DesignerRegion(ControlDesigner designer, string name, bool selectable)
		: base(designer, name)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public Rectangle GetBounds()
	{
		throw new NotImplementedException();
	}
}
