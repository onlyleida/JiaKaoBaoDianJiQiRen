using System.Collections;
using System.Security.Permissions;
using System.Text;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpCacheVaryByParams
{
	private bool ignore_parms;

	private Hashtable parms;

	public bool IgnoreParams
	{
		get
		{
			return ignore_parms;
		}
		set
		{
			ignore_parms = value;
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
			return parms.Contains(header);
		}
		set
		{
			if (header == null)
			{
				throw new ArgumentNullException();
			}
			ignore_parms = false;
			if (value)
			{
				if (!parms.Contains(header))
				{
					parms.Add(header, true);
				}
				else
				{
					parms.Remove(header);
				}
			}
		}
	}

	public HttpCacheVaryByParams()
	{
		parms = new Hashtable(StringComparer.InvariantCultureIgnoreCase);
	}

	internal string[] GetParamNames()
	{
		string[] array = new string[parms.Count];
		parms.Keys.CopyTo(array, 0);
		return array;
	}

	internal string GetResponseHeaderValue()
	{
		StringBuilder stringBuilder = new StringBuilder();
		foreach (string key in parms.Keys)
		{
			stringBuilder.Append(key);
			stringBuilder.Append("; ");
		}
		if (stringBuilder.Length == 0)
		{
			return null;
		}
		return stringBuilder.ToString();
	}

	public string[] GetParams()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void SetParams(string[] parameters)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
