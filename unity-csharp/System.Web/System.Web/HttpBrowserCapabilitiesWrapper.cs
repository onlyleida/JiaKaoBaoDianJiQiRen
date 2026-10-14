using System.Collections;
using System.IO;
using System.Runtime.CompilerServices;
using System.Web.UI;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class HttpBrowserCapabilitiesWrapper : HttpBrowserCapabilitiesBase
{
	private HttpBrowserCapabilities _browser;

	public override string Browser => _browser.Browser;

	public override Version EcmaScriptVersion => _browser.EcmaScriptVersion;

	public override Version JScriptVersion => _browser.JScriptVersion;

	public override bool SupportsCallback => _browser.SupportsCallback;

	public override Version W3CDomVersion => _browser.W3CDomVersion;

	public override bool ActiveXControls => _browser.ActiveXControls;

	public override IDictionary Adapters => _browser.Adapters;

	public override bool AOL => _browser.AOL;

	public override bool BackgroundSounds => _browser.BackgroundSounds;

	public override bool Beta => _browser.Beta;

	public override ArrayList Browsers => _browser.Browsers;

	public override bool CanCombineFormsInDeck => _browser.CanCombineFormsInDeck;

	public override bool CanInitiateVoiceCall => _browser.CanInitiateVoiceCall;

	public override bool CanRenderAfterInputOrSelectElement => _browser.CanRenderAfterInputOrSelectElement;

	public override bool CanRenderEmptySelects => _browser.CanRenderEmptySelects;

	public override bool CanRenderInputAndSelectElementsTogether => _browser.CanRenderInputAndSelectElementsTogether;

	public override bool CanRenderMixedSelects => _browser.CanRenderMixedSelects;

	public override bool CanRenderOneventAndPrevElementsTogether => _browser.CanRenderOneventAndPrevElementsTogether;

	public override bool CanRenderPostBackCards => _browser.CanRenderPostBackCards;

	public override bool CanRenderSetvarZeroWithMultiSelectionList => _browser.CanRenderSetvarZeroWithMultiSelectionList;

	public override bool CanSendMail => _browser.CanSendMail;

	public override IDictionary Capabilities
	{
		get
		{
			return _browser.Capabilities;
		}
		set
		{
			_browser.Capabilities = value;
		}
	}

	public override bool CDF => _browser.CDF;

	public override Version ClrVersion => _browser.ClrVersion;

	public override bool Cookies => _browser.Cookies;

	public override bool Crawler => _browser.Crawler;

	public override int DefaultSubmitButtonLimit => _browser.DefaultSubmitButtonLimit;

	public override bool Frames => _browser.Frames;

	public override int GatewayMajorVersion => _browser.GatewayMajorVersion;

	public override double GatewayMinorVersion => _browser.GatewayMinorVersion;

	public override string GatewayVersion => _browser.GatewayVersion;

	public override bool HasBackButton => _browser.HasBackButton;

	public override bool HidesRightAlignedMultiselectScrollbars => _browser.HidesRightAlignedMultiselectScrollbars;

	public override string HtmlTextWriter
	{
		get
		{
			return _browser.HtmlTextWriter;
		}
		set
		{
			_browser.HtmlTextWriter = value;
		}
	}

	public override string Id => _browser.Id;

	public override string InputType => _browser.InputType;

	public override bool IsColor => _browser.IsColor;

	public override bool IsMobileDevice => _browser.IsMobileDevice;

	public override bool JavaApplets => _browser.JavaApplets;

	public override int MajorVersion => _browser.MajorVersion;

	public override int MaximumHrefLength => _browser.MaximumHrefLength;

	public override int MaximumRenderedPageSize => _browser.MaximumRenderedPageSize;

	public override int MaximumSoftkeyLabelLength => _browser.MaximumSoftkeyLabelLength;

	public override double MinorVersion => _browser.MinorVersion;

	public override string MinorVersionString => _browser.MinorVersionString;

	public override string MobileDeviceManufacturer => _browser.MobileDeviceManufacturer;

	public override string MobileDeviceModel => _browser.MobileDeviceModel;

	public override Version MSDomVersion => _browser.MSDomVersion;

	public override int NumberOfSoftkeys => _browser.NumberOfSoftkeys;

	public override string Platform => _browser.Platform;

	public override string PreferredImageMime => _browser.PreferredImageMime;

	public override string PreferredRenderingMime => _browser.PreferredRenderingMime;

	public override string PreferredRenderingType => _browser.PreferredRenderingType;

	public override string PreferredRequestEncoding => _browser.PreferredRequestEncoding;

	public override string PreferredResponseEncoding => _browser.PreferredResponseEncoding;

	public override bool RendersBreakBeforeWmlSelectAndInput => _browser.RendersBreakBeforeWmlSelectAndInput;

	public override bool RendersBreaksAfterHtmlLists => _browser.RendersBreaksAfterHtmlLists;

	public override bool RendersBreaksAfterWmlAnchor => _browser.RendersBreaksAfterWmlAnchor;

	public override bool RendersBreaksAfterWmlInput => _browser.RendersBreaksAfterWmlInput;

	public override bool RendersWmlDoAcceptsInline => _browser.RendersWmlDoAcceptsInline;

	public override bool RendersWmlSelectsAsMenuCards => _browser.RendersWmlSelectsAsMenuCards;

	public override string RequiredMetaTagNameValue => _browser.RequiredMetaTagNameValue;

	public override bool RequiresAttributeColonSubstitution => _browser.RequiresAttributeColonSubstitution;

	public override bool RequiresContentTypeMetaTag => _browser.RequiresContentTypeMetaTag;

	public override bool RequiresControlStateInSession => _browser.RequiresControlStateInSession;

	public override bool RequiresDBCSCharacter => _browser.RequiresDBCSCharacter;

	public override bool RequiresHtmlAdaptiveErrorReporting => _browser.RequiresHtmlAdaptiveErrorReporting;

	public override bool RequiresLeadingPageBreak => _browser.RequiresLeadingPageBreak;

	public override bool RequiresNoBreakInFormatting => _browser.RequiresNoBreakInFormatting;

	public override bool RequiresOutputOptimization => _browser.RequiresOutputOptimization;

	public override bool RequiresPhoneNumbersAsPlainText => _browser.RequiresPhoneNumbersAsPlainText;

	public override bool RequiresSpecialViewStateEncoding => _browser.RequiresSpecialViewStateEncoding;

	public override bool RequiresUniqueFilePathSuffix => _browser.RequiresUniqueFilePathSuffix;

	public override bool RequiresUniqueHtmlCheckboxNames => _browser.RequiresUniqueHtmlCheckboxNames;

	public override bool RequiresUniqueHtmlInputNames => _browser.RequiresUniqueHtmlInputNames;

	public override bool RequiresUrlEncodedPostfieldValues => _browser.RequiresUrlEncodedPostfieldValues;

	public override int ScreenBitDepth => _browser.ScreenBitDepth;

	public override int ScreenCharactersHeight => _browser.ScreenCharactersHeight;

	public override int ScreenCharactersWidth => _browser.ScreenCharactersWidth;

	public override int ScreenPixelsHeight => _browser.ScreenPixelsHeight;

	public override int ScreenPixelsWidth => _browser.ScreenPixelsWidth;

	public override bool SupportsAccesskeyAttribute => _browser.SupportsAccesskeyAttribute;

	public override bool SupportsBodyColor => _browser.SupportsBodyColor;

	public override bool SupportsBold => _browser.SupportsBold;

	public override bool SupportsCacheControlMetaTag => _browser.SupportsCacheControlMetaTag;

	public override bool SupportsCss => _browser.SupportsCss;

	public override bool SupportsDivAlign => _browser.SupportsDivAlign;

	public override bool SupportsDivNoWrap => _browser.SupportsDivNoWrap;

	public override bool SupportsEmptyStringInCookieValue => _browser.SupportsEmptyStringInCookieValue;

	public override bool SupportsFontColor => _browser.SupportsFontColor;

	public override bool SupportsFontName => _browser.SupportsFontName;

	public override bool SupportsFontSize => _browser.SupportsFontSize;

	public override bool SupportsImageSubmit => _browser.SupportsImageSubmit;

	public override bool SupportsIModeSymbols => _browser.SupportsIModeSymbols;

	public override bool SupportsInputIStyle => _browser.SupportsInputIStyle;

	public override bool SupportsInputMode => _browser.SupportsInputMode;

	public override bool SupportsItalic => _browser.SupportsItalic;

	public override bool SupportsJPhoneMultiMediaAttributes => _browser.SupportsJPhoneMultiMediaAttributes;

	public override bool SupportsJPhoneSymbols => _browser.SupportsJPhoneSymbols;

	public override bool SupportsQueryStringInFormAction => _browser.SupportsQueryStringInFormAction;

	public override bool SupportsRedirectWithCookie => _browser.SupportsRedirectWithCookie;

	public override bool SupportsSelectMultiple => _browser.SupportsSelectMultiple;

	public override bool SupportsUncheck => _browser.SupportsUncheck;

	public override bool SupportsXmlHttp => _browser.SupportsXmlHttp;

	public override bool Tables => _browser.Tables;

	public override Type TagWriter => _browser.TagWriter;

	public override string Type => _browser.Type;

	public override bool UseOptimizedCacheKey => _browser.UseOptimizedCacheKey;

	public override bool VBScript => _browser.VBScript;

	public override string Version => _browser.Version;

	public override bool Win16 => _browser.Win16;

	public override bool Win32 => _browser.Win32;

	public override string this[string key] => _browser[key];

	public HttpBrowserCapabilitiesWrapper(HttpBrowserCapabilities httpBrowserCapabilities)
	{
		if (httpBrowserCapabilities == null)
		{
			throw new ArgumentNullException("httpBrowserCapabilities");
		}
		_browser = httpBrowserCapabilities;
	}

	public override void AddBrowser(string browserName)
	{
		_browser.AddBrowser(browserName);
	}

	public override HtmlTextWriter CreateHtmlTextWriter(TextWriter w)
	{
		return _browser.CreateHtmlTextWriter(w);
	}

	public override void DisableOptimizedCacheKey()
	{
		_browser.DisableOptimizedCacheKey();
	}

	public override Version[] GetClrVersions()
	{
		return _browser.GetClrVersions();
	}

	public override bool IsBrowser(string browserName)
	{
		return _browser.IsBrowser(browserName);
	}

	public override int CompareFilters(string filter1, string filter2)
	{
		return ((IFilterResolutionService)_browser).CompareFilters(filter1, filter2);
	}

	public override bool EvaluateFilter(string filterName)
	{
		return ((IFilterResolutionService)_browser).EvaluateFilter(filterName);
	}
}
