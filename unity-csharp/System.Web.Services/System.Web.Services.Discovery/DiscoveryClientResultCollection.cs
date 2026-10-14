using System.Collections;

namespace System.Web.Services.Discovery;

public sealed class DiscoveryClientResultCollection : CollectionBase
{
	public DiscoveryClientResult this[int i]
	{
		get
		{
			return (DiscoveryClientResult)List[i];
		}
		set
		{
			List[i] = value;
		}
	}

	public int Add(DiscoveryClientResult value)
	{
		return List.Add(value);
	}

	public bool Contains(DiscoveryClientResult value)
	{
		return List.Contains(value);
	}

	public void Remove(DiscoveryClientResult value)
	{
		List.Remove(value);
	}
}
