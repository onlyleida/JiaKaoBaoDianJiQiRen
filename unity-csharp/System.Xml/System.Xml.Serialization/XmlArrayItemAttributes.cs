using System.Collections;

namespace System.Xml.Serialization;

public class XmlArrayItemAttributes : CollectionBase
{
	public XmlArrayItemAttribute this[int index]
	{
		get
		{
			return (XmlArrayItemAttribute)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(XmlArrayItemAttribute attribute)
	{
		return List.Add(attribute);
	}

	public void Insert(int index, XmlArrayItemAttribute attribute)
	{
		List.Insert(index, attribute);
	}

	public int IndexOf(XmlArrayItemAttribute attribute)
	{
		return List.IndexOf(attribute);
	}

	public bool Contains(XmlArrayItemAttribute attribute)
	{
		return List.Contains(attribute);
	}

	public void Remove(XmlArrayItemAttribute attribute)
	{
		List.Remove(attribute);
	}

	public void CopyTo(XmlArrayItemAttribute[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
