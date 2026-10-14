using System.Collections;
using System.Collections.Specialized;
using System.Runtime.CompilerServices;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class HttpApplicationStateWrapper : HttpApplicationStateBase
{
	private HttpApplicationState _application;

	public override string[] AllKeys => _application.AllKeys;

	public override HttpApplicationStateBase Contents => this;

	public override int Count => _application.Count;

	public override bool IsSynchronized => ((ICollection)_application).IsSynchronized;

	public override KeysCollection Keys => _application.Keys;

	public override object SyncRoot => ((ICollection)_application).SyncRoot;

	public override object this[int index] => _application[index];

	public override object this[string name]
	{
		get
		{
			return _application[name];
		}
		set
		{
			_application[name] = value;
		}
	}

	public override HttpStaticObjectsCollectionBase StaticObjects => new HttpStaticObjectsCollectionWrapper(_application.StaticObjects);

	public HttpApplicationStateWrapper(HttpApplicationState httpApplicationState)
	{
		if (httpApplicationState == null)
		{
			throw new ArgumentNullException("httpApplicationState");
		}
		_application = httpApplicationState;
	}

	public override void Add(string name, object value)
	{
		_application.Add(name, value);
	}

	public override void Clear()
	{
		_application.Clear();
	}

	public override void CopyTo(Array array, int index)
	{
		((ICollection)_application).CopyTo(array, index);
	}

	public override object Get(int index)
	{
		return _application.Get(index);
	}

	public override object Get(string name)
	{
		return _application.Get(name);
	}

	public override IEnumerator GetEnumerator()
	{
		return ((IEnumerable)_application).GetEnumerator();
	}

	public override string GetKey(int index)
	{
		return _application.GetKey(index);
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		_application.GetObjectData(info, context);
	}

	public override void Lock()
	{
		_application.Lock();
	}

	public override void OnDeserialization(object sender)
	{
		_application.OnDeserialization(sender);
	}

	public override void Remove(string name)
	{
		_application.Remove(name);
	}

	public override void RemoveAll()
	{
		_application.RemoveAll();
	}

	public override void RemoveAt(int index)
	{
		_application.RemoveAt(index);
	}

	public override void Set(string name, object value)
	{
		_application.Set(name, value);
	}

	public override void UnLock()
	{
		_application.UnLock();
	}
}
