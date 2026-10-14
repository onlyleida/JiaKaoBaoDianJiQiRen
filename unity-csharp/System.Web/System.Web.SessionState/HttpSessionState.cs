using System.Collections;
using System.Collections.Specialized;
using System.Security.Permissions;
using Unity;

namespace System.Web.SessionState;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpSessionState : ICollection, IEnumerable
{
	private IHttpSessionState container;

	internal IHttpSessionState Container => container;

	public int CodePage
	{
		get
		{
			return container.CodePage;
		}
		set
		{
			container.CodePage = value;
		}
	}

	public HttpSessionState Contents => this;

	public HttpCookieMode CookieMode
	{
		get
		{
			if (IsCookieless)
			{
				return HttpCookieMode.UseUri;
			}
			return HttpCookieMode.UseCookies;
		}
	}

	public int Count => container.Count;

	public bool IsCookieless => container.IsCookieless;

	public bool IsNewSession => container.IsNewSession;

	public bool IsReadOnly => container.IsReadOnly;

	public bool IsSynchronized => container.IsSynchronized;

	public object this[string name]
	{
		get
		{
			return container[name];
		}
		set
		{
			container[name] = value;
		}
	}

	public object this[int index]
	{
		get
		{
			return container[index];
		}
		set
		{
			container[index] = value;
		}
	}

	public NameObjectCollectionBase.KeysCollection Keys => container.Keys;

	public int LCID
	{
		get
		{
			return container.LCID;
		}
		set
		{
			container.LCID = value;
		}
	}

	public SessionStateMode Mode => container.Mode;

	public string SessionID => container.SessionID;

	public HttpStaticObjectsCollection StaticObjects => container.StaticObjects;

	public object SyncRoot => container.SyncRoot;

	public int Timeout
	{
		get
		{
			return container.Timeout;
		}
		set
		{
			container.Timeout = value;
		}
	}

	internal HttpSessionState(IHttpSessionState container)
	{
		this.container = container;
	}

	public void Abandon()
	{
		container.Abandon();
	}

	public void Add(string name, object value)
	{
		container.Add(name, value);
	}

	public void Clear()
	{
		container.Clear();
	}

	public void CopyTo(Array array, int index)
	{
		container.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return container.GetEnumerator();
	}

	public void Remove(string name)
	{
		container.Remove(name);
	}

	public void RemoveAll()
	{
		container.Clear();
	}

	public void RemoveAt(int index)
	{
		container.RemoveAt(index);
	}

	internal HttpSessionState()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
