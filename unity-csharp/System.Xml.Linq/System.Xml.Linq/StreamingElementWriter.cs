using System.Collections;
using System.Collections.Generic;

namespace System.Xml.Linq;

internal struct StreamingElementWriter(XmlWriter w)
{
	private XmlWriter writer = w;

	private XStreamingElement element = null;

	private List<XAttribute> attributes = new List<XAttribute>();

	private NamespaceResolver resolver = default;

	private void FlushElement()
	{
		if (element == null)
		{
			return;
		}
		PushElement();
		XNamespace xNamespace = element.Name.Namespace;
		writer.WriteStartElement(GetPrefixOfNamespace(xNamespace, allowDefaultNamespace: true), element.Name.LocalName, xNamespace.NamespaceName);
		foreach (XAttribute attribute in attributes)
		{
			xNamespace = attribute.Name.Namespace;
			string localName = attribute.Name.LocalName;
			string namespaceName = xNamespace.NamespaceName;
			writer.WriteAttributeString(GetPrefixOfNamespace(xNamespace, allowDefaultNamespace: false), localName, (namespaceName.Length == 0 && localName == "xmlns") ? "http://www.w3.org/2000/xmlns/" : namespaceName, attribute.Value);
		}
		element = null;
		attributes.Clear();
	}

	private string GetPrefixOfNamespace(XNamespace ns, bool allowDefaultNamespace)
	{
		string namespaceName = ns.NamespaceName;
		if (namespaceName.Length == 0)
		{
			return string.Empty;
		}
		string prefixOfNamespace = resolver.GetPrefixOfNamespace(ns, allowDefaultNamespace);
		if (prefixOfNamespace != null)
		{
			return prefixOfNamespace;
		}
		if ((object)namespaceName == "http://www.w3.org/XML/1998/namespace")
		{
			return "xml";
		}
		if ((object)namespaceName == "http://www.w3.org/2000/xmlns/")
		{
			return "xmlns";
		}
		return null;
	}

	private void PushElement()
	{
		resolver.PushScope();
		foreach (XAttribute attribute in attributes)
		{
			if (attribute.IsNamespaceDeclaration)
			{
				resolver.Add((attribute.Name.NamespaceName.Length == 0) ? string.Empty : attribute.Name.LocalName, XNamespace.Get(attribute.Value));
			}
		}
	}

	private void Write(object content)
	{
		if (content == null)
		{
			return;
		}
		if (content is XNode n)
		{
			WriteNode(n);
			return;
		}
		if (content is string s)
		{
			WriteString(s);
			return;
		}
		if (content is XAttribute a)
		{
			WriteAttribute(a);
			return;
		}
		if (content is XStreamingElement e)
		{
			WriteStreamingElement(e);
			return;
		}
		if (content is object[] array)
		{
			object[] array2 = array;
			foreach (object content2 in array2)
			{
				Write(content2);
			}
			return;
		}
		if (content is IEnumerable enumerable)
		{
			{
				foreach (object item in enumerable)
				{
					Write(item);
				}
				return;
			}
		}
		WriteString(XContainer.GetStringValue(content));
	}

	private void WriteAttribute(XAttribute a)
	{
		if (element == null)
		{
			throw new InvalidOperationException(Res.GetString("InvalidOperation_WriteAttribute"));
		}
		attributes.Add(a);
	}

	private void WriteNode(XNode n)
	{
		FlushElement();
		n.WriteTo(writer);
	}

	internal void WriteStreamingElement(XStreamingElement e)
	{
		FlushElement();
		element = e;
		Write(e.content);
		bool flag = element == null;
		FlushElement();
		if (flag)
		{
			writer.WriteFullEndElement();
		}
		else
		{
			writer.WriteEndElement();
		}
		resolver.PopScope();
	}

	private void WriteString(string s)
	{
		FlushElement();
		writer.WriteString(s);
	}
}
