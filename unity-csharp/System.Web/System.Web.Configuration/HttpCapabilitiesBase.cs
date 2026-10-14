using System.Collections;
using System.IO;
using System.Web.UI;
using System.Web.Util;

namespace System.Web.Configuration;

public class HttpCapabilitiesBase : IFilterResolutionService
{
	internal IDictionary capabilities;

	internal static bool GetConfigCapabilities_called;

	private IDictionary adapters;

	private bool canCombineFormsInDeck;

	private bool canInitiateVoiceCall;

	private bool canRenderAfterInputOrSelectElement;

	private bool canRenderEmptySelects;

	private bool canRenderInputAndSelectElementsTogether;

	private bool canRenderMixedSelects;

	private bool canRenderOneventAndPrevElementsTogether;

	private bool canRenderPostBackCards;

	private bool canRenderSetvarZeroWithMultiSelectionList;

	private bool canSendMail;

	private int defaultSubmitButtonLimit;

	private int gatewayMajorVersion;

	private double gatewayMinorVersion;

	private string gatewayVersion;

	private bool hasBackButton;

	private bool hidesRightAlignedMultiselectScrollbars;

	private string htmlTextWriter;

	private string inputType;

	private bool isColor;

	private bool isMobileDevice;

	private Version jscriptVersion;

	private int maximumHrefLength;

	private int maximumRenderedPageSize;

	private int maximumSoftkeyLabelLength;

	private string minorVersionString;

	private string mobileDeviceManufacturer;

	private string mobileDeviceModel;

	private int numberOfSoftkeys;

	private string preferredImageMime;

	private string preferredRenderingMime;

	private string preferredRenderingType;

	private string preferredRequestEncoding;

	private string preferredResponseEncoding;

	private bool rendersBreakBeforeWmlSelectAndInput;

	private bool rendersBreaksAfterHtmlLists;

	private bool rendersBreaksAfterWmlAnchor;

	private bool rendersBreaksAfterWmlInput;

	private bool rendersWmlDoAcceptsInline;

	private bool rendersWmlSelectsAsMenuCards;

	private string requiredMetaTagNameValue;

	private bool requiresAttributeColonSubstitution;

	private bool requiresContentTypeMetaTag;

	private bool requiresControlStateInSession;

	private bool requiresDBCSCharacter;

	private bool requiresHtmlAdaptiveErrorReporting;

	private bool requiresLeadingPageBreak;

	private bool requiresNoBreakInFormatting;

	private bool requiresOutputOptimization;

	private bool requiresPhoneNumbersAsPlainText;

	private bool requiresSpecialViewStateEncoding;

	private bool requiresUniqueFilePathSuffix;

	private bool requiresUniqueHtmlCheckboxNames;

	private bool requiresUniqueHtmlInputNames;

	private bool requiresUrlEncodedPostfieldValues;

	private int screenBitDepth;

	private int screenCharactersHeight;

	private int screenCharactersWidth;

	private int screenPixelsHeight;

	private int screenPixelsWidth;

	private bool supportsAccesskeyAttribute;

	private bool supportsBodyColor;

	private bool supportsBold;

	private bool supportsCacheControlMetaTag;

	private bool supportsCallback;

	private bool supportsCss;

	private bool supportsDivAlign;

	private bool supportsDivNoWrap;

	private bool supportsEmptyStringInCookieValue;

	private bool supportsFontColor;

	private bool supportsFontName;

	private bool supportsFontSize;

	private bool supportsImageSubmit;

	private bool supportsIModeSymbols;

	private bool supportsInputIStyle;

	private bool supportsInputMode;

	private bool supportsItalic;

	private bool supportsJPhoneMultiMediaAttributes;

	private bool supportsJPhoneSymbols;

	private bool supportsQueryStringInFormAction;

	private bool supportsRedirectWithCookie;

	private bool supportsSelectMultiple;

	private bool supportsUncheck;

	private bool supportsXmlHttp;

	private bool useOptimizedCacheKey;

	private static HttpCapabilitiesProvider _provider = new HttpCapabilitiesDefaultProvider();

	private const int HaveActiveXControls = 1;

	private const int HaveAdapters = 2;

	private const int HaveAOL = 3;

	private const int HaveBackGroundSounds = 4;

	private const int HaveBeta = 5;

	private const int HaveBrowser = 6;

	private const int HaveBrowsers = 7;

	private const int HaveCanCombineFormsInDeck = 8;

	private const int HaveCanInitiateVoiceCall = 9;

	private const int HaveCanRenderAfterInputOrSelectElement = 10;

	private const int HaveCanRenderEmptySelects = 11;

	private const int HaveCanRenderInputAndSelectElementsTogether = 12;

	private const int HaveCanRenderMixedSelects = 13;

	private const int HaveCanRenderOneventAndPrevElementsTogether = 14;

	private const int HaveCanRenderPostBackCards = 15;

	private const int HaveCanRenderSetvarZeroWithMultiSelectionList = 16;

	private const int HaveCanSendMail = 17;

	private const int HaveCDF = 18;

	private const int HaveCookies = 20;

	private const int HaveCrawler = 21;

	private const int HaveDefaultSubmitButtonLimit = 22;

	private const int HaveEcmaScriptVersion = 23;

	private const int HaveFrames = 24;

	private const int HaveGatewayMajorVersion = 25;

	private const int HaveGatewayMinorVersion = 26;

	private const int HaveGatewayVersion = 27;

	private const int HaveHasBackButton = 28;

	private const int HaveHidesRightAlignedMultiselectScrollbars = 29;

	private const int HaveHtmlTextWriter = 30;

