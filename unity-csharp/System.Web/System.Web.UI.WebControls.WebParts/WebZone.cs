using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Designer("System.Web.UI.Design.WebControls.WebParts.WebZoneDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[Bindable(false)]
public abstract class WebZone : CompositeControl
{
	public virtual string BackImageUrl
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

	public virtual string EmptyZoneText
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

	public Style EmptyZoneTextStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Style ErrorStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public TitleStyle FooterStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected virtual bool HasFooter
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected virtual bool HasHeader
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public TitleStyle HeaderStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string HeaderText
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

	public virtual int Padding
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public Unit PartChromePadding
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public Style PartChromeStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual PartChromeType PartChromeType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public TableStyle PartStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public TitleStyle PartTitleStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal bool RenderClientScript
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual ButtonType VerbButtonType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public Style VerbStyle
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

	internal WebZone()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual PartChromeType GetEffectiveChromeType(Part part)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual void RenderBody(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderFooter(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderHeader(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
