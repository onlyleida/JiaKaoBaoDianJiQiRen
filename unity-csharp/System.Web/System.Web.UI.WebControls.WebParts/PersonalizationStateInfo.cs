using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Serializable]
public abstract class PersonalizationStateInfo
{
	public DateTime LastUpdatedDate
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string Path
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int Size
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal PersonalizationStateInfo()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
