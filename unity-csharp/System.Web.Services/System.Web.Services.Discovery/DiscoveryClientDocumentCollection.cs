using System.Collections;

namespace System.Web.Services.Discovery;

public sealed class DiscoveryClientDocumentCollection : DictionaryBase
{
	public object this[string url]
	{
		get
		{
			return Dictionary[url];
		}
		set
		{
			Dictionary[url] = value;
		}
	}

	public ICollection Keys => Dictionary.Keys;

	public ICollection Values => Dictionary.Values;

	public void Add(string url, object value)
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
