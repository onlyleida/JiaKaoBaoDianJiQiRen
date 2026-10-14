using System.Collections;

namespace System.Web.Services.Discovery;

public sealed class DiscoveryClientReferenceCollection : DictionaryBase
{
	public DiscoveryReference this[string url]
	{
		get
		{
			return (DiscoveryReference)Dictionary[url];
		}
		set
		{
			Dictionary[url] = value;
		}
	}

	public ICollection Keys => Dictionary.Keys;

	public ICollection Values => Dictionary.Values;

	public void Add(DiscoveryReference value)
	{
		Add(value.Url, value);
	}

	public void Add(string url, DiscoveryReference value)
	{
		Dictionary.Add(url, value);
	}

	public bool Contains(string url)
	{
		return Dictionary.Contains(url);
	}

	public void Remove(string url)
	{
		Dictionary.Remove(url);
	}
}
