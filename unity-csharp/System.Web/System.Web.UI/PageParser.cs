using System.Collections;
using System.Globalization;
using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Web.Compilation;
using System.Web.Configuration;
using System.Web.Hosting;
using System.Web.Util;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class PageParser : TemplateControlParser
{
	private static Type defaultPageBaseType;

	private static Type defaultApplicationBaseType;

	private static Type defaultPageParserFilterType;

	private static Type defaultUserControlBaseType;

	private static bool enableLongStringsAsResources = true;

	private PagesEnableSessionState enableSessionState = PagesEnableSessionState.True;

	private bool enableViewStateMac;

	private bool enableViewStateMacSet;

	private bool smartNavigation;

	private bool haveTrace;

	private bool trace;

	private bool notBuffer;

	private TraceMode tracemode = TraceMode.Default;

	private string contentType;

	private MainDirectiveAttribute<int> codepage;

	private MainDirectiveAttribute<string> responseEncoding;

	private MainDirectiveAttribute<int> lcid;

	private MainDirectiveAttribute<string> clientTarget;

	private MainDirectiveAttribute<string> masterPage;

	private MainDirectiveAttribute<string> title;

	private MainDirectiveAttribute<string> theme;

	private MainDirectiveAttribute<string> metaDescription;

	private MainDirectiveAttribute<string> metaKeywords;

	private string culture;

	private string uiculture;

	private string errorPage;

	private bool validateRequest;

	private bool async;

	private int asyncTimeout = -1;

	private Type masterType;

	private string masterVirtualPath;

	private string styleSheetTheme;

	private bool enable_event_validation;

	private bool maintainScrollPositionOnPostBack;

	private int maxPageStateFieldLength = -1;

	private Type previousPageType;

	private string previousPageVirtualPath;

	public static bool EnableLongStringsAsResources
	{
		get
		{
			return enableLongStringsAsResources;
		}
		set
		{
			BuildManager.AssertPreStartMethodsRunning();
			enableLongStringsAsResources = value;
		}
	}

	public static Type DefaultPageBaseType
	{
		get
		{
			return defaultPageBaseType;
		}
		set
		{
			BuildManager.AssertPreStartMethodsRunning();
			if (value != null && !typeof(Page).IsAssignableFrom(value))
			{
				throw new ArgumentException(string.Format("The value assigned to property '{0}' is invalid.", "DefaultPageBaseType"));
			}
			defaultPageBaseType = value;
		}
	}

	public static Type DefaultApplicationBaseType
	{
		get
		{
			return defaultApplicationBaseType;
		}
		set
		{
			BuildManager.AssertPreStartMethodsRunning();
			if (value != null && !typeof(HttpApplication).IsAssignableFrom(value))
			{
				throw new ArgumentException(string.Format("The value assigned to property '{0}' is invalid.", "DefaultApplicationBaseType"));
			}
			defaultApplicationBaseType = value;
		}
	}

	public static Type DefaultPageParserFilterType
	{
		get
		{
			return defaultPageParserFilterType;
		}
		set
		{
			BuildManager.AssertPreStartMethodsRunning();
			if (value != null && !typeof(PageParserFilter).IsAssignableFrom(value))
			{
				throw new ArgumentException(string.Format("The value assigned to property '{0}' is invalid.", "DefaultPageParserFilterType"));
			}
			defaultPageParserFilterType = value;
		}
	}

	public static Type DefaultUserControlBaseType
	{
		get
		{
			return defaultUserControlBaseType;
		}
		set
		{
			if (value != null && !typeof(UserControl).IsAssignableFrom(value))
			{
				throw new ArgumentException(string.Format("The value assigned to property '{0}' is invalid.", "DefaultUserControlBaseType"));
			}
			BuildManager.AssertPreStartMethodsRunning();
			defaultUserControlBaseType = value;
		}
	}

	internal bool EnableSessionState
	{
		get
		{
			if (enableSessionState != PagesEnableSessionState.True)
			{
				return ReadOnlySessionState;
			}
			return true;
		}
	}

	internal bool EnableViewStateMac => enableViewStateMac;

	internal bool EnableViewStateMacSet => enableViewStateMacSet;

	internal bool SmartNavigation => smartNavigation;

	internal bool ReadOnlySessionState => enableSessionState == PagesEnableSessionState.ReadOnly;

	internal bool HaveTrace => haveTrace;

	internal bool Trace => trace;

	internal TraceMode TraceMode => tracemode;

	internal override Type DefaultBaseType
	{
		get
		{
			Type type = DefaultPageBaseType;
			if (type == null)
			{
				return base.DefaultBaseType;
			}
			return type;
		}
	}

	internal override string DefaultBaseTypeName => PagesConfig.PageBaseType;

	internal override string DefaultDirectiveName => "page";

	internal string ContentType => contentType;

	internal MainDirectiveAttribute<string> ResponseEncoding => responseEncoding;

	internal MainDirectiveAttribute<int> CodePage => codepage;

	internal MainDirectiveAttribute<int> LCID => lcid;

	internal MainDirectiveAttribute<string> ClientTarget => clientTarget;

	internal MainDirectiveAttribute<string> MasterPageFile => masterPage;

	internal MainDirectiveAttribute<string> Title => title;

	internal MainDirectiveAttribute<string> Theme => theme;

	internal MainDirectiveAttribute<string> MetaDescription => metaDescription;

	internal MainDirectiveAttribute<string> MetaKeywords => metaKeywords;

	internal string Culture => culture;

	internal string UICulture => uiculture;

	internal string ErrorPage => errorPage;

	internal bool ValidateRequest => validateRequest;

	internal bool NotBuffer => notBuffer;

	internal bool Async => async;

	internal int AsyncTimeout => asyncTimeout;

	internal string StyleSheetTheme => styleSheetTheme;

	internal Type MasterType
	{
		get
		{
			if (masterType == null && !string.IsNullOrEmpty(masterVirtualPath))
			{
				masterType = BuildManager.GetCompiledType(masterVirtualPath);
			}
			return masterType;
		}
	}

	internal bool EnableEventValidation => enable_event_validation;

	internal bool MaintainScrollPositionOnPostBack => maintainScrollPositionOnPostBack;

	internal int MaxPageStateFieldLength => maxPageStateFieldLength;

	internal Type PreviousPageType
	{
		get
		{
			if (previousPageType == null && !string.IsNullOrEmpty(previousPageVirtualPath))
			{
				string text = MapPath(previousPageVirtualPath);
				previousPageType = GetCompiledPageType(previousPageVirtualPath, text, HttpContext.Current);
			}
			return previousPageType;
		}
	}

	public PageParser()
	{
		LoadConfigDefaults();
	}

	internal PageParser(string virtualPath, string inputFile, HttpContext context)
	{
		VirtualPath = new VirtualPath(virtualPath);
		Context = context;
		BaseVirtualDir = VirtualPathUtility.GetDirectory(virtualPath, normalize: false);
		InputFile = inputFile;
		SetBaseType(null);
		AddApplicationAssembly();
		LoadConfigDefaults();
	}

	internal PageParser(VirtualPath virtualPath, TextReader reader, HttpContext context)
		: this(virtualPath, null, reader, context)
	{
	}

	internal PageParser(VirtualPath virtualPath, string inputFile, TextReader reader, HttpContext context)
	{
		VirtualPath = virtualPath;
		Context = context;
		BaseVirtualDir = virtualPath.DirectoryNoNormalize;
		Reader = reader;
		if (string.IsNullOrEmpty(inputFile))
		{
			InputFile = virtualPath.PhysicalPath;
		}
		else
		{
			InputFile = inputFile;
		}
		SetBaseType(null);
		AddApplicationAssembly();
		LoadConfigDefaults();
	}

	internal override void LoadConfigDefaults()
	{
		base.LoadConfigDefaults();
		PagesSection pagesConfig = PagesConfig;
		notBuffer = !pagesConfig.Buffer;
		enableSessionState = pagesConfig.EnableSessionState;
		enableViewStateMac = pagesConfig.EnableViewStateMac;
		smartNavigation = pagesConfig.SmartNavigation;
		validateRequest = pagesConfig.ValidateRequest;
		string masterPageFile = pagesConfig.MasterPageFile;
		if (masterPageFile.Length > 0)
		{
			masterPage = new MainDirectiveAttribute<string>(masterPageFile, unused: true);
		}
		enable_event_validation = pagesConfig.EnableEventValidation;
		maxPageStateFieldLength = pagesConfig.MaxPageStateFieldLength;
		masterPageFile = pagesConfig.Theme;
		if (masterPageFile.Length > 0)
		{
			theme = new MainDirectiveAttribute<string>(masterPageFile, unused: true);
		}
		styleSheetTheme = pagesConfig.StyleSheetTheme;
		if (styleSheetTheme.Length == 0)
		{
			styleSheetTheme = null;
		}
		maintainScrollPositionOnPostBack = pagesConfig.MaintainScrollPositionOnPostBack;
	}

	public static IHttpHandler GetCompiledPageInstance(string virtualPath, string inputFile, HttpContext context)
	{
		bool isFake = false;
		if (!string.IsNullOrEmpty(inputFile))
		{
			isFake = !inputFile.StartsWith(HttpRuntime.AppDomainAppPath);
		}
		return BuildManager.CreateInstanceFromVirtualPath(new VirtualPath(virtualPath, inputFile, isFake), typeof(IHttpHandler)) as IHttpHandler;
	}

	internal override void ProcessMainAttributes(IDictionary atts)
	{
		string text = BaseParser.GetString(atts, "EnableSessionState", null);
		if (text != null)
		{
			if (string.Compare(text, "readonly", ignoreCase: true, Helpers.InvariantCulture) == 0)
			{
				enableSessionState = PagesEnableSessionState.ReadOnly;
			}
			else if (string.Compare(text, "true", ignoreCase: true, Helpers.InvariantCulture) == 0)
			{
				enableSessionState = PagesEnableSessionState.True;
			}
			else if (string.Compare(text, "false", ignoreCase: true, Helpers.InvariantCulture) == 0)
			{
				enableSessionState = PagesEnableSessionState.False;
			}
			else
			{
				ThrowParseException("Invalid value for enableSessionState: " + text);
			}
		}
		string text2 = BaseParser.GetString(atts, "CodePage", null);
		if (text2 != null)
		{
			if (responseEncoding != null)
			{
				ThrowParseException("CodePage and ResponseEncoding are mutually exclusive.");
			}
			if (!BaseParser.IsExpression(text2))
			{
				int value = -1;
				try
				{
					value = (int)uint.Parse(text2);
				}
				catch
				{
					ThrowParseException("Invalid value for CodePage: " + text2);
				}
				try
				{
					Encoding.GetEncoding(value);
				}
				catch
				{
					ThrowParseException("Unsupported codepage: " + text2);
				}
				codepage = new MainDirectiveAttribute<int>(value, unused: true);
			}
			else
			{
				codepage = new MainDirectiveAttribute<int>(text2);
			}
		}
		text2 = BaseParser.GetString(atts, "ResponseEncoding", null);
		if (text2 != null)
		{
			if (codepage != null)
			{
				ThrowParseException("CodePage and ResponseEncoding are mutually exclusive.");
			}
			if (!BaseParser.IsExpression(text2))
			{
				try
				{
					Encoding.GetEncoding(text2);
				}
				catch
				{
					ThrowParseException("Unsupported encoding: " + text2);
				}
				responseEncoding = new MainDirectiveAttribute<string>(text2, unused: true);
			}
			else
			{
				responseEncoding = new MainDirectiveAttribute<string>(text2);
			}
		}
		contentType = BaseParser.GetString(atts, "ContentType", null);
		text2 = BaseParser.GetString(atts, "LCID", null);
		if (text2 != null)
		{
			if (!BaseParser.IsExpression(text2))
			{
				int value2 = -1;
				try
				{
					value2 = (int)uint.Parse(text2);
				}
				catch
				{
					ThrowParseException("Invalid value for LCID: " + text2);
				}
				CultureInfo cultureInfo = null;
				try
				{
					cultureInfo = new CultureInfo(value2);
				}
				catch
				{
					ThrowParseException("Unsupported LCID: " + text2);
				}
				if (cultureInfo.IsNeutralCulture)
				{
					string text3 = SuggestCulture(cultureInfo.Name);
					string text4 = "LCID attribute must be set to a non-neutral Culture.";
					if (text3 != null)
					{
						ThrowParseException(text4 + " Please try one of these: " + text3);
					}
					else
					{
						ThrowParseException(text4);
					}
				}
				lcid = new MainDirectiveAttribute<int>(value2, unused: true);
			}
			else
			{
				lcid = new MainDirectiveAttribute<int>(text2);
			}
		}
		culture = BaseParser.GetString(atts, "Culture", null);
		if (culture != null)
		{
			if (lcid != null)
			{
				ThrowParseException("Culture and LCID are mutually exclusive.");
			}
			CultureInfo cultureInfo2 = null;
			try
			{
				if (!culture.StartsWith("auto"))
				{
					cultureInfo2 = new CultureInfo(culture);
				}
			}
			catch
			{
				ThrowParseException("Unsupported Culture: " + culture);
			}
			if (cultureInfo2 != null && cultureInfo2.IsNeutralCulture)
			{
				string text5 = SuggestCulture(culture);
				string text6 = "Culture attribute must be set to a non-neutral Culture.";
				if (text5 != null)
				{
					ThrowParseException(text6 + " Please try one of these: " + text5);
				}
				else
				{
					ThrowParseException(text6);
				}
			}
		}
		uiculture = BaseParser.GetString(atts, "UICulture", null);
		if (uiculture != null)
		{
			CultureInfo cultureInfo3 = null;
			try
			{
				if (!uiculture.StartsWith("auto"))
				{
					cultureInfo3 = new CultureInfo(uiculture);
				}
			}
			catch
			{
				ThrowParseException("Unsupported Culture: " + uiculture);
			}
			if (cultureInfo3 != null && cultureInfo3.IsNeutralCulture)
			{
				string text7 = SuggestCulture(uiculture);
				string text8 = "UICulture attribute must be set to a non-neutral Culture.";
				if (text7 != null)
				{
					ThrowParseException(text8 + " Please try one of these: " + text7);
				}
				else
				{
					ThrowParseException(text8);
				}
			}
		}
		string text9 = BaseParser.GetString(atts, "Trace", null);
		if (text9 != null)
		{
			haveTrace = true;
			atts["Trace"] = text9;
			trace = GetBool(atts, "Trace", deflt: false);
		}
		string text10 = BaseParser.GetString(atts, "TraceMode", null);
		if (text10 != null)
		{
			bool flag = true;
			try
			{
				tracemode = (TraceMode)Enum.Parse(typeof(TraceMode), text10, ignoreCase: false);
			}
			catch
			{
				flag = false;
			}
			if (!flag || tracemode == TraceMode.Default)
			{
				ThrowParseException("The 'tracemode' attribute is case sensitive and must be one of the following values: SortByTime, SortByCategory.");
			}
		}
		errorPage = BaseParser.GetString(atts, "ErrorPage", null);
		validateRequest = GetBool(atts, "ValidateRequest", validateRequest);
		text2 = BaseParser.GetString(atts, "ClientTarget", null);
		if (text2 != null)
		{
			if (!BaseParser.IsExpression(text2))
			{
				text2 = text2.Trim();
				ClientTargetSection configSection = GetConfigSection<ClientTargetSection>("system.web/clientTarget");
				ClientTarget clientTarget = null;
				if ((clientTarget = configSection.ClientTargets[text2]) == null)
				{
					text2 = text2.ToLowerInvariant();
				}
				if (clientTarget == null && (clientTarget = configSection.ClientTargets[text2]) == null)
				{
					ThrowParseException($"ClientTarget '{this.clientTarget}' is an invalid alias. See the documentation for <clientTarget> config. section.");
				}
				text2 = clientTarget.UserAgent;
				this.clientTarget = new MainDirectiveAttribute<string>(text2, unused: true);
			}
			else
			{
				this.clientTarget = new MainDirectiveAttribute<string>(text2);
			}
		}
		notBuffer = !GetBool(atts, "Buffer", deflt: true);
		async = GetBool(atts, "Async", deflt: false);
		string text11 = BaseParser.GetString(atts, "AsyncTimeout", null);
		if (text11 != null)
		{
			try
			{
				asyncTimeout = int.Parse(text11);
			}
			catch (Exception)
			{
				ThrowParseException("AsyncTimeout must be an integer value");
			}
		}
		text2 = BaseParser.GetString(atts, "MasterPageFile", (masterPage != null) ? masterPage.Value : null);
		if (!string.IsNullOrEmpty(text2))
		{
			if (!BaseParser.IsExpression(text2))
			{
				text2 = VirtualPathUtility.Combine(BaseVirtualDir, text2);
				VirtualPathProvider virtualPathProvider = HostingEnvironment.VirtualPathProvider;
				if (!virtualPathProvider.FileExists(text2))
				{
					ThrowParseFileNotFound(text2);
				}
				text2 = virtualPathProvider.CombineVirtualPaths(VirtualPath.Absolute, VirtualPathUtility.ToAbsolute(text2));
				AddDependency(text2, combinePaths: false);
				masterPage = new MainDirectiveAttribute<string>(text2, unused: true);
			}
			else
			{
				masterPage = new MainDirectiveAttribute<string>(text2);
			}
		}
		text2 = BaseParser.GetString(atts, "Title", null);
		if (text2 != null)
		{
			if (!BaseParser.IsExpression(text2))
			{
				title = new MainDirectiveAttribute<string>(text2, unused: true);
			}
			else
			{
				title = new MainDirectiveAttribute<string>(text2);
			}
		}
		text2 = BaseParser.GetString(atts, "Theme", (theme != null) ? theme.Value : null);
		if (text2 != null)
		{
			if (!BaseParser.IsExpression(text2))
			{
				theme = new MainDirectiveAttribute<string>(text2, unused: true);
			}
			else
			{
				theme = new MainDirectiveAttribute<string>(text2);
			}
		}
		styleSheetTheme = BaseParser.GetString(atts, "StyleSheetTheme", styleSheetTheme);
		enable_event_validation = GetBool(atts, "EnableEventValidation", enable_event_validation);
		maintainScrollPositionOnPostBack = GetBool(atts, "MaintainScrollPositionOnPostBack", maintainScrollPositionOnPostBack);
		if (atts.Contains("EnableViewStateMac"))
		{
			enableViewStateMac = GetBool(atts, "EnableViewStateMac", enableViewStateMac);
			enableViewStateMacSet = true;
		}
		text2 = BaseParser.GetString(atts, "MetaDescription", null);
		if (text2 != null)
		{
			if (!BaseParser.IsExpression(text2))
			{
				metaDescription = new MainDirectiveAttribute<string>(text2, unused: true);
			}
			else
			{
				metaDescription = new MainDirectiveAttribute<string>(text2);
			}
		}
		text2 = BaseParser.GetString(atts, "MetaKeywords", null);
		if (text2 != null)
		{
			if (!BaseParser.IsExpression(text2))
			{
				metaKeywords = new MainDirectiveAttribute<string>(text2, unused: true);
			}
			else
			{
				metaKeywords = new MainDirectiveAttribute<string>(text2);
			}
		}
		BaseParser.GetString(atts, "SmartNavigation", null);
		base.ProcessMainAttributes(atts);
	}

	internal override void AddDirective(string directive, IDictionary atts)
	{
		bool flag = string.Compare("MasterType", directive, StringComparison.OrdinalIgnoreCase) == 0;
		bool flag2 = !flag && string.Compare("PreviousPageType", directive, StringComparison.OrdinalIgnoreCase) == 0;
		string text = null;
		string text2 = null;
		Type type = null;
		if (flag | flag2)
		{
			PageParserFilter?.PreprocessDirective(directive.ToLowerInvariant(), atts);
			text = BaseParser.GetString(atts, "TypeName", null);
			text2 = BaseParser.GetString(atts, "VirtualPath", null);
			if (text != null && text2 != null)
			{
				ThrowParseException($"The '{directive}' directive must have exactly one attribute: TypeName or VirtualPath");
			}
			if (text != null)
			{
				type = LoadType(text);
				if (type == null)
				{
					ThrowParseException($"Could not load type '{text}'.");
				}
				if (flag)
				{
					masterType = type;
				}
				else
				{
					previousPageType = type;
				}
			}
			else if (!string.IsNullOrEmpty(text2))
			{
				if (!HostingEnvironment.VirtualPathProvider.FileExists(text2))
				{
					ThrowParseFileNotFound(text2);
				}
				AddDependency(text2, combinePaths: true);
				if (flag)
				{
					masterVirtualPath = text2;
				}
				else
				{
					previousPageVirtualPath = text2;
				}
			}
			else
			{
				ThrowParseException($"The {directive} directive must have either a TypeName or a VirtualPath attribute.");
			}
			if (type != null)
			{
				AddAssembly(type.Assembly, fullPath: true);
			}
		}
		else
		{
			base.AddDirective(directive, atts);
		}
	}

	private static string SuggestCulture(string culture)
	{
		string text = null;
		CultureInfo[] cultures = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
		foreach (CultureInfo cultureInfo in cultures)
		{
			if (cultureInfo.Name.StartsWith(culture))
			{
				text = text + cultureInfo.Name + " ";
			}
		}
		return text;
	}

	internal Type GetCompiledPageType(string virtualPath, string inputFile, HttpContext context)
	{
		return BuildManager.GetCompiledType(virtualPath);
	}

	internal override Type CompileIntoType()
	{
		return new AspGenerator(this).GetCompiledType();
	}
}