	private const int HaveId = 31;

	private const int HaveInputType = 32;

	private const int HaveIsColor = 33;

	private const int HaveIsMobileDevice = 34;

	private const int HaveJavaApplets = 35;

	private const int HaveJavaScript = 36;

	private const int HaveJScriptVersion = 37;

	private const int HaveMajorVersion = 38;

	private const int HaveMaximumHrefLength = 39;

	private const int HaveMaximumRenderedPageSize = 40;

	private const int HaveMaximumSoftkeyLabelLength = 41;

	private const int HaveMinorVersion = 42;

	private const int HaveMinorVersionString = 43;

	private const int HaveMobileDeviceManufacturer = 44;

	private const int HaveMobileDeviceModel = 45;

	private const int HaveMSDomVersion = 46;

	private const int HaveNumberOfSoftkeys = 47;

	private const int HavePlatform = 48;

	private const int HavePreferredImageMime = 49;

	private const int HavePreferredRenderingMime = 50;

	private const int HavePreferredRenderingType = 51;

	private const int HavePreferredRequestEncoding = 52;

	private const int HavePreferredResponseEncoding = 53;

	private const int HaveRendersBreakBeforeWmlSelectAndInput = 54;

	private const int HaveRendersBreaksAfterHtmlLists = 55;

	private const int HaveRendersBreaksAfterWmlAnchor = 56;

	private const int HaveRendersBreaksAfterWmlInput = 57;

	private const int HaveRendersWmlDoAcceptsInline = 58;

	private const int HaveRendersWmlSelectsAsMenuCards = 59;

	private const int HaveRequiredMetaTagNameValue = 60;

	private const int HaveRequiresAttributeColonSubstitution = 61;

	private const int HaveRequiresContentTypeMetaTag = 62;

	private const int HaveRequiresControlStateInSession = 63;

	private const int HaveRequiresDBCSCharacter = 64;

	private const int HaveRequiresHtmlAdaptiveErrorReporting = 65;

	private const int HaveRequiresLeadingPageBreak = 66;

	private const int HaveRequiresNoBreakInFormatting = 67;

	private const int HaveRequiresOutputOptimization = 68;

	private const int HaveRequiresPhoneNumbersAsPlainText = 69;

	private const int HaveRequiresSpecialViewStateEncoding = 70;

	private const int HaveRequiresUniqueFilePathSuffix = 71;

	private const int HaveRequiresUniqueHtmlCheckboxNames = 72;

	private const int HaveRequiresUniqueHtmlInputNames = 73;

	private const int HaveRequiresUrlEncodedPostfieldValues = 74;

	private const int HaveScreenBitDepth = 75;

	private const int HaveScreenCharactersHeight = 76;

	private const int HaveScreenCharactersWidth = 77;

	private const int HaveScreenPixelsHeight = 78;

	private const int HaveScreenPixelsWidth = 79;

	private const int HaveSupportsAccesskeyAttribute = 80;

	private const int HaveSupportsBodyColor = 81;

	private const int HaveSupportsBold = 82;

	private const int HaveSupportsCacheControlMetaTag = 83;

	private const int HaveSupportsCallback = 84;

	private const int HaveSupportsCss = 85;

	private const int HaveSupportsDivAlign = 86;

	private const int HaveSupportsDivNoWrap = 87;

	private const int HaveSupportsEmptyStringInCookieValue = 88;

	private const int HaveSupportsFontColor = 89;

	private const int HaveSupportsFontName = 90;

	private const int HaveSupportsFontSize = 91;

	private const int HaveSupportsImageSubmit = 92;

	private const int HaveSupportsIModeSymbols = 93;

	private const int HaveSupportsInputIStyle = 94;

	private const int HaveSupportsInputMode = 95;

	private const int HaveSupportsItalic = 96;

	private const int HaveSupportsJPhoneMultiMediaAttributes = 97;

	private const int HaveSupportsJPhoneSymbols = 98;

	private const int HaveSupportsQueryStringInFormAction = 99;

	private const int HaveSupportsRedirectWithCookie = 100;

	private const int HaveSupportsSelectMultiple = 101;

	private const int HaveSupportsUncheck = 102;

	private const int HaveSupportsXmlHttp = 103;

	private const int HaveTables = 104;

	private const int HaveTagWriter = 105;

	private const int HaveType = 106;

	private const int HaveUseOptimizedCacheKey = 107;

	private const int HaveVBScript = 108;

	private const int HaveVersion = 109;

	private const int HaveW3CDomVersion = 110;

	private const int HaveWin16 = 111;

	private const int HaveWin32 = 112;

	private const int LastHaveFlag = 113;

	private BitArray flags = new BitArray(113);

	private bool activeXControls;

	private bool aol;

	private bool backgroundSounds;

	private bool beta;

	private string browser;

	private bool cdf;

	private Version clrVersion;

	private bool cookies;

	private bool crawler;

	private Version ecmaScriptVersion;

	private bool frames;

	private bool javaApplets;

	private bool javaScript;

	private int majorVersion;

	private double minorVersion;

	private Version msDomVersion;

	private string platform;

	private bool tables;

	private Type tagWriter;

	private bool vbscript;

	private string version;

	private Version w3CDomVersion;

	private bool win16;

	private bool win32;

	private Version[] clrVersions;

	internal string useragent;

	private ArrayList browsers;

	public virtual string this[string key] => capabilities[key] as string;

	public IDictionary Adapters
	{
		get
		{
			if (!Get(2))
			{
				adapters = GetAdapters();
				Set(2);
			}
			return adapters;
		}
	}

