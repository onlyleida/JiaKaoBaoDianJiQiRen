using System.Collections;

namespace System.Xml.Serialization;

public class XmlAnyElementAttributes : CollectionBase
{
	public XmlAnyElementAttribute this[int index]
	{
		get
		{
			return (XmlAnyElementAttribute)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(XmlAnyElementAttribute attribute)
	{
		return List.Add(attribute);
	}

	public void Insert(int index, XmlAnyElementAttribute attribute)
	{
		List.Insert(index, attribute);
	}

	public int IndexOf(XmlAnyElementAttribute attribute)
	{
		return List.IndexOf(attribute);
	}

	public bool Contains(XmlAnyElementAttribute attribute)
	{
		return List.Contains(attribute);
	}

	public void Remove(XmlAnyElementAttribute attribute)
	{
		List.Remove(attribute);
	}

	public void CopyTo(XmlAnyElementAttribute[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
