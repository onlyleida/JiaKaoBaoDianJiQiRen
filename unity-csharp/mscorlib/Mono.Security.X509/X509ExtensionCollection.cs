using System;
using System.Collections;

namespace Mono.Security.X509;

internal sealed class X509ExtensionCollection : CollectionBase, IEnumerable
{
	private bool readOnly;

	public X509Extension this[int index] => (X509Extension)InnerList[index];

	public X509Extension this[string oid]
	{
		get
		{
			int num = IndexOf(oid);
			if (num == -1)
			{
				return null;
			}
			return (X509Extension)InnerList[num];
		}
	}

	public X509ExtensionCollection()
	{
	}

	public X509ExtensionCollection(ASN1 asn1)
		: this()
	{
		readOnly = true;
		if (asn1 != null)
		{
			if (asn1.Tag != 48)
			{
				throw new Exception("Invalid extensions format");
			}
			for (int i = 0; i < asn1.Count; i++)
			{
				X509Extension value = new X509Extension(asn1[i]);
				InnerList.Add(value);
			}
		}
	}

	public int Add(X509Extension extension)
	{
		if (extension == null)
		{
			throw new ArgumentNullException("extension");
		}
		if (readOnly)
		{
			throw new NotSupportedException("Extensions are read only");
		}
		return InnerList.Add(extension);
	}

	public void AddRange(X509Extension[] extension)
	{
		if (extension == null)
		{
			throw new ArgumentNullException("extension");
		}
		if (readOnly)
		{
			throw new NotSupportedException("Extensions are read only");
		}
		for (int i = 0; i < extension.Length; i++)
		{
			InnerList.Add(extension[i]);
		}
	}

	public void AddRange(X509ExtensionCollection collection)
	{
		if (collection == null)
		{
			throw new ArgumentNullException("collection");
		}
		if (readOnly)
		{
			throw new NotSupportedException("Extensions are read only");
		}
		for (int i = 0; i < collection.InnerList.Count; i++)
		{
			InnerList.Add(collection[i]);
		}
	}

	public bool Contains(X509Extension extension)
	{
		return IndexOf(extension) != -1;
	}

	public bool Contains(string oid)
	{
		return IndexOf(oid) != -1;
	}

	public void CopyTo(X509Extension[] extensions, int index)
	{
		if (extensions == null)
		{
			throw new ArgumentNullException("extensions");
		}
		InnerList.CopyTo(extensions, index);
	}

	public int IndexOf(X509Extension extension)
	{
		if (extension == null)
		{
			throw new ArgumentNullException("extension");
		}
		for (int i = 0; i < InnerList.Count; i++)
		{
			if (((X509Extension)InnerList[i]).Equals(extension))
			{
				return i;
			}
		}
		return -1;
	}

	public int IndexOf(string oid)
	{
		if (oid == null)
		{
			throw new ArgumentNullException("oid");
		}
		for (int i = 0; i < InnerList.Count; i++)
		{
			if (((X509Extension)InnerList[i]).Oid == oid)
			{
				return i;
			}
		}
		return -1;
	}

	public void Insert(int index, X509Extension extension)
	{
		if (extension == null)
		{
			throw new ArgumentNullException("extension");
		}
		InnerList.Insert(index, extension);
	}

	public void Remove(X509Extension extension)
	{
		if (extension == null)
		{
			throw new ArgumentNullException("extension");
		}
		InnerList.Remove(extension);
	}

	public void Remove(string oid)
	{
		if (oid == null)
		{
			throw new ArgumentNullException("oid");
		}
		int num = IndexOf(oid);
		if (num != -1)
		{
			InnerList.RemoveAt(num);
		}
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return InnerList.GetEnumerator();
	}

	public byte[] GetBytes()
	{
		if (InnerList.Count < 1)
		{
			return null;
		}
		ASN1 aSN = new ASN1(48);
		for (int i = 0; i < InnerList.Count; i++)
		{
			X509Extension x509Extension = (X509Extension)InnerList[i];
			aSN.Add(x509Extension.ASN1);
		}
		return aSN.GetBytes();
	}
}
