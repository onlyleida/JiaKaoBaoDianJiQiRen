using System.Collections;
using System.Collections.Specialized;
using System.Runtime.CompilerServices;
using System.Web.SessionState;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class HttpSessionStateWrapper : HttpSessionStateBase
{
	private readonly HttpSessionState _session;

	public override int CodePage
	{
		get
		{
			return _session.CodePage;
		}
		set
		{
			_session.CodePage = value;
		}
	}

	public override HttpSessionStateBase Contents => this;

	public override HttpCookieMode CookieMode => _session.CookieMode;

	public override bool IsCookieless => _session.IsCookieless;

	public override bool IsNewSession => _session.IsNewSession;

	public override bool IsReadOnly => _session.IsReadOnly;

	public override NameObjectCollectionBase.KeysCollection Keys => _session.Keys;

	public override int LCID
	{
		get
		{
			return _session.LCID;
		}
		set
		{
			_session.LCID = value;
		}
	}

	public override SessionStateMode Mode => _session.Mode;

	public override string SessionID => _session.SessionID;

	public override HttpStaticObjectsCollectionBase StaticObjects => new HttpStaticObjectsCollectionWrapper(_session.StaticObjects);

	public override int Timeout
	{
		get
		{
			return _session.Timeout;
		}
		set
		{
			_session.Timeout = value;
		}
	}

	public override object this[int index]
	{
		get
		{
			return _session[index];
		}
		set
		{
			_session[index] = value;
		}
	}

	public override object this[string name]
	{
		get
		{
			return _session[name];
		}
		set
		{
			_session[name] = value;
		}
	}

	public override int Count => _session.Count;

	public override bool IsSynchronized => _session.IsSynchronized;

	public override object SyncRoot => _session.SyncRoot;

	public HttpSessionStateWrapper(HttpSessionState httpSessionState)
	{
		if (httpSessionState == null)
		{
			throw new ArgumentNullException("httpSessionState");
		}
		_session = httpSessionState;
	}

	public override void Abandon()
	{
		_session.Abandon();
	}

	public override void Add(string name, object value)
	{
		_session.Add(name, value);
	}

	public override void Clear()
	{
		_session.Clear();
	}

	public override void Remove(string name)
	{
		_session.Remove(name);
	}

	public override void RemoveAll()
	{
		_session.RemoveAll();
	}

	public override void RemoveAt(int index)
	{
		_session.RemoveAt(index);
	}

	public override void CopyTo(Array array, int index)
	{
		_session.CopyTo(array, index);
	}

	public override IEnumerator GetEnumerator()
	{
		return _session.GetEnumerator();
	}
}
