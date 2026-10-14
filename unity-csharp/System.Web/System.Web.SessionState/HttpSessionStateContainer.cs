using System.Collections;
using System.Collections.Specialized;
using System.Globalization;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using Unity;

namespace System.Web.SessionState;

public class HttpSessionStateContainer : IHttpSessionState
{
	private string id;

	private HttpStaticObjectsCollection staticObjects;

	private int timeout;

	private bool newSession;

	private bool isCookieless;

	private SessionStateMode mode;

	private bool isReadOnly;

	internal bool abandoned;

	private ISessionStateItemCollection sessionItems;

	private HttpCookieMode cookieMode;

	public int CodePage
	{
		get
		{
			return HttpContext.Current?.Response.ContentEncoding.CodePage ?? Encoding.Default.CodePage;
		}
		set
		{
			HttpContext current = HttpContext.Current;
			if (current != null)
			{
				current.Response.ContentEncoding = Encoding.GetEncoding(value);
			}
		}
	}

	public HttpCookieMode CookieMode => cookieMode;

	public int Count
	{
		get
		{
			if (sessionItems != null)
			{
				return sessionItems.Count;
			}
			return 0;
		}
	}

	public bool IsAbandoned => abandoned;

	public bool IsCookieless => isCookieless;

	public bool IsNewSession => newSession;

	public bool IsReadOnly => isReadOnly;

	public bool IsSynchronized => false;

	object IHttpSessionState.this[int index]
	{
		get
		{
			if (sessionItems == null || sessionItems.Count == 0)
			{
				return null;
			}
			return sessionItems[index];
		}
		set
		{
			if (sessionItems != null)
			{
				sessionItems[index] = value;
			}
		}
	}

	object IHttpSessionState.this[string name]
	{
		get
		{
			if (sessionItems == null || sessionItems.Count == 0)
			{
				return null;
			}
			return sessionItems[name];
		}
		set
		{
			if (sessionItems != null)
			{
				sessionItems[name] = value;
			}
		}
	}

	NameObjectCollectionBase.KeysCollection IHttpSessionState.Keys
	{
		get
		{
			if (sessionItems != null)
			{
				return sessionItems.Keys;
			}
			return null;
		}
	}

	public int LCID
	{
		get
		{
			return Thread.CurrentThread.CurrentCulture.LCID;
		}
		set
		{
			Thread.CurrentThread.CurrentCulture = new CultureInfo(value);
		}
	}

	public SessionStateMode Mode => mode;

	public string SessionID => id;

	public HttpStaticObjectsCollection StaticObjects => staticObjects;

	public object SyncRoot => this;

	public int Timeout
	{
		get
		{
			return timeout;
		}
		set
		{
			if (value < 1)
			{
				throw new ArgumentException("The argument to SetTimeout must be greater than 0.");
			}
			timeout = value;
		}
	}

	// C# has no syntax for parameterized property 'Item'.
	public object get_Item(string name)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void set_Item(string name, object value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public NameObjectCollectionBase.KeysCollection Keys
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public HttpSessionStateContainer(string id, ISessionStateItemCollection sessionItems, HttpStaticObjectsCollection staticObjects, int timeout, bool newSession, HttpCookieMode cookieMode, SessionStateMode mode, bool isReadonly)
	{
		if (id == null)
		{
			throw new ArgumentNullException("id");
		}
		this.sessionItems = sessionItems;
		this.id = id;
		this.staticObjects = staticObjects;
		this.timeout = timeout;
		this.newSession = newSession;
		this.cookieMode = cookieMode;
		this.mode = mode;
		isReadOnly = isReadonly;
		isCookieless = cookieMode == HttpCookieMode.UseUri;
	}

	internal void SetNewSession(bool value)
	{
		newSession = value;
	}

	public void Abandon()
	{
		abandoned = true;
	}

	public void Add(string name, object value)
	{
		if (sessionItems != null)
		{
			sessionItems[name] = value;
		}
	}

	public void Clear()
	{
		if (sessionItems != null)
		{
			sessionItems.Clear();
		}
	}

	public void CopyTo(Array array, int index)
	{
		if (sessionItems != null)
		{
			NameObjectCollectionBase.KeysCollection keys = sessionItems.Keys;
			for (int i = 0; i < keys.Count; i++)
			{
				array.SetValue(keys.Get(i), i + index);
			}
		}
	}

	public IEnumerator GetEnumerator()
	{
		if (sessionItems == null)
		{
			return null;
		}
		return sessionItems.GetEnumerator();
	}

	public void Remove(string name)
	{
		if (sessionItems != null)
		{
			sessionItems.Remove(name);
		}
	}

	public void RemoveAll()
	{
		if (sessionItems != null)
		{
			sessionItems.Clear();
		}
	}

	public void RemoveAt(int index)
	{
		if (sessionItems != null)
		{
			sessionItems.RemoveAt(index);
		}
	}

	[SpecialName]
	public object get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SpecialName]
	public void set_Item(int index, object value)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
