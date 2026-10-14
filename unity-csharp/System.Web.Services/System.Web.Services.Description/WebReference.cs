using System.CodeDom;
using System.Collections.Specialized;
using System.Web.Services.Discovery;

namespace System.Web.Services.Description;

public sealed class WebReference
{
	private CodeNamespace proxyCode;

	private DiscoveryClientDocumentCollection documents;

	private string appSettingUrlKey;

	private string appSettingBaseUrl;

	private string protocolName;

	private ServiceDescriptionImportWarnings warnings;

	private StringCollection validationWarnings;

	public string AppSettingBaseUrl => appSettingBaseUrl;

	public string AppSettingUrlKey => appSettingUrlKey;

	public DiscoveryClientDocumentCollection Documents => documents;

	public CodeNamespace ProxyCode => proxyCode;

	public StringCollection ValidationWarnings
	{
		get
		{
			if (validationWarnings == null)
			{
				validationWarnings = new StringCollection();
			}
			return validationWarnings;
		}
	}

	public ServiceDescriptionImportWarnings Warnings
	{
		get
		{
			return warnings;
		}
		set
		{
			warnings = value;
		}
	}

	public string ProtocolName
	{
		get
		{
			if (protocolName != null)
			{
				return protocolName;
			}
			return string.Empty;
		}
		set
		{
			protocolName = value;
		}
	}

	public WebReference(DiscoveryClientDocumentCollection documents, CodeNamespace proxyCode, string protocolName, string appSettingUrlKey, string appSettingBaseUrl)
	{
		if (documents == null)
		{
			throw new ArgumentNullException("documents");
		}
		if (proxyCode == null)
		{
			throw new ArgumentNullException("proxyCode");
		}
		if (appSettingBaseUrl != null && appSettingUrlKey == null)
		{
			throw new ArgumentNullException("appSettingUrlKey");
		}
		this.protocolName = protocolName;
		this.appSettingUrlKey = appSettingUrlKey;
		this.appSettingBaseUrl = appSettingBaseUrl;
		this.documents = documents;
		this.proxyCode = proxyCode;
	}

	public WebReference(DiscoveryClientDocumentCollection documents, CodeNamespace proxyCode)
		: this(documents, proxyCode, null, null, null)
	{
	}

	public WebReference(DiscoveryClientDocumentCollection documents, CodeNamespace proxyCode, string appSettingUrlKey, string appSettingBaseUrl)
		: this(documents, proxyCode, null, appSettingUrlKey, appSettingBaseUrl)
	{
	}
}
