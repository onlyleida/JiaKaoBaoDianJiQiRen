using System.Collections;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

public class AdamInstanceCollection : ReadOnlyCollectionBase
{
	public AdamInstance this[int index]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal AdamInstanceCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool Contains(AdamInstance adamInstance)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(AdamInstance[] adamInstances, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(AdamInstance adamInstance)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
