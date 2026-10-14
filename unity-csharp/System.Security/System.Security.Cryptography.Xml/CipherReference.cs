using System.Xml;

namespace System.Security.Cryptography.Xml;

public sealed class CipherReference : EncryptedReference
{
	private byte[] _cipherValue;

	internal byte[] CipherValue
	{
		get
		{
			if (!CacheValid)
			{
				return null;
			}
			return _cipherValue;
		}
		set
		{
			_cipherValue = value;
		}
	}

	public CipherReference()
	{
		ReferenceType = "CipherReference";
	}

	public CipherReference(string uri)
		: base(uri)
	{
		ReferenceType = "CipherReference";
	}

	public CipherReference(string uri, TransformChain transformChain)
		: base(uri, transformChain)
	{
		ReferenceType = "CipherReference";
	}

	public override XmlElement GetXml()
	{
		if (CacheValid)
		{
			return _cachedXml;
		}
		XmlDocument xmlDocument = new XmlDocument();
		xmlDocument.PreserveWhitespace = true;
		return GetXml(xmlDocument);
	}

	internal new XmlElement GetXml(XmlDocument document)
	{
		if (ReferenceType == null)
		{
			throw new CryptographicException("The Reference type must be set in an EncryptedReference object.");
		}
		XmlElement xmlElement = document.CreateElement(ReferenceType, "http://www.w3.org/2001/04/xmlenc#");
		if (!string.IsNullOrEmpty(Uri))
		{
			xmlElement.SetAttribute("URI", Uri);
		}
		if (TransformChain.Count > 0)
		{
			xmlElement.AppendChild(TransformChain.GetXml(document, "http://www.w3.org/2001/04/xmlenc#"));
		}
		return xmlElement;
	}

	public override void LoadXml(XmlElement value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		ReferenceType = value.LocalName;
		Uri = Utils.GetAttribute(value, "URI", "http://www.w3.org/2001/04/xmlenc#");
		XmlNamespaceManager xmlNamespaceManager = new XmlNamespaceManager(value.OwnerDocument.NameTable);
		xmlNamespaceManager.AddNamespace("enc", "http://www.w3.org/2001/04/xmlenc#");
		XmlNode xmlNode = value.SelectSingleNode("enc:Transforms", xmlNamespaceManager);
		if (xmlNode != null)
		{
			TransformChain.LoadXml(xmlNode as XmlElement);
		}
		_cachedXml = value;
	}
}
