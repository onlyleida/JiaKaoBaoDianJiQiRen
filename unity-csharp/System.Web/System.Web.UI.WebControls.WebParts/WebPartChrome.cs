using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class WebPartChrome
{
	protected bool DragDropEnabled
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
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

	protected WebPartZoneBase Zone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartChrome(WebPartZoneBase zone, WebPartManager manager)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual Style CreateWebPartChromeStyle(WebPart webPart, PartChromeType chromeType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual WebPartVerbCollection FilterWebPartVerbs(WebPartVerbCollection verbs, WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected string GetWebPartChromeClientID(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected string GetWebPartTitleClientID(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual WebPartVerbCollection GetWebPartVerbs(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual void PerformPreRender()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderPartContents(HtmlTextWriter writer, WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void RenderWebPart(HtmlTextWriter writer, WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
