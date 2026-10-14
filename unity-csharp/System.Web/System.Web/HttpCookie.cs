using System.Collections.Specialized;
using System.Runtime.CompilerServices;
using System.Security.Permissions;
using System.Text;
using System.Web.Configuration;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpCookie
{
	[Serializable]
	private sealed class CookieNVC : NameValueCollection
	{
		public CookieNVC()
			: base(StringComparer.OrdinalIgnoreCase)
		{
		}

		public override string ToString()
		{
			StringBuilder stringBuilder = new StringBuilder("");
			bool flag = true;
			foreach (string key in Keys)
			{
				if (!flag)
				{
					stringBuilder.Append("&");
				}
				string[] array = GetValues(key);
				if (array == null)
				{
					array = new string[1] { string.Empty };
				}
				bool flag2 = true;
				string[] array2 = array;
				foreach (string text2 in array2)
				{
					if (!flag2)
					{
						stringBuilder.Append("&");
					}
					if (key != null && key.Length > 0)
					{
						stringBuilder.Append(HttpUtility.UrlEncode(key));
						stringBuilder.Append("=");
					}
					if (text2 != null && text2.Length > 0)
					{
						stringBuilder.Append(HttpUtility.UrlEncode(text2));
					}
					flag2 = false;
				}
				flag = false;
			}
			return stringBuilder.ToString();
		}

		public override void Set(string name, string value)
		{
			if (IsReadOnly)
			{
				throw new NotSupportedException("Collection is read-only");
			}
			if (name == null)
			{
				Clear();
				name = string.Empty;
			}
			base.Set(name, value);
		}
	}

	private string path = "/";

	private string domain;

	private DateTime expires = DateTime.MinValue;

	private string name;

	private CookieFlags flags;

	private NameValueCollection values;

	public string Domain
	{
		get
		{
			return domain;
		}
		set
		{
			domain = value;
		}
	}

	public DateTime Expires
	{
		get
		{
			return expires;
		}
		set
		{
			expires = value;
		}
	}

	public bool HasKeys => values.HasKeys();

	public string this[string key]
	{
		get
		{
			return values[key];
		}
		set
		{
			values[key] = value;
		}
	}

	public string Name
	{
		get
		{
			return name;
		}
		set
		{
			name = value;
		}
	}

	public string Path
	{
		get
		{
			return path;
		}
		set
		{
			path = value;
		}
	}

	public bool Secure
	{
		get
		{
			return (flags & CookieFlags.Secure) == CookieFlags.Secure;
		}
		set
		{
			if (value)
			{
				flags |= CookieFlags.Secure;
			}
			else
			{
				flags &= ~CookieFlags.Secure;
			}
		}
	}

	public string Value
	{
		get
		{
			return HttpUtility.UrlDecode(values.ToString());
		}
		set
		{
			values.Clear();
			if (value == null || !(value != ""))
			{
				return;
			}
			string[] array = value.Split('&');
			foreach (string text in array)
			{
				int num = text.IndexOf('=');
				if (num == -1)
				{
					values.Add(null, text);
					continue;
				}
				string text2 = text.Substring(0, num);
				string value2 = text.Substring(num + 1);
				values.Add(text2, value2);
			}
		}
	}

	public NameValueCollection Values => values;

	public bool HttpOnly
	{
		get
		{
			return (flags & CookieFlags.HttpOnly) == CookieFlags.HttpOnly;
		}
		set
		{
			if (value)
			{
				flags |= CookieFlags.HttpOnly;
			}
			else
			{
				flags &= ~CookieFlags.HttpOnly;
			}
		}
	}

	public bool Shareable
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	[Obsolete]
	internal HttpCookie(string name, string value, string path, DateTime expires)
	{
		this.name = name;
		values = new CookieNVC();
		Value = value;
		this.path = path;
		this.expires = expires;
	}

	public HttpCookie(string name)
	{
		this.name = name;
		values = new CookieNVC();
		Value = "";
		HttpCookiesSection httpCookiesSection = (HttpCookiesSection)WebConfigurationManager.GetSection("system.web/httpCookies");
		if (!string.IsNullOrWhiteSpace(httpCookiesSection.Domain))
		{
			domain = httpCookiesSection.Domain;
		}
		if (httpCookiesSection.HttpOnlyCookies)
		{
			flags |= CookieFlags.HttpOnly;
		}
		if (httpCookiesSection.RequireSSL)
		{
			flags |= CookieFlags.Secure;
		}
	}

	public HttpCookie(string name, string value)
		: this(name)
	{
		Value = value;
	}

	internal string GetCookieHeaderValue()
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append(name);
		stringBuilder.Append("=");
		stringBuilder.Append(Value);
		if (domain != null)
		{
			stringBuilder.Append("; domain=");
			stringBuilder.Append(domain);
		}
		if (path != null)
		{
			stringBuilder.Append("; path=");
			stringBuilder.Append(path);
		}
		if (expires != DateTime.MinValue)
		{
			stringBuilder.Append("; expires=");
			stringBuilder.Append(expires.ToUniversalTime().ToString("r"));
		}
		if ((flags & CookieFlags.Secure) != 0)
		{
			stringBuilder.Append("; secure");
		}
		if ((flags & CookieFlags.HttpOnly) != 0)
		{
			stringBuilder.Append("; HttpOnly");
		}
		return stringBuilder.ToString();
	}

	public static bool TryParse(string input, out HttpCookie result)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
