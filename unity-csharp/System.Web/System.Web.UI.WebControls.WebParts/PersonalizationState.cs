using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class PersonalizationState
{
	public bool IsDirty
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public abstract bool IsEmpty { get; }

	public WebPartManager WebPartManager
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected PersonalizationState(WebPartManager webPartManager)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract void ApplyWebPartManagerPersonalization();

	public abstract void ApplyWebPartPersonalization(WebPart webPart);

	public abstract void ExtractWebPartManagerPersonalization();

	public abstract void ExtractWebPartPersonalization(WebPart webPart);

	public abstract string GetAuthorizationFilter(string webPartID);

	protected void SetDirty()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract void SetWebPartDirty(WebPart webPart);

	public abstract void SetWebPartManagerDirty();

	protected void ValidateWebPart(WebPart webPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
