using System.Collections.Generic;
using System.Security.Permissions;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpCacheVaryByContentEncodings
{
	private Dictionary<string, bool> encodings;

	public bool this[string contentEncoding]
	{
		get
		{
			if (contentEncoding == null)
			{
				throw new ArgumentNullException("contentEncoding");
			}
			if (encodings.ContainsKey(contentEncoding))
			{
				return encodings[contentEncoding];
			}
			return false;
		}
		set
		{
			if (contentEncoding == null)
			{
				throw new ArgumentNullException("contentEncoding");
			}
			encodings[contentEncoding] = value;
		}
	}

	public HttpCacheVaryByContentEncodings()
	{
		encodings = new Dictionary<string, bool>();
	}

	public string[] GetContentEncodings()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void SetContentEncodings(string[] contentEncodings)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
