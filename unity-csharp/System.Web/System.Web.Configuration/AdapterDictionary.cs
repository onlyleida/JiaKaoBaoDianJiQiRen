using System.Collections.Specialized;

namespace System.Web.Configuration;

[Serializable]
public class AdapterDictionary : OrderedDictionary
{
	public string this[string key]
	{
		get
		{
			return (string)base[key];
		}
		set
		{
			base[key] = value;
		}
	}
}
