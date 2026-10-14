using System.Collections;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

public class AdamRoleCollection : ReadOnlyCollectionBase
{
	public AdamRole this[int index]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal AdamRoleCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool Contains(AdamRole role)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(AdamRole[] roles, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(AdamRole role)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
