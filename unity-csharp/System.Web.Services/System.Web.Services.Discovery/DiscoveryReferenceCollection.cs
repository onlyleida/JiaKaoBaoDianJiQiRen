using System.Collections;

namespace System.Web.Services.Discovery;

public sealed class DiscoveryReferenceCollection : CollectionBase
{
	public DiscoveryReference this[int i]
	{
		get
		{
			return (DiscoveryReference)List[i];
		}
		set
		{
			List[i] = value;
		}
	}

	public int Add(DiscoveryReference value)
	{
		return List.Add(value);
	}

	public bool Contains(DiscoveryReference value)
	{
		return List.Contains(value);
	}

	public void Remove(DiscoveryReference value)
	{
		List.Remove(value);
	}
}