	public virtual bool CanCombineFormsInDeck
	{
		get
		{
			if (!Get(8))
			{
				canCombineFormsInDeck = ReadBoolean("cancombineformsindeck");
				Set(8);
			}
			return canCombineFormsInDeck;
		}
	}

	public virtual bool CanInitiateVoiceCall
	{
		get
		{
			if (!Get(9))
			{
				canInitiateVoiceCall = ReadBoolean("caninitiatevoicecall");
				Set(9);
			}
			return canInitiateVoiceCall;
		}
	}

	public virtual bool CanRenderAfterInputOrSelectElement
	{
		get
		{
			if (!Get(10))
			{
				canRenderAfterInputOrSelectElement = ReadBoolean("canrenderafterinputorselectelement");
				Set(10);
			}
			return canRenderAfterInputOrSelectElement;
		}
	}

	public virtual bool CanRenderEmptySelects
	{
		get
		{
			if (!Get(11))
			{
				canRenderEmptySelects = ReadBoolean("canrenderemptyselects");
				Set(11);
			}
			return canRenderEmptySelects;
		}
	}

	public virtual bool CanRenderInputAndSelectElementsTogether
	{
		get
		{
			if (!Get(12))
			{
				canRenderInputAndSelectElementsTogether = ReadBoolean("canrenderinputandselectelementstogether");
				Set(12);
			}
			return canRenderInputAndSelectElementsTogether;
		}
	}

	public virtual bool CanRenderMixedSelects
	{
		get
		{
			if (!Get(13))
			{
				canRenderMixedSelects = ReadBoolean("canrendermixedselects");
				Set(13);
			}
			return canRenderMixedSelects;
		}
	}

	public virtual bool CanRenderOneventAndPrevElementsTogether
	{
		get
		{
			if (!Get(14))
			{
				canRenderOneventAndPrevElementsTogether = ReadBoolean("canrenderoneventandprevelementstogether");
				Set(14);
			}
			return canRenderOneventAndPrevElementsTogether;
		}
	}

	public virtual bool CanRenderPostBackCards
	{
		get
		{
			if (!Get(15))
			{
				canRenderPostBackCards = ReadBoolean("canrenderpostbackcards");
				Set(15);
			}
			return canRenderPostBackCards;
		}
	}

	public virtual bool CanRenderSetvarZeroWithMultiSelectionList
	{
		get
		{
			if (!Get(16))
			{
				canRenderSetvarZeroWithMultiSelectionList = ReadBoolean("canrendersetvarzerowithmultiselectionlist");
				Set(16);
			}
			return canRenderSetvarZeroWithMultiSelectionList;
		}
	}

	public virtual bool CanSendMail
	{
		get
		{
			if (!Get(17))
			{
				canSendMail = ReadBoolean("cansendmail");
				Set(17);
			}
			return canSendMail;
		}
	}

	public IDictionary Capabilities
	{
		get
		{
			return capabilities;
		}
		set
		{
			capabilities = new Hashtable(value.Keys.Count, StringComparer.OrdinalIgnoreCase);
			foreach (object key in value.Keys)
			{
				if (!capabilities.Contains(key))
				{
					capabilities.Add(key, value[key]);
				}
			}
		}
	}

	public virtual int DefaultSubmitButtonLimit
	{
		get
		{
			if (!Get(22))
			{
				defaultSubmitButtonLimit = ReadInt32("defaultsubmitbuttonlimit");
				Set(22);
			}
			return defaultSubmitButtonLimit;
		}
	}

	public virtual int GatewayMajorVersion
	{
		get
		{
			if (!Get(25))
			{
				gatewayMajorVersion = ReadInt32("gatewaymajorversion");
				Set(25);
			}
			return gatewayMajorVersion;
		}
	}

	public virtual double GatewayMinorVersion
	{
		get
		{
			if (!Get(26))
			{
				gatewayMinorVersion = ReadDouble("gatewayminorversion");
				Set(26);
			}
			return gatewayMinorVersion;
		}
	}

	public virtual string GatewayVersion
	{
		get
		{
			if (!Get(27))
			{
				gatewayVersion = ReadString("gatewayversion");
				Set(27);
			}
			return gatewayVersion;
		}
	}

	public virtual bool HasBackButton
	{
		get
		{
			if (!Get(28))
			{
				hasBackButton = ReadBoolean("hasbackbutton");
				Set(28);
			}
			return hasBackButton;
		}
	}

	public virtual bool HidesRightAlignedMultiselectScrollbars
	{
		get
		{
			if (!Get(29))
			{
				hidesRightAlignedMultiselectScrollbars = ReadBoolean("hidesrightalignedmultiselectscrollbars");
				Set(29);
			}
			return hidesRightAlignedMultiselectScrollbars;
		}
	}

	public string HtmlTextWriter
	{
		get
		{
			if (!Get(30))
			{
				htmlTextWriter = ReadString("htmlTextWriter");
				Set(30);
			}
			return htmlTextWriter;
		}
		set
		{
			Set(30);
			htmlTextWriter = value;
		}
	}

	public string Id => Browser;

	public virtual string InputType
	{
		get
		{
			if (!Get(32))
			{
				inputType = ReadString("inputtype");
				Set(32);
			}
			return inputType;
		}
	}

	public virtual bool IsColor
	{
		get
		{
			if (!Get(33))
			{
				isColor = ReadBoolean("iscolor");
				Set(33);
			}
			return isColor;
		}
	}

	public virtual bool IsMobileDevice
	{
		get
		{
			if (!Get(34))
			{
				isMobileDevice = ReadBoolean("ismobiledevice");
				Set(34);
			}
			return isMobileDevice;
		}
	}

