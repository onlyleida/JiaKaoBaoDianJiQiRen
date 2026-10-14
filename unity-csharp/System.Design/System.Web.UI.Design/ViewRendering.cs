using Unity;

namespace System.Web.UI.Design;

public class ViewRendering
{
	[System.MonoNotSupported("")]
	public string Content
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public DesignerRegionCollection Regions
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Visible
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	[System.MonoNotSupported("")]
	public ViewRendering(string content, DesignerRegionCollection regions)
	{
		throw new NotImplementedException();
	}

	public ViewRendering(string content, DesignerRegionCollection regions, bool visible)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
