using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Serializable]
public sealed class SharedPersonalizationStateInfo : PersonalizationStateInfo
{
	public int CountOfPersonalizations
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int SizeOfPersonalizations
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public SharedPersonalizationStateInfo(string path, DateTime lastUpdatedDate, int size, int sizeOfPersonalizations, int countOfPersonalizations)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