	public Version JScriptVersion
	{
		get
		{
			if (!Get(37))
			{
				jscriptVersion = ReadVersion("jscriptversion");
				Set(37);
			}
			return jscriptVersion;
		}
	}

	public virtual int MaximumHrefLength
	{
		get
		{
			if (!Get(39))
			{
				maximumHrefLength = ReadInt32("maximumhreflength");
				Set(39);
			}
			return maximumHrefLength;
		}
	}

	public virtual int MaximumRenderedPageSize
	{
		get
		{
			if (!Get(40))
			{
				maximumRenderedPageSize = ReadInt32("maximumrenderedpagesize");
				Set(40);
			}
			return maximumRenderedPageSize;
		}
	}

	public virtual int MaximumSoftkeyLabelLength
	{
		get
		{
			if (!Get(41))
			{
				maximumSoftkeyLabelLength = ReadInt32("maximumsoftkeylabellength");
				Set(41);
			}
			return maximumSoftkeyLabelLength;
		}
	}

	public string MinorVersionString
	{
		get
		{
			if (!Get(43))
			{
				minorVersionString = ReadString("minorversionstring");
				Set(43);
			}
			return minorVersionString;
		}
	}

	public virtual string MobileDeviceManufacturer
	{
		get
		{
			if (!Get(44))
			{
				mobileDeviceManufacturer = ReadString("mobiledevicemanufacturer");
				Set(44);
			}
			return mobileDeviceManufacturer;
		}
	}

	public virtual string MobileDeviceModel
	{
		get
		{
			if (!Get(45))
			{
				mobileDeviceModel = ReadString("mobiledevicemodel");
				Set(45);
			}
			return mobileDeviceModel;
		}
	}

	public virtual int NumberOfSoftkeys
	{
		get
		{
			if (!Get(47))
			{
				numberOfSoftkeys = ReadInt32("numberofsoftkeys");
				Set(47);
			}
			return numberOfSoftkeys;
		}
	}

	public virtual string PreferredImageMime
	{
		get
		{
			if (!Get(49))
			{
				preferredImageMime = ReadString("preferredimagemime");
				Set(49);
			}
			return preferredImageMime;
		}
	}

	public virtual string PreferredRenderingMime
	{
		get
		{
			if (!Get(50))
			{
				preferredRenderingMime = ReadString("preferredrenderingmime");
				Set(50);
			}
			return preferredRenderingMime;
		}
	}

	public virtual string PreferredRenderingType
	{
		get
		{
			if (!Get(51))
			{
				preferredRenderingType = ReadString("preferredrenderingtype");
				Set(51);
			}
			return preferredRenderingType;
		}
	}

	public virtual string PreferredRequestEncoding
	{
		get
		{
			if (!Get(52))
			{
				preferredRequestEncoding = ReadString("preferredrequestencoding");
				Set(52);
			}
			return preferredRequestEncoding;
		}
	}

	public virtual string PreferredResponseEncoding
	{
		get
		{
			if (!Get(53))
			{
				preferredResponseEncoding = ReadString("preferredresponseencoding");
				Set(53);
			}
			return preferredResponseEncoding;
		}
	}

	public virtual bool RendersBreakBeforeWmlSelectAndInput
	{
		get
		{
			if (!Get(54))
			{
				rendersBreakBeforeWmlSelectAndInput = ReadBoolean("rendersbreakbeforewmlselectandinput");
				Set(54);
			}
			return rendersBreakBeforeWmlSelectAndInput;
		}
	}

	public virtual bool RendersBreaksAfterHtmlLists
	{
		get
		{
			if (!Get(55))
			{
				rendersBreaksAfterHtmlLists = ReadBoolean("rendersbreaksafterhtmllists");
				Set(55);
			}
			return rendersBreaksAfterHtmlLists;
		}
	}

	public virtual bool RendersBreaksAfterWmlAnchor
	{
		get
		{
			if (!Get(56))
			{
				rendersBreaksAfterWmlAnchor = ReadBoolean("rendersbreaksafterwmlanchor");
				Set(56);
			}
			return rendersBreaksAfterWmlAnchor;
		}
	}

	public virtual bool RendersBreaksAfterWmlInput
	{
		get
		{
			if (!Get(57))
			{
				rendersBreaksAfterWmlInput = ReadBoolean("rendersbreaksafterwmlinput");
				Set(57);
			}
			return rendersBreaksAfterWmlInput;
		}
	}

	public virtual bool RendersWmlDoAcceptsInline
	{
		get
		{
			if (!Get(58))
			{
				rendersWmlDoAcceptsInline = ReadBoolean("renderswmldoacceptsinline");
				Set(58);
			}
			return rendersWmlDoAcceptsInline;
		}
	}

	public virtual bool RendersWmlSelectsAsMenuCards
	{
		get
		{
			if (!Get(59))
			{
				rendersWmlSelectsAsMenuCards = ReadBoolean("renderswmlselectsasmenucards");
				Set(59);
			}
			return rendersWmlSelectsAsMenuCards;
		}
	}

	public virtual string RequiredMetaTagNameValue
	{
		get
		{
			if (!Get(60))
			{
				requiredMetaTagNameValue = ReadString("requiredmetatagnamevalue");
				Set(60);
			}
			return requiredMetaTagNameValue;
		}
	}

	public virtual bool RequiresAttributeColonSubstitution
	{
		get
		{
			if (!Get(61))
			{
				requiresAttributeColonSubstitution = ReadBoolean("requiresattributecolonsubstitution");
				Set(61);
			}
			return requiresAttributeColonSubstitution;
		}
	}

