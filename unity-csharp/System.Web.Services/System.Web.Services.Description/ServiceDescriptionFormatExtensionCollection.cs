using System.Collections;
using System.Xml;

namespace System.Web.Services.Description;

public sealed class ServiceDescriptionFormatExtensionCollection : ServiceDescriptionBaseCollection
{
	private ArrayList handledElements;

	public object this[int index]
	{
		get
		{
			return List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public ServiceDescriptionFormatExtensionCollection(object parent)
		: base(parent)
	{
	}

	public int Add(object extension)
	{
		return List.Add(extension);
	}

	public void Insert(int index, object extension)
	{
		List.Insert(index, extension);
	}

	public int IndexOf(object extension)
	{
		return List.IndexOf(extension);
	}

	public bool Contains(object extension)
	{
		return List.Contains(extension);
	}

	public void Remove(object extension)
	{
		List.Remove(extension);
	}

	public void CopyTo(object[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public object Find(Type type)
	{
		for (int i = 0; i < List.Count; i++)
		{
			object obj = List[i];
			if (type.IsAssignableFrom(obj.GetType()))
			{
				((ServiceDescriptionFormatExtension)obj).Handled = true;
				return obj;
			}
		}
		return null;
	}

	public object[] FindAll(Type type)
	{
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < List.Count; i++)
		{
			object obj = List[i];
			if (type.IsAssignableFrom(obj.GetType()))
			{
				((ServiceDescriptionFormatExtension)obj).Handled = true;
				arrayList.Add(obj);
			}
		}
		return (object[])arrayList.ToArray(type);
	}

	public XmlElement Find(string name, string ns)
	{
		for (int i = 0; i < List.Count; i++)
		{
			if (List[i] is XmlElement xmlElement && xmlElement.LocalName == name && xmlElement.NamespaceURI == ns)
			{
				SetHandled(xmlElement);
				return xmlElement;
			}
		}
		return null;
	}

	public XmlElement[] FindAll(string name, string ns)
	{
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < List.Count; i++)
		{
			if (List[i] is XmlElement xmlElement && xmlElement.LocalName == name && xmlElement.NamespaceURI == ns)
			{
				SetHandled(xmlElement);
				arrayList.Add(xmlElement);
			}
		}
		return (XmlElement[])arrayList.ToArray(typeof(XmlElement));
	}

	private void SetHandled(XmlElement element)
	{
		if (handledElements == null)
		{
			handledElements = new ArrayList();
		}
		if (!handledElements.Contains(element))
		{
			handledElements.Add(element);
		}
	}

	public bool IsHandled(object item)
	{
		if (item is XmlElement)
		{
			return IsHandled((XmlElement)item);
		}
		return ((ServiceDescriptionFormatExtension)item).Handled;
	}

	public bool IsRequired(object item)
	{
		if (item is XmlElement)
		{
			return IsRequired((XmlElement)item);
		}
		return ((ServiceDescriptionFormatExtension)item).Required;
	}

	private bool IsHandled(XmlElement element)
	{
		if (handledElements == null)
		{
			return false;
		}
		return handledElements.Contains(element);
	}

	private bool IsRequired(XmlElement element)
	{
		XmlAttribute xmlAttribute = element.Attributes["required", "http://schemas.xmlsoap.org/wsdl/"];
		if (xmlAttribute == null || xmlAttribute.Value == null)
		{
			xmlAttribute = element.Attributes["required"];
			if (xmlAttribute == null || xmlAttribute.Value == null)
			{
				return false;
			}
		}
		return XmlConvert.ToBoolean(xmlAttribute.Value);
	}

	protected override void SetParent(object value, object parent)
	{
		if (value is ServiceDescriptionFormatExtension)
		{
			((ServiceDescriptionFormatExtension)value).SetParent(parent);
		}
	}

	protected override void OnValidate(object value)
	{
		if (!(value is XmlElement) && !(value is ServiceDescriptionFormatExtension))
		{
			throw new ArgumentException(Res.GetString("OnlyXmlElementsOrTypesDerivingFromServiceDescriptionFormatExtension0"), "value");
		}
		base.OnValidate(value);
	}
}
