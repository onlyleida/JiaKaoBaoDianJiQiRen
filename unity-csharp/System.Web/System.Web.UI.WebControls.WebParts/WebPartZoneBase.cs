using System.ComponentModel;
using System.Drawing;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Designer("System.Web.UI.Design.WebControls.WebParts.WebPartZoneBaseDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public abstract class WebPartZoneBase : WebZone, IPostBackEventHandler
{
	public virtual bool AllowLayoutChange
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

	public virtual WebPartVerb CloseVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual WebPartVerb ConnectVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual WebPartVerb DeleteVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string DisplayTitle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal bool DragDropEnabled
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual Color DragHighlightColor
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

	public virtual WebPartVerb EditVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string EmptyZoneText
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

	public virtual WebPartVerb ExportVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected override bool HasFooter
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected override bool HasHeader
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual WebPartVerb HelpVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual Orientation LayoutOrientation
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

	public Style MenuCheckImageStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string MenuCheckImageUrl
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

	public Style MenuLabelHoverStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Style MenuLabelStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string MenuLabelText
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

	public virtual string MenuPopupImageUrl
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

	public WebPartMenuStyle MenuPopupStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Style MenuVerbHoverStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Style MenuVerbStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual WebPartVerb MinimizeVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual WebPartVerb RestoreVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Style SelectedPartChromeStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual bool ShowTitleIcons
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

	public virtual ButtonType TitleBarVerbButtonType
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

	public Style TitleBarVerbStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override ButtonType VerbButtonType
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

	public WebPartChrome WebPartChrome
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartCollection WebParts
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual WebPartVerbRenderMode WebPartVerbRenderMode
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

	public event WebPartVerbsEventHandler CreateVerbs
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	protected WebPartZoneBase()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void CloseWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void ConnectWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual WebPartChrome CreateWebPartChrome()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual void DeleteWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void EditWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override PartChromeType GetEffectiveChromeType(Part part)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected internal abstract WebPartCollection GetInitialWebParts();

	protected virtual void MinimizeWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnCreateVerbs(WebPartVerbsEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderBody(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderDropCue(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderHeader(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RestoreWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
