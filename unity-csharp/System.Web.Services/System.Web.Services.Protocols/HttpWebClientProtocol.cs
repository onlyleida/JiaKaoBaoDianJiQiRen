using System.Collections;
using System.ComponentModel;
using System.Net;
using System.Runtime.InteropServices;
using System.Security.Cryptography.X509Certificates;

namespace System.Web.Services.Protocols;

[ComVisible(true)]
public abstract class HttpWebClientProtocol : WebClientProtocol
{
	private bool allowAutoRedirect;

	private bool enableDecompression;

	private CookieContainer cookieJar;

	private X509CertificateCollection clientCertificates;

	private IWebProxy proxy;

	private static string UserAgentDefault = "Mozilla/4.0 (compatible; MSIE 6.0; MS Web Services Client Protocol " + Environment.Version.ToString() + ")";

	private string userAgent;

	private bool unsafeAuthenticatedConnectionSharing;

	[DefaultValue(false)]
	[WebServicesDescription("ClientProtocolAllowAutoRedirect")]
	public bool AllowAutoRedirect
	{
		get
		{
			return allowAutoRedirect;
		}
		set
		{
			allowAutoRedirect = value;
		}
	}

	[WebServicesDescription("ClientProtocolCookieContainer")]
	[DefaultValue(null)]
	public CookieContainer CookieContainer
	{
		get
		{
			return cookieJar;
		}
		set
		{
			cookieJar = value;
		}
	}

	[WebServicesDescription("ClientProtocolClientCertificates")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public X509CertificateCollection ClientCertificates
	{
		get
		{
			if (clientCertificates == null)
			{
				clientCertificates = new X509CertificateCollection();
			}
			return clientCertificates;
		}
	}

	[DefaultValue(false)]
	[WebServicesDescription("ClientProtocolEnableDecompression")]
	public bool EnableDecompression
	{
		get
		{
			return enableDecompression;
		}
		set
		{
			enableDecompression = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebServicesDescription("ClientProtocolUserAgent")]
	[Browsable(false)]
	public string UserAgent
	{
		get
		{
			if (userAgent != null)
			{
				return userAgent;
			}
			return string.Empty;
		}
		set
		{
			userAgent = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public IWebProxy Proxy
	{
		get
		{
			return proxy;
		}
		set
		{
			proxy = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool UnsafeAuthenticatedConnectionSharing
	{
		get
		{
			return unsafeAuthenticatedConnectionSharing;
		}
		set
		{
			unsafeAuthenticatedConnectionSharing = value;
		}
	}

	protected HttpWebClientProtocol()
	{
		allowAutoRedirect = false;
		userAgent = UserAgentDefault;
	}

	internal HttpWebClientProtocol(HttpWebClientProtocol protocol)
		: base(protocol)
	{
		allowAutoRedirect = protocol.allowAutoRedirect;
		enableDecompression = protocol.enableDecompression;
		cookieJar = protocol.cookieJar;
		clientCertificates = protocol.clientCertificates;
		proxy = protocol.proxy;
		userAgent = protocol.userAgent;
	}

	protected override WebRequest GetWebRequest(Uri uri)
	{
		WebRequest webRequest = base.GetWebRequest(uri);
		if (webRequest is HttpWebRequest httpWebRequest)
		{
			httpWebRequest.UserAgent = UserAgent;
			httpWebRequest.AllowAutoRedirect = allowAutoRedirect;
			httpWebRequest.AutomaticDecompression = (enableDecompression ? DecompressionMethods.GZip : DecompressionMethods.None);
			httpWebRequest.AllowWriteStreamBuffering = true;
			httpWebRequest.SendChunked = false;
			if (unsafeAuthenticatedConnectionSharing != httpWebRequest.UnsafeAuthenticatedConnectionSharing)
			{
				httpWebRequest.UnsafeAuthenticatedConnectionSharing = unsafeAuthenticatedConnectionSharing;
			}
			if (proxy != null)
			{
				httpWebRequest.Proxy = proxy;
			}
			if (clientCertificates != null && clientCertificates.Count > 0)
			{
				httpWebRequest.ClientCertificates.AddRange(clientCertificates);
			}
			httpWebRequest.CookieContainer = cookieJar;
		}
		return webRequest;
	}

	protected override WebResponse GetWebResponse(WebRequest request)
	{
		return base.GetWebResponse(request);
	}

	protected override WebResponse GetWebResponse(WebRequest request, IAsyncResult result)
	{
		return base.GetWebResponse(request, result);
	}

	protected void CancelAsync(object userState)
	{
		if (userState == null)
		{
			userState = NullToken;
		}
		OperationCompleted(userState, new object[1], null, canceled: true)?.Abort();
	}

	internal WebClientAsyncResult OperationCompleted(object userState, object[] parameters, Exception e, bool canceled)
	{
		WebClientAsyncResult webClientAsyncResult = (WebClientAsyncResult)AsyncInvokes[userState];
		if (webClientAsyncResult != null)
		{
			AsyncOperation asyncOperation = (AsyncOperation)webClientAsyncResult.AsyncState;
			UserToken userToken = (UserToken)asyncOperation.UserSuppliedState;
			InvokeCompletedEventArgs arg = new InvokeCompletedEventArgs(parameters, e, canceled, userState);
			AsyncInvokes.Remove(userState);
			asyncOperation.PostOperationCompleted(userToken.Callback, arg);
		}
		return webClientAsyncResult;
	}

	public static bool GenerateXmlMappings(Type type, ArrayList mappings)
	{
		if (typeof(SoapHttpClientProtocol).IsAssignableFrom(type))
		{
			string serviceNamespace = (WebServiceBindingReflector.GetAttribute(type) ?? throw new InvalidOperationException(Res.GetString("WebClientBindingAttributeRequired"))).Namespace;
			bool serviceDefaultIsEncoded = SoapReflector.ServiceDefaultIsEncoded(type);
			ArrayList soapMethodList = new ArrayList();
			SoapClientType.GenerateXmlMappings(type, soapMethodList, serviceNamespace, serviceDefaultIsEncoded, mappings);
			return true;
		}
		return false;
	}

	public static Hashtable GenerateXmlMappings(Type[] types, ArrayList mappings)
	{
		if (types == null)
		{
			throw new ArgumentNullException("types");
		}
		Hashtable hashtable = new Hashtable();
		foreach (Type type in types)
		{
			ArrayList value = new ArrayList();
			if (GenerateXmlMappings(type, mappings))
			{
				hashtable.Add(type, value);
				mappings.Add(value);
			}
		}
		return hashtable;
	}
}
