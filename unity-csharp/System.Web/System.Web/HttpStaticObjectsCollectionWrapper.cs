using System.Collections;
using System.IO;
using System.Runtime.CompilerServices;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class HttpStaticObjectsCollectionWrapper : HttpStaticObjectsCollectionBase
{
	private HttpStaticObjectsCollection _collection;

	public override int Count => _collection.Count;

	public override bool IsReadOnly => _collection.IsReadOnly;

	public override bool IsSynchronized => _collection.IsSynchronized;

	public override object this[string name] => _collection[name];

	public override bool NeverAccessed => _collection.NeverAccessed;

	public override object SyncRoot => _collection.SyncRoot;

	public HttpStaticObjectsCollectionWrapper(HttpStaticObjectsCollection httpStaticObjectsCollection)
	{
		if (httpStaticObjectsCollection == null)
		{
			throw new ArgumentNullException("httpStaticObjectsCollection");
		}
		_collection = httpStaticObjectsCollection;
	}

	public override void CopyTo(Array array, int index)
	{
		_collection.CopyTo(array, index);
	}

	public override IEnumerator GetEnumerator()
	{
		return _collection.GetEnumerator();
	}

	public override object GetObject(string name)
	{
		return _collection.GetObject(name);
	}

	public override void Serialize(BinaryWriter writer)
	{
		_collection.Serialize(writer);
	}
}
