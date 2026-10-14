using System.Collections;
using System.Collections.Specialized;
using System.Security.Permissions;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpCookieCollection : NameObjectCollectionBase
{
	private bool auto_fill;

	public HttpCookie this[int index] => (HttpCookie)BaseGet(index);

	public HttpCookie this[string name]
	{
		get
		{
			HttpCookie httpCookie = (HttpCookie)BaseGet(name);
			if (!IsReadOnly && auto_fill && httpCookie == null)
			{
				httpCookie = new HttpCookie(name);
				BaseAdd(name, httpCookie);
			}
			return httpCookie;
		}
	}

	public string[] AllKeys
	{
		get
		{
			string[] array = new string[Keys.Count];
			((ICollection)Keys).CopyTo((Array)array, 0);
			return array;
		}
	}

	[Obsolete("Don't use this constructor, use the (bool, bool) one, as it's more clear what it does")]
	internal HttpCookieCollection(HttpResponse Response, bool ReadOnly)
		: base(StringComparer.OrdinalIgnoreCase)
	{
		auto_fill = Response != null;
		IsReadOnly = ReadOnly;
	}

	internal HttpCookieCollection(bool auto_fill, bool read_only)
		: base(StringComparer.OrdinalIgnoreCase)
	{
		this.auto_fill = auto_fill;
		IsReadOnly = read_only;
	}

	internal HttpCookieCollection(string cookies)
		: base(StringComparer.OrdinalIgnoreCase)
	{
		if (string.IsNullOrEmpty(cookies))
		{
			return;
		}
		string[] array = cookies.Split(';');
		foreach (string text in array)
		{
			int num = text.IndexOf('=');
			if (num != -1)
			{
				string text2 = text.Substring(0, num);
				string text3 = text.Substring(num + 1);
				Add(new HttpCookie(text2.Trim(), text3.Trim()));
			}
		}
	}

	public HttpCookieCollection()
		: base(StringComparer.OrdinalIgnoreCase)
	{
	}

	public void Add(HttpCookie cookie)
	{
		BaseAdd(cookie.Name, cookie);
	}

	public void Clear()
	{
		BaseClear();
	}

	public void CopyTo(Array dest, int index)
	{
		BaseGetAllValues().CopyTo(dest, index);
	}

	public string GetKey(int index)
	{
		return ((HttpCookie)BaseGet(index))?.Name;
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void Set(HttpCookie cookie)
	{
		BaseSet(cookie.Name, cookie);
	}

	public HttpCookie Get(int index)
	{
		return (HttpCookie)BaseGet(index);
	}

	public HttpCookie Get(string name)
	{
		return this[name];
	}
}
