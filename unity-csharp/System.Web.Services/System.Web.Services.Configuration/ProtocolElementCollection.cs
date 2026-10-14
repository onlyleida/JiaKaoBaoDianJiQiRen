using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;

namespace System.Web.Services.Configuration;

[ConfigurationCollection(typeof(ProtocolElement))]
public sealed class ProtocolElementCollection : ConfigurationElementCollection
{
	public ProtocolElement this[object key]
	{
		get
		{
			if (key == null)
			{
				throw new ArgumentNullException("key");
			}
			return ((ProtocolElement)BaseGet(key)) ?? throw new KeyNotFoundException(string.Format(CultureInfo.InvariantCulture, Res.GetString("ConfigKeyNotFoundInElementCollection"), key.ToString()));
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

	public ProtocolElement this[int index]
	{
		get
		{
			return (ProtocolElement)BaseGet(index);
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

	public void Add(ProtocolElement element)
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
		return new ProtocolElement();
	}

	public void CopyTo(ProtocolElement[] array, int index)
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
		return ((ProtocolElement)element).Name.ToString();
	}

	public int IndexOf(ProtocolElement element)
	{
		if (element == null)
		{
			throw new ArgumentNullException("element");
		}
		return BaseIndexOf(element);
	}

	public void Remove(ProtocolElement element)
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
		ProtocolElement element = new ProtocolElement(WebServiceProtocols.HttpSoap12);
		ProtocolElement element2 = new ProtocolElement(WebServiceProtocols.HttpSoap);
		ProtocolElement element3 = new ProtocolElement(WebServiceProtocols.HttpPostLocalhost);
		ProtocolElement element4 = new ProtocolElement(WebServiceProtocols.Documentation);
		Add(element);
		Add(element2);
		Add(element3);
		Add(element4);
	}
}
