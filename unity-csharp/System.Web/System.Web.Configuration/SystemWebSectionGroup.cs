using System.Configuration;
using System.Web.Services.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class SystemWebSectionGroup : ConfigurationSectionGroup
{
	[ConfigurationProperty("anonymousIdentification")]
	public AnonymousIdentificationSection AnonymousIdentification => (AnonymousIdentificationSection)Sections["anonymousIdentification"];

	[ConfigurationProperty("authentication")]
	public AuthenticationSection Authentication => (AuthenticationSection)Sections["authentication"];

	[ConfigurationProperty("authorization")]
	public AuthorizationSection Authorization => (AuthorizationSection)Sections["authorization"];

	[ConfigurationProperty("browserCaps")]
	public DefaultSection BrowserCaps => (DefaultSection)Sections["browserCaps"];

	[ConfigurationProperty("clientTarget")]
	public ClientTargetSection ClientTarget => (ClientTargetSection)Sections["clientTarget"];

	[ConfigurationProperty("compilation")]
	public CompilationSection Compilation => (CompilationSection)Sections["compilation"];

	[ConfigurationProperty("customErrors")]
	public CustomErrorsSection CustomErrors => (CustomErrorsSection)Sections["customErrors"];

	[ConfigurationProperty("deployment")]
	public DeploymentSection Deployment => (DeploymentSection)Sections["deployment"];

	[ConfigurationProperty("deviceFilters")]
	public DefaultSection DeviceFilters => (DefaultSection)Sections["deviceFilters"];

	[ConfigurationProperty("globalization")]
	public GlobalizationSection Globalization => (GlobalizationSection)Sections["globalization"];

	[ConfigurationProperty("healthMonitoring")]
	public HealthMonitoringSection HealthMonitoring => (HealthMonitoringSection)Sections["healthMonitoring"];

	[ConfigurationProperty("hostingEnvironment")]
	public HostingEnvironmentSection HostingEnvironment => (HostingEnvironmentSection)Sections["hostingEnvironment"];

	[ConfigurationProperty("httpCookies")]
	public HttpCookiesSection HttpCookies => (HttpCookiesSection)Sections["httpCookies"];

	[ConfigurationProperty("httpHandlers")]
	public HttpHandlersSection HttpHandlers => (HttpHandlersSection)Sections["httpHandlers"];

	[ConfigurationProperty("httpModules")]
	public HttpModulesSection HttpModules => (HttpModulesSection)Sections["httpModules"];

	[ConfigurationProperty("httpRuntime")]
	public HttpRuntimeSection HttpRuntime => (HttpRuntimeSection)Sections["httpRuntime"];

	[ConfigurationProperty("identity")]
	public IdentitySection Identity => (IdentitySection)Sections["identity"];

	[ConfigurationProperty("machineKey")]
	public MachineKeySection MachineKey => (MachineKeySection)Sections["machineKey"];

	[ConfigurationProperty("membership")]
	public MembershipSection Membership => (MembershipSection)Sections["membership"];

	[ConfigurationProperty("mobileControls")]
	[Obsolete("System.Web.Mobile.dll is obsolete.")]
	public ConfigurationSection MobileControls => Sections["MobileControls"];

	[ConfigurationProperty("pages")]
	public PagesSection Pages => (PagesSection)Sections["pages"];

	[ConfigurationProperty("processModel")]
	public ProcessModelSection ProcessModel => (ProcessModelSection)Sections["processModel"];

	[ConfigurationProperty("profile")]
	public ProfileSection Profile => (ProfileSection)Sections["profile"];

	[ConfigurationProperty("protocols")]
	public DefaultSection Protocols => (DefaultSection)Sections["protocols"];

	[ConfigurationProperty("roleManager")]
	public RoleManagerSection RoleManager => (RoleManagerSection)Sections["roleManager"];

	[ConfigurationProperty("securityPolicy")]
	public SecurityPolicySection SecurityPolicy => (SecurityPolicySection)Sections["securityPolicy"];

	[ConfigurationProperty("sessionState")]
	public SessionStateSection SessionState => (SessionStateSection)Sections["sessionState"];

	[ConfigurationProperty("siteMap")]
	public SiteMapSection SiteMap => (SiteMapSection)Sections["siteMap"];

	[ConfigurationProperty("trace")]
	public TraceSection Trace => (TraceSection)Sections["trace"];

	[ConfigurationProperty("trust")]
	public TrustSection Trust => (TrustSection)Sections["trust"];

	[ConfigurationProperty("urlMappings")]
	public UrlMappingsSection UrlMappings => (UrlMappingsSection)Sections["urlMappings"];

	[ConfigurationProperty("webControls")]
	public WebControlsSection WebControls => (WebControlsSection)Sections["webControls"];

	[ConfigurationProperty("webParts")]
	public WebPartsSection WebParts => (WebPartsSection)Sections["webParts"];

	[ConfigurationProperty("webServices")]
	public WebServicesSection WebServices => (WebServicesSection)Sections["webServices"];

	[ConfigurationProperty("xhtmlConformance")]
	public XhtmlConformanceSection XhtmlConformance => (XhtmlConformanceSection)Sections["xhtmlConformance"];

	public FullTrustAssembliesSection FullTrustAssemblies
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public PartialTrustVisibleAssembliesSection PartialTrustVisibleAssemblies
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}
}
