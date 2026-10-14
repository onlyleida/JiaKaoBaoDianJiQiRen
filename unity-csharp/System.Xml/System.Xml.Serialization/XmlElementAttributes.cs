using System.Collections;

namespace System.Xml.Serialization;

public class XmlElementAttributes : CollectionBase
{
	public XmlElementAttribute this[int index]
	{
		get
		{
			return (XmlElementAttribute)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(XmlElementAttribute attribute)
	{
		return List.Add(attribute);
	}

	public void Insert(int index, XmlElementAttribute attribute)
	{
		List.Insert(index, attribute);
	}

	public int IndexOf(XmlElementAttribute attribute)
	{
		return List.IndexOf(attribute);
	}

	public bool Contains(XmlElementAttribute attribute)
	{
		return List.Contains(attribute);
	}

	public void Remove(XmlElementAttribute attribute)
	{
		List.Remove(attribute);
	}

	public void CopyTo(XmlElementAttribute[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
