using System.Collections.Specialized;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class CatalogZoneBase : ToolZone, IPostBackDataHandler
{
	public virtual WebPartVerb AddVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public CatalogPartChrome CatalogPartChrome
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public CatalogPartCollection CatalogParts
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
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

	public override string HeaderText
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

	public override string InstructionText
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

	public Style PartLinkStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string SelectedCatalogPartID
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

	public Style SelectedPartLinkStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string SelectTargetZoneText
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

	public virtual bool ShowCatalogIcons
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

	protected CatalogZoneBase()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void Close()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual CatalogPartChrome CreateCatalogPartChrome()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected abstract CatalogPartCollection CreateCatalogParts();

	protected void InvalidateCatalogParts()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected override void RaisePostBackEvent(string eventArgument)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderBody(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderCatalogPartLinks(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderFooter(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderVerbs(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
