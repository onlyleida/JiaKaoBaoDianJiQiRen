using System.Collections.Specialized;
using System.IO;
using System.Runtime.CompilerServices;
using System.Security.Authentication.ExtendedProtection;
using System.Security.Permissions;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Web.Routing;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HttpRequestWrapper : HttpRequestBase
{
	private HttpRequest w;

	public override string[] AcceptTypes => w.AcceptTypes;

	public override string AnonymousID => w.AnonymousID;

	public override string ApplicationPath => w.ApplicationPath;

	public override string AppRelativeCurrentExecutionFilePath => w.AppRelativeCurrentExecutionFilePath;

	public override HttpBrowserCapabilitiesBase Browser => new HttpBrowserCapabilitiesWrapper(w.Browser);

	public override HttpClientCertificate ClientCertificate => w.ClientCertificate;

	public override Encoding ContentEncoding
	{
		get
		{
			return w.ContentEncoding;
		}
		set
		{
			w.ContentEncoding = value;
		}
	}

	public override int ContentLength => w.ContentLength;

	public override string ContentType
	{
		get
		{
			return w.ContentType;
		}
		set
		{
			w.ContentType = value;
		}
	}

	public override HttpCookieCollection Cookies => w.Cookies;

	public override string CurrentExecutionFilePath => w.CurrentExecutionFilePath;

	public override string FilePath => w.FilePath;

	public override HttpFileCollectionBase Files => new HttpFileCollectionWrapper(w.Files);

	public override Stream Filter
	{
		get
		{
			return w.Filter;
		}
		set
		{
			w.Filter = value;
		}
	}

	public override NameValueCollection Form => w.Form;

	public override NameValueCollection Headers => w.Headers;

	public override string HttpMethod => w.HttpMethod;

	public override ChannelBinding HttpChannelBinding => w.HttpChannelBinding;

	public override Stream InputStream => w.InputStream;

	public override bool IsAuthenticated => w.IsAuthenticated;

	public override bool IsLocal => w.IsLocal;

	public override bool IsSecureConnection => w.IsSecureConnection;

	public override string this[string key] => w[key];

	public override WindowsIdentity LogonUserIdentity => w.LogonUserIdentity;

	public override NameValueCollection Params => w.Params;

	public override string Path => w.Path;

	public override string PathInfo => w.PathInfo;

	public override string PhysicalApplicationPath => w.PhysicalApplicationPath;

	public override string PhysicalPath => w.PhysicalPath;

	public override NameValueCollection QueryString => w.QueryString;

	public override string RawUrl => w.RawUrl;

	public override string RequestType
	{
		get
		{
			return w.RequestType;
		}
		set
		{
			w.RequestType = value;
		}
	}

	public override RequestContext RequestContext
	{
		get
		{
			return w.RequestContext;
		}
		set
		{
			w.RequestContext = value;
		}
	}

	public override NameValueCollection ServerVariables => w.ServerVariables;

	public override CancellationToken TimedOutToken => w.TimedOutToken;

	public override int TotalBytes => w.TotalBytes;

	public override UnvalidatedRequestValuesBase Unvalidated => new UnvalidatedRequestValuesWrapper(w.Unvalidated);

	public override ReadEntityBodyMode ReadEntityBodyMode => ReadEntityBodyMode.Classic;

	public override Uri Url => w.Url;

	public override Uri UrlReferrer => w.UrlReferrer;

	public override string UserAgent => w.UserAgent;

	public override string UserHostAddress => w.UserHostAddress;

	public override string UserHostName => w.UserHostName;

	public override string[] UserLanguages => w.UserLanguages;

	public HttpRequestWrapper(HttpRequest httpRequest)
	{
		if (httpRequest == null)
		{
			throw new ArgumentNullException("httpRequest");
		}
		w = httpRequest;
	}

	public override Stream GetBufferedInputStream()
	{
		return w.GetBufferedInputStream();
	}

	public override Stream GetBufferlessInputStream()
	{
		return w.GetBufferlessInputStream();
	}

	public override Stream GetBufferlessInputStream(bool disableMaxRequestLength)
	{
		return w.GetBufferlessInputStream(disableMaxRequestLength);
	}

	public override void Abort()
	{
		w.WorkerRequest.CloseConnection();
	}

	public override byte[] BinaryRead(int count)
	{
		return w.BinaryRead(count);
	}

	public override int[] MapImageCoordinates(string imageFieldName)
	{
		return w.MapImageCoordinates(imageFieldName);
	}

	public override string MapPath(string virtualPath)
	{
		return w.MapPath(virtualPath);
	}

	public override string MapPath(string virtualPath, string baseVirtualDir, bool allowCrossAppMapping)
	{
		return w.MapPath(virtualPath, baseVirtualDir, allowCrossAppMapping);
	}

	public override double[] MapRawImageCoordinates(string imageFieldName)
	{
		return w.MapRawImageCoordinates(imageFieldName);
	}

	public override void SaveAs(string filename, bool includeHeaders)
	{
		w.SaveAs(filename, includeHeaders);
	}

	public override void ValidateInput()
	{
		w.ValidateInput();
	}
}