	public virtual bool RequiresContentTypeMetaTag
	{
		get
		{
			if (!Get(62))
			{
				requiresContentTypeMetaTag = ReadBoolean("requiresContentTypeMetaTag");
				Set(62);
			}
			return requiresContentTypeMetaTag;
		}
	}

	public bool RequiresControlStateInSession
	{
		get
		{
			if (!Get(63))
			{
				requiresControlStateInSession = ReadBoolean("requiresControlStateInSession");
				Set(63);
			}
			return requiresControlStateInSession;
		}
	}

	public virtual bool RequiresDBCSCharacter
	{
		get
		{
			if (!Get(64))
			{
				requiresDBCSCharacter = ReadBoolean("requiresdbcscharacter");
				Set(64);
			}
			return requiresDBCSCharacter;
		}
	}

	public virtual bool RequiresHtmlAdaptiveErrorReporting
	{
		get
		{
			if (!Get(65))
			{
				requiresHtmlAdaptiveErrorReporting = ReadBoolean("requireshtmladaptiveerrorreporting");
				Set(65);
			}
			return requiresHtmlAdaptiveErrorReporting;
		}
	}

	public virtual bool RequiresLeadingPageBreak
	{
		get
		{
			if (!Get(66))
			{
				requiresLeadingPageBreak = ReadBoolean("requiresleadingpagebreak");
				Set(66);
			}
			return requiresLeadingPageBreak;
		}
	}

	public virtual bool RequiresNoBreakInFormatting
	{
		get
		{
			if (!Get(67))
			{
				requiresNoBreakInFormatting = ReadBoolean("requiresnobreakinformatting");
				Set(67);
			}
			return requiresNoBreakInFormatting;
		}
	}

	public virtual bool RequiresOutputOptimization
	{
		get
		{
			if (!Get(68))
			{
				requiresOutputOptimization = ReadBoolean("requiresoutputoptimization");
				Set(68);
			}
			return requiresOutputOptimization;
		}
	}

	public virtual bool RequiresPhoneNumbersAsPlainText
	{
		get
		{
			if (!Get(69))
			{
				requiresPhoneNumbersAsPlainText = ReadBoolean("requiresphonenumbersasplaintext");
				Set(69);
			}
			return requiresPhoneNumbersAsPlainText;
		}
	}

	public virtual bool RequiresSpecialViewStateEncoding
	{
		get
		{
			if (!Get(70))
			{
				requiresSpecialViewStateEncoding = ReadBoolean("requiresspecialviewstateencoding");
				Set(70);
			}
			return requiresSpecialViewStateEncoding;
		}
	}

	public virtual bool RequiresUniqueFilePathSuffix
	{
		get
		{
			if (!Get(71))
			{
				requiresUniqueFilePathSuffix = ReadBoolean("requiresuniquefilepathsuffix");
				Set(71);
			}
			return requiresUniqueFilePathSuffix;
		}
	}

	public virtual bool RequiresUniqueHtmlCheckboxNames
	{
		get
		{
			if (!Get(72))
			{
				requiresUniqueHtmlCheckboxNames = ReadBoolean("requiresuniquehtmlcheckboxnames");
				Set(72);
			}
			return requiresUniqueHtmlCheckboxNames;
		}
	}

	public virtual bool RequiresUniqueHtmlInputNames
	{
		get
		{
			if (!Get(73))
			{
				requiresUniqueHtmlInputNames = ReadBoolean("requiresuniquehtmlinputnames");
				Set(73);
			}
			return requiresUniqueHtmlInputNames;
		}
	}

	public virtual bool RequiresUrlEncodedPostfieldValues
	{
		get
		{
			if (!Get(74))
			{
				requiresUrlEncodedPostfieldValues = ReadBoolean("requiresurlencodedpostfieldvalues");
				Set(74);
			}
			return requiresUrlEncodedPostfieldValues;
		}
	}

	public virtual int ScreenBitDepth
	{
		get
		{
			if (!Get(75))
			{
				screenBitDepth = ReadInt32("screenbitdepth");
				Set(75);
			}
			return screenBitDepth;
		}
	}

	public virtual int ScreenCharactersHeight
	{
		get
		{
			if (!Get(76))
			{
				screenCharactersHeight = ReadInt32("screencharactersheight");
				Set(76);
			}
			return screenCharactersHeight;
		}
	}

	public virtual int ScreenCharactersWidth
	{
		get
		{
			if (!Get(77))
			{
				screenCharactersWidth = ReadInt32("screencharacterswidth");
				Set(77);
			}
			return screenCharactersWidth;
		}
	}

	public virtual int ScreenPixelsHeight
	{
		get
		{
			if (!Get(78))
			{
				screenPixelsHeight = ReadInt32("screenpixelsheight");
				Set(78);
			}
			return screenPixelsHeight;
		}
	}

	public virtual int ScreenPixelsWidth
	{
		get
		{
			if (!Get(79))
			{
				screenPixelsWidth = ReadInt32("screenpixelswidth");
				Set(79);
			}
			return screenPixelsWidth;
		}
	}

	public virtual bool SupportsAccesskeyAttribute
	{
		get
		{
			if (!Get(80))
			{
				supportsAccesskeyAttribute = ReadBoolean("supportsaccesskeyattribute");
				Set(80);
			}
			return supportsAccesskeyAttribute;
		}
	}

	public virtual bool SupportsBodyColor
	{
		get
		{
			if (!Get(81))
			{
				supportsBodyColor = ReadBoolean("supportsbodycolor");
				Set(81);
			}
			return supportsBodyColor;
		}
	}

