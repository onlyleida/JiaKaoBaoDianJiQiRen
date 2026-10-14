using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using Unity;

namespace System.Web.Configuration;

public class BrowserCapabilitiesFactoryBase
{
	protected IDictionary BrowserElements
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected IDictionary MatchedHeaders
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public BrowserCapabilitiesFactoryBase()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void ConfigureBrowserCapabilities(NameValueCollection headers, HttpBrowserCapabilities browserCaps)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void ConfigureCustomCapabilities(NameValueCollection headers, HttpBrowserCapabilities browserCaps)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected bool IsBrowserUnknown(HttpCapabilitiesBase browserCaps)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void PopulateBrowserElements(IDictionary dictionary)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void PopulateMatchedHeaders(IDictionary dictionary)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
