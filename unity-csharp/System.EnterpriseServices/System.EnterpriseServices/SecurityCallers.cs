using System.Collections;

namespace System.EnterpriseServices;

public sealed class SecurityCallers : IEnumerable
{
	public int Count
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	public SecurityIdentity this[int idx]
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	internal SecurityCallers()
	{
	}

	internal SecurityCallers(ISecurityCallersColl collection)
	{
	}

	[MonoTODO]
	public IEnumerator GetEnumerator()
	{
		throw new NotImplementedException();
	}
}
