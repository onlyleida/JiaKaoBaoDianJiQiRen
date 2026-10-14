using System.Collections;
using System.Security.Permissions;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpCacheVaryByHeaders
{
	private bool vary_by_unspecified;

	private bool vary_by_accept;

	private bool vary_by_user_agent;

	private bool vary_by_user_charset;

	private bool vary_by_user_language;

	private Hashtable fields;

	public bool AcceptTypes
	{
		get
		{
			return vary_by_accept;
		}
		set
		{
			vary_by_unspecified = false;
			vary_by_accept = value;
		}
	}

	public bool UserAgent
	{
		get
		{
			return vary_by_user_agent;
		}
		set
		{
			vary_by_unspecified = false;
			vary_by_user_agent = value;
		}
	}

	public bool UserCharSet
	{
		get
		{
			return vary_by_user_charset;
		}
		set
		{
			vary_by_unspecified = false;
			vary_by_user_charset = value;
		}
	}

	public bool UserLanguage
	{
		get
		{
			return vary_by_user_language;
		}
		set
		{
			vary_by_unspecified = false;
			vary_by_user_language = value;
		}
	}

	public bool this[string header]
	{
		get
		{
			if (header == null)
			{
				throw new ArgumentNullException();
			}
			return fields.Contains(header);
		}
		set
		{
			if (header == null)
			{
				throw new ArgumentNullException();
			}
			vary_by_unspecified = false;
			if (value)
			{
				if (!fields.Contains(header))
				{
					fields.Add(header, true);
				}
				else
				{
					fields.Remove(header);
				}
			}
		}
	}

	public HttpCacheVaryByHeaders()
	{
		fields = new Hashtable(StringComparer.InvariantCultureIgnoreCase);
	}

	internal string[] GetHeaderNames(bool omitVaryStar)
	{
		string[] array;
		if (vary_by_unspecified && !omitVaryStar)
		{
			array = new string[1] { "*" };
		}
		else
		{
			int num = (vary_by_accept ? 1 : 0) + (vary_by_user_agent ? 1 : 0) + (vary_by_user_charset ? 1 : 0) + (vary_by_user_language ? 1 : 0);
			array = new string[fields.Count + num];
			int num2 = 0;
			if (vary_by_accept)
			{
				array[num2++] = "Accept";
			}
			if (vary_by_user_agent)
			{
				array[num2++] = "User-Agent";
			}
			if (vary_by_user_charset)
			{
				array[num2++] = "Accept-Charset";
			}
			if (vary_by_user_language)
			{
				array[num2++] = "Accept-Language";
			}
			fields.Keys.CopyTo(array, num);
		}
		return array;
	}

	public void VaryByUnspecifiedParameters()
	{
		fields.Clear();
		vary_by_unspecified = (vary_by_accept = (vary_by_user_agent = (vary_by_user_charset = (vary_by_user_language = false))));
		vary_by_unspecified = true;
	}

	public string[] GetHeaders()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void SetHeaders(string[] headers)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
