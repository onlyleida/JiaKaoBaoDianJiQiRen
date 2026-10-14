using System.Collections;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class AttributeCollection
{
	private StateBag bag;

	private CssStyleCollection styleCollection;

	internal const string StyleAttribute = "style";

	public int Count => bag.Count;

	public CssStyleCollection CssStyle
	{
		get
		{
			if (styleCollection == null)
			{
				styleCollection = new CssStyleCollection(bag);
			}
			return styleCollection;
		}
	}

	public string this[string key]
	{
		get
		{
			return bag[key] as string;
		}
		set
		{
			Add(key, value);
		}
	}

	public ICollection Keys => bag.Keys;

	public AttributeCollection(StateBag bag)
	{
		this.bag = bag;
	}

	public override bool Equals(object o)
	{
		if (!(o is AttributeCollection attributeCollection))
		{
			return false;
		}
		if (Count != attributeCollection.Count)
		{
			return false;
		}
		foreach (string key2 in Keys)
		{
			if (string.CompareOrdinal(key2, "style") != 0 && string.CompareOrdinal(attributeCollection[key2], this[key2]) == 0)
			{
				return false;
			}
		}
		if ((styleCollection == null && attributeCollection.styleCollection != null) || (styleCollection != null && attributeCollection.styleCollection == null))
		{
			return false;
		}
		if (styleCollection != null)
		{
			if (styleCollection.Count != attributeCollection.styleCollection.Count)
			{
				return false;
			}
			foreach (string key3 in styleCollection.Keys)
			{
				if (string.CompareOrdinal(styleCollection[key3], attributeCollection.styleCollection[key3]) == 0)
				{
					return false;
				}
			}
		}
		return true;
	}

	public override int GetHashCode()
	{
		int num = 0;
		foreach (string key2 in Keys)
		{
			if (!(key2 == "style"))
			{
				num ^= key2.GetHashCode();
				string text2 = this[key2];
				if (text2 != null)
				{
					num ^= text2.GetHashCode();
				}
			}
		}
		if (styleCollection != null)
		{
			foreach (string key3 in styleCollection.Keys)
			{
				num ^= styleCollection[key3].GetHashCode();
				string text3 = styleCollection[key3];
				if (text3 != null)
				{
					num ^= text3.GetHashCode();
				}
			}
		}
		return num;
	}

	public void Add(string key, string value)
	{
		if (string.Compare(key, "style", ignoreCase: true, Helpers.InvariantCulture) == 0)
		{
			CssStyle.Value = value;
		}
		else
		{
			bag.Add(key, value);
		}
	}

	public void AddAttributes(HtmlTextWriter writer)
	{
		foreach (string key in bag.Keys)
		{
			string value = bag[key] as string;
			writer.AddAttribute(key, value);
		}
	}

	public void Clear()
	{
		CssStyle.Clear();
		bag.Clear();
	}

	public void Remove(string key)
	{
		if (string.Compare(key, "style", ignoreCase: true, Helpers.InvariantCulture) == 0)
		{
			CssStyle.Clear();
		}
		else
		{
			bag.Remove(key);
		}
	}

	public void Render(HtmlTextWriter writer)
	{
		foreach (string key in bag.Keys)
		{
			if (bag[key] is string value)
			{
				writer.WriteAttribute(key, value, fEncode: true);
			}
		}
	}

	internal void CopyFrom(AttributeCollection attributeCollection)
	{
		if (attributeCollection == null || attributeCollection.Count == 0)
		{
			return;
		}
		foreach (string key in attributeCollection.bag.Keys)
		{
			Add(key, attributeCollection[key]);
		}
	}
}