	public virtual bool SupportsBold
	{
		get
		{
			if (!Get(82))
			{
				supportsBold = ReadBoolean("supportsbold");
				Set(82);
			}
			return supportsBold;
		}
	}

	public virtual bool SupportsCacheControlMetaTag
	{
		get
		{
			if (!Get(83))
			{
				supportsCacheControlMetaTag = ReadBoolean("supportscachecontrolmetatag");
				Set(83);
			}
			return supportsCacheControlMetaTag;
		}
	}

	public virtual bool SupportsCallback
	{
		get
		{
			if (!Get(84))
			{
				supportsCallback = ReadBoolean("supportscallback");
				Set(84);
			}
			return supportsCallback;
		}
	}

	public virtual bool SupportsCss
	{
		get
		{
			if (!Get(85))
			{
				supportsCss = ReadBoolean("supportscss");
				Set(85);
			}
			return supportsCss;
		}
	}

	public virtual bool SupportsDivAlign
	{
		get
		{
			if (!Get(86))
			{
				supportsDivAlign = ReadBoolean("supportsdivalign");
				Set(86);
			}
			return supportsDivAlign;
		}
	}

	public virtual bool SupportsDivNoWrap
	{
		get
		{
			if (!Get(87))
			{
				supportsDivNoWrap = ReadBoolean("supportsdivnowrap");
				Set(64);
			}
			return supportsDivNoWrap;
		}
	}

	public virtual bool SupportsEmptyStringInCookieValue
	{
		get
		{
			if (!Get(88))
			{
				supportsEmptyStringInCookieValue = ReadBoolean("supportsemptystringincookievalue");
				Set(88);
			}
			return supportsEmptyStringInCookieValue;
		}
	}

	public virtual bool SupportsFontColor
	{
		get
		{
			if (!Get(89))
			{
				supportsFontColor = ReadBoolean("supportsfontcolor");
				Set(89);
			}
			return supportsFontColor;
		}
	}

	public virtual bool SupportsFontName
	{
		get
		{
			if (!Get(90))
			{
				supportsFontName = ReadBoolean("supportsfontname");
				Set(90);
			}
			return supportsFontName;
		}
	}

	public virtual bool SupportsFontSize
	{
		get
		{
			if (!Get(91))
			{
				supportsFontSize = ReadBoolean("supportsfontsize");
				Set(91);
			}
			return supportsFontSize;
		}
	}

	public virtual bool SupportsImageSubmit
	{
		get
		{
			if (!Get(92))
			{
				supportsImageSubmit = ReadBoolean("supportsimagesubmit");
				Set(92);
			}
			return supportsImageSubmit;
		}
	}

	public virtual bool SupportsIModeSymbols
	{
		get
		{
			if (!Get(93))
			{
				supportsIModeSymbols = ReadBoolean("supportsimodesymbols");
				Set(93);
			}
			return supportsIModeSymbols;
		}
	}

	public virtual bool SupportsInputIStyle
	{
		get
		{
			if (!Get(94))
			{
				supportsInputIStyle = ReadBoolean("supportsinputistyle");
				Set(94);
			}
			return supportsInputIStyle;
		}
	}

	public virtual bool SupportsInputMode
	{
		get
		{
			if (!Get(95))
			{
				supportsInputMode = ReadBoolean("supportsinputmode");
				Set(95);
			}
			return supportsInputMode;
		}
	}

	public virtual bool SupportsItalic
	{
		get
		{
			if (!Get(96))
			{
				supportsItalic = ReadBoolean("supportsitalic");
				Set(96);
			}
			return supportsItalic;
		}
	}

	public virtual bool SupportsJPhoneMultiMediaAttributes
	{
		get
		{
			if (!Get(97))
			{
				supportsJPhoneMultiMediaAttributes = ReadBoolean("supportsjphonemultimediaattributes");
				Set(97);
			}
			return supportsJPhoneMultiMediaAttributes;
		}
	}

	public virtual bool SupportsJPhoneSymbols
	{
		get
		{
			if (!Get(98))
			{
				supportsJPhoneSymbols = ReadBoolean("supportsjphonesymbols");
				Set(98);
			}
			return supportsJPhoneSymbols;
		}
	}

	public virtual bool SupportsQueryStringInFormAction
	{
		get
		{
			if (!Get(99))
			{
				supportsQueryStringInFormAction = ReadBoolean("supportsquerystringinformaction");
				Set(99);
			}
			return supportsQueryStringInFormAction;
		}
	}

	public virtual bool SupportsRedirectWithCookie
	{
		get
		{
			if (!Get(100))
			{
				supportsRedirectWithCookie = ReadBoolean("supportsredirectwithcookie");
				Set(100);
			}
			return supportsRedirectWithCookie;
		}
	}

	public virtual bool SupportsSelectMultiple
	{
		get
		{
			if (!Get(101))
			{
				supportsSelectMultiple = ReadBoolean("supportsselectmultiple");
				Set(101);
			}
			return supportsSelectMultiple;
		}
	}

	public virtual bool SupportsUncheck
	{
		get
		{
			if (!Get(102))
			{
				supportsUncheck = ReadBoolean("supportsuncheck");
				Set(102);
			}
			return supportsUncheck;
		}
	}

	public virtual bool SupportsXmlHttp
	{
		get
		{
			if (!Get(103))
			{
				supportsXmlHttp = ReadBoolean("supportsxmlhttp");
				Set(103);
			}
			return supportsXmlHttp;
		}
	}

