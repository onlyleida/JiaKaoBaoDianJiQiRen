using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class CatalogPartChrome
{
	protected CatalogZoneBase Zone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public CatalogPartChrome(CatalogZoneBase zone)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual Style CreateCatalogPartChromeStyle(CatalogPart catalogPart, PartChromeType chromeType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual void PerformPreRender()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void RenderCatalogPart(HtmlTextWriter writer, CatalogPart catalogPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderPartContents(HtmlTextWriter writer, CatalogPart catalogPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
