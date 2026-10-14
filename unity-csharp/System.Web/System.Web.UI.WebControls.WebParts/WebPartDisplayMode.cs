using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class WebPartDisplayMode
{
	public virtual bool AllowPageDesign
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual bool AssociatedWithToolZone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual bool RequiresPersonalization
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual bool ShowHiddenWebParts
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected WebPartDisplayMode(string name)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual bool IsEnabled(WebPartManager webPartManager)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