	public bool UseOptimizedCacheKey
	{
		get
		{
			if (!Get(107))
			{
				useOptimizedCacheKey = ReadBoolean("useoptimizedcachekey");
				Set(107);
			}
			return useOptimizedCacheKey;
		}
	}

	public static HttpCapabilitiesProvider BrowserCapabilitiesProvider
	{
		get
		{
			return _provider;
		}
		set
		{
			_provider = value;
		}
	}

	public bool ActiveXControls
	{
		get
		{
			if (!Get(1))
			{
				activeXControls = ReadBoolean("activexcontrols");
				Set(1);
			}
			return activeXControls;
		}
	}

	public bool AOL
	{
		get
		{
			if (!Get(3))
			{
				aol = ReadBoolean("aol");
				Set(3);
			}
			return aol;
		}
	}

	public bool BackgroundSounds
	{
		get
		{
			if (!Get(4))
			{
				backgroundSounds = ReadBoolean("backgroundsounds");
				Set(4);
			}
			return backgroundSounds;
		}
	}

	public bool Beta
	{
		get
		{
			if (!Get(5))
			{
				beta = ReadBoolean("beta");
				Set(5);
			}
			return beta;
		}
	}

	public string Browser
	{
		get
		{
			if (!Get(6))
			{
				browser = this["browser"];
				if (browser == null || browser.Length == 0)
				{
					browser = "Unknown";
				}
				Set(6);
			}
			return browser;
		}
	}

	public ArrayList Browsers
	{
		get
		{
			if (!Get(7))
			{
				browsers = ReadArrayList("browsers");
				Set(7);
			}
			return browsers;
		}
	}

	public bool CDF
	{
		get
		{
			if (!Get(18))
			{
				cdf = ReadBoolean("cdf");
				Set(18);
			}
			return cdf;
		}
	}

	public Version ClrVersion
	{
		get
		{
			if (clrVersion == null)
			{
				InternalGetClrVersions();
			}
			return clrVersion;
		}
	}

	public bool Cookies
	{
		get
		{
			if (!Get(20))
			{
				cookies = ReadBoolean("cookies");
				Set(20);
			}
			return cookies;
		}
	}

	public bool Crawler
	{
		get
		{
			if (!Get(21))
			{
				crawler = ReadBoolean("crawler");
				Set(21);
			}
			return crawler;
		}
	}

	public Version EcmaScriptVersion
	{
		get
		{
			if (!Get(23))
			{
				ecmaScriptVersion = ReadVersion("ecmascriptversion");
				Set(23);
			}
			return ecmaScriptVersion;
		}
	}

	public bool Frames
	{
		get
		{
			if (!Get(24))
			{
				frames = ReadBoolean("frames");
				Set(24);
			}
			return frames;
		}
	}

	public bool JavaApplets
	{
		get
		{
			if (!Get(35))
			{
				javaApplets = ReadBoolean("javaapplets");
				Set(35);
			}
			return javaApplets;
		}
	}

	[Obsolete("The recommended alternative is the EcmaScriptVersion property. A Major version value greater than or equal to 1 implies JavaScript support. http://go.microsoft.com/fwlink/?linkid=14202")]
	public bool JavaScript
	{
		get
		{
			if (!Get(36))
			{
				javaScript = ReadBoolean("javascript");
				Set(36);
			}
			return javaScript;
		}
	}

	public int MajorVersion
	{
		get
		{
			if (!Get(38))
			{
				if (this["majorversion"] != null)
				{
					majorVersion = ReadInt32("majorversion");
				}
				else
				{
					majorVersion = ReadInt32("majorver");
				}
				Set(38);
			}
			return majorVersion;
		}
	}

	public double MinorVersion
	{
		get
		{
			if (!Get(42))
			{
				if (this["minorversion"] != null)
				{
					minorVersion = ReadDouble("minorversion");
				}
				else
				{
					minorVersion = ReadDouble("minorver");
				}
				Set(42);
			}
			return minorVersion;
		}
	}

	public Version MSDomVersion
	{
		get
		{
			if (!Get(46))
			{
				msDomVersion = ReadVersion("msdomversion");
				Set(46);
			}
			return msDomVersion;
		}
	}

	public string Platform
	{
		get
		{
			if (!Get(48))
			{
				platform = ReadString("platform");
				Set(48);
			}
			return platform;
		}
	}

	public bool Tables
	{
		get
		{
			if (!Get(104))
			{
				tables = ReadBoolean("tables");
				Set(104);
			}
			return tables;
		}
	}

	public Type TagWriter
	{
		get
		{
			if (!Get(105))
			{
				tagWriter = GetTagWriter();
				Set(105);
			}
			return tagWriter;
		}
	}

	public string Type => Browser + MajorVersion;

	public bool VBScript
	{
		get
		{
			if (!Get(108))
			{
				vbscript = ReadBoolean("vbscript");
				Set(108);
			}
			return vbscript;
		}
	}

	public string Version
	{
		get
		{
			if (!Get(109))
			{
				version = ReadString("version");
				Set(109);
			}
			return version;
		}
	}

	public Version W3CDomVersion
	{
		get
		{
			if (!Get(110))
			{
				w3CDomVersion = ReadVersion("w3cdomversion");
				Set(110);
			}
			return w3CDomVersion;
		}
	}

	public bool Win16
	{
		get
		{
			if (!Get(111))
			{
				win16 = ReadBoolean("win16");
				Set(111);
			}
			return win16;
		}
	}

	public bool Win32
	{
		get
		{
			if (!Get(112))
			{
				string text = Platform;
				win32 = text != "Win16" && text.StartsWith("Win");
				Set(112);
			}
			return win32;
		}
	}

