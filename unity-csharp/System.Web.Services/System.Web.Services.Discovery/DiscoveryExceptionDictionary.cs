using System.Collections;

namespace System.Web.Services.Discovery;

public sealed class DiscoveryExceptionDictionary : DictionaryBase
{
	public Exception this[string url]
	{
		get
		{
			return (Exception)Dictionary[url];
		}
		set
		{
			Dictionary[url] = value;
		}
	}

	public ICollection Keys => Dictionary.Keys;

	public ICollection Values => Dictionary.Values;

	public void Add(string url, Exception value)
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
