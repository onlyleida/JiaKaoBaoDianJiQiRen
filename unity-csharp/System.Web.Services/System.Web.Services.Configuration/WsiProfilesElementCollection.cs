using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;

namespace System.Web.Services.Configuration;

[ConfigurationCollection(typeof(WsiProfilesElement))]
public sealed class WsiProfilesElementCollection : ConfigurationElementCollection
{
	public WsiProfilesElement this[object key]
	{
		get
		{
			if (key == null)
			{
				throw new ArgumentNullException("key");
			}
			return ((WsiProfilesElement)BaseGet(key)) ?? throw new KeyNotFoundException(string.Format(CultureInfo.InvariantCulture, Res.GetString("ConfigKeyNotFoundInElementCollection"), key.ToString()));
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			if (key == null)
			{
				throw new ArgumentNullException("key");
			}
			if (GetElementKey(value).Equals(key))
			{
				if (BaseGet(key) != null)
				{
					BaseRemove(key);
				}
				Add(value);
				return;
			}
			throw new ArgumentException(string.Format(CultureInfo.InvariantCulture, Res.GetString("ConfigKeysDoNotMatch"), GetElementKey(value).ToString(), key.ToString()));
		}
	}

	public WsiProfilesElement this[int index]
	{
		get
		{
			return (WsiProfilesElement)BaseGet(index);
		}
		set
		{
			if (BaseGet(index) != null)
			{
				BaseRemoveAt(index);
			}
			BaseAdd(index, value);
		}
	}

	public void Add(WsiProfilesElement element)
	{
		if (element == null)
		{
			throw new ArgumentNullException("element");
		}
		BaseAdd(element);
	}

	public void Clear()
	{
		BaseClear();
	}

	public bool ContainsKey(object key)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		return BaseGet(key) != null;
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new WsiProfilesElement();
	}

	public void CopyTo(WsiProfilesElement[] array, int index)
	{
		if (array == null)
		{
			throw new ArgumentNullException("array");
		}
		((ICollection)this).CopyTo((Array)array, index);
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		if (element == null)
		{
			throw new ArgumentNullException("element");
		}
		return ((WsiProfilesElement)element).Name.ToString();
	}

	public int IndexOf(WsiProfilesElement element)
	{
		if (element == null)
		{
			throw new ArgumentNullException("element");
		}
		return BaseIndexOf(element);
	}

	public void Remove(WsiProfilesElement element)
	{
		if (element == null)
		{
			throw new ArgumentNullException("element");
		}
		BaseRemove(GetElementKey(element));
	}

	public void RemoveAt(object key)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		BaseRemove(key);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	internal void SetDefaults()
	{
		WsiProfilesElement element = new WsiProfilesElement(WsiProfiles.BasicProfile1_1);
		Add(element);
	}
}