	internal static string GetUserAgentForDetection(HttpRequest request)
	{
		string text = null;
		if (request.Context.CurrentHandler is Page)
		{
			text = ((Page)request.Context.CurrentHandler).ClientTarget;
		}
		if (string.IsNullOrEmpty(text))
		{
			text = request.ClientTarget;
			if (string.IsNullOrEmpty(text))
			{
				text = request.UserAgent;
			}
		}
		return text;
	}

	private static HttpBrowserCapabilities GetHttpBrowserCapabilitiesFromBrowscapini(string ua)
	{
		return new HttpBrowserCapabilities
		{
			capabilities = CapabilitiesLoader.GetCapabilities(ua)
		};
	}

	public static HttpCapabilitiesBase GetConfigCapabilities(string configKey, HttpRequest request)
	{
		string userAgentForDetection = GetUserAgentForDetection(request);
		HttpBrowserCapabilities httpBrowserCapabilities = GetHttpBrowserCapabilitiesFromBrowscapini(userAgentForDetection);
		GetConfigCapabilities_called = true;
		if (HttpApplicationFactory.AppBrowsersFiles.Length != 0)
		{
			httpBrowserCapabilities = HttpApplicationFactory.CapabilitiesProcessor.Process(request, httpBrowserCapabilities.Capabilities);
		}
		httpBrowserCapabilities.useragent = userAgentForDetection;
		httpBrowserCapabilities.Init();
		return httpBrowserCapabilities;
	}

	protected virtual void Init()
	{
	}

	int IFilterResolutionService.CompareFilters(string filter1, string filter2)
	{
		throw new NotImplementedException();
	}

	bool IFilterResolutionService.EvaluateFilter(string filterName)
	{
		throw new NotImplementedException();
	}

	public void AddBrowser(string browserName)
	{
	}

	public HtmlTextWriter CreateHtmlTextWriter(TextWriter w)
	{
		return (HtmlTextWriter)Activator.CreateInstance(TagWriter, w);
	}

	public void DisableOptimizedCacheKey()
	{
		throw new NotImplementedException();
	}

	internal virtual IDictionary GetAdapters()
	{
		return new Hashtable();
	}

	public bool IsBrowser(string browserName)
	{
		foreach (string browser in Browsers)
		{
			if (string.Compare(browser, "Unknown", StringComparison.OrdinalIgnoreCase) != 0 && string.Compare(browserName, browser, StringComparison.OrdinalIgnoreCase) == 0)
			{
				return true;
			}
		}
		return false;
	}

	internal virtual Type GetTagWriter()
	{
		return typeof(HtmlTextWriter);
	}

	public Version[] GetClrVersions()
	{
		if (clrVersions == null)
		{
			InternalGetClrVersions();
		}
		return clrVersions;
	}

	private void InternalGetClrVersions()
	{
		char[] anyOf = new char[2] { ';', ')' };
		string text = useragent;
		ArrayList arrayList = null;
		int num;
		while (text != null && (num = text.IndexOf(".NET CLR ")) != -1)
		{
			int num2 = text.IndexOfAny(anyOf, num + 9);
			if (num2 == -1)
			{
				break;
			}
			string text2 = text.Substring(num + 9, num2 - num - 9);
			Version version = null;
			try
			{
				version = new Version(text2);
				if (clrVersion == null || version > clrVersion)
				{
					clrVersion = version;
				}
				if (arrayList == null)
				{
					arrayList = new ArrayList(4);
				}
				arrayList.Add(version);
			}
			catch
			{
			}
			text = text.Substring(num + 9);
		}
		if (arrayList == null || arrayList.Count == 0)
		{
			clrVersion = new Version();
			clrVersions = null;
		}
		else
		{
			arrayList.Sort();
			clrVersions = (Version[])arrayList.ToArray(typeof(Version));
		}
	}

	private bool ReadBoolean(string key)
	{
		return string.Compare(this[key] ?? throw CreateCapabilityNotFoundException(key), "True", ignoreCase: true, Helpers.InvariantCulture) == 0;
	}

	private int ReadInt32(string key)
	{
		string text = this[key];
		if (text == null)
		{
			throw CreateCapabilityNotFoundException(key);
		}
		try
		{
			return int.Parse(text);
		}
		catch
		{
			throw CreateCapabilityNotFoundException(key);
		}
	}

	private double ReadDouble(string key)
	{
		string text = this[key];
		if (text == null)
		{
			throw CreateCapabilityNotFoundException(key);
		}
		try
		{
			return double.Parse(text);
		}
		catch
		{
			throw CreateCapabilityNotFoundException(key);
		}
	}

	private string ReadString(string key)
	{
		return this[key] ?? throw CreateCapabilityNotFoundException(key);
	}

	private Version ReadVersion(string key)
	{
		string text = this[key];
		if (text == null)
		{
			throw CreateCapabilityNotFoundException(key);
		}
		try
		{
			return new Version(text);
		}
		catch
		{
			throw CreateCapabilityNotFoundException(key);
		}
	}

	private ArrayList ReadArrayList(string key)
	{
		return ((ArrayList)capabilities[key]) ?? throw CreateCapabilityNotFoundException(key);
	}

	private Exception CreateCapabilityNotFoundException(string key)
	{
		return new ArgumentNullException($"browscaps.ini does not contain a definition for capability {key} for userAgent {Browser}");
	}

	private bool Get(int idx)
	{
		return flags.Get(idx);
	}

	private void Set(int idx)
	{
		flags.Set(idx, value: true);
	}
}
