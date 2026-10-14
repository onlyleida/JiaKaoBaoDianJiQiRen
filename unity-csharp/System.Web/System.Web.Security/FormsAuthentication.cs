using System.Collections.Specialized;
using System.IO;
using System.Security.Cryptography;
using System.Security.Permissions;
using System.Text;
using System.Web.Compilation;
using System.Web.Configuration;
using System.Web.Util;
using Unity;

namespace System.Web.Security;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class FormsAuthentication
{
	private static string authConfigPath = "system.web/authentication";

	private static string machineKeyConfigPath = "system.web/machineKey";

	private static object locker = new object();

	private static bool initialized;

	private static string cookieName;

	private static string cookiePath;

	private static int timeout;

	private static FormsProtectionEnum protection;

	private static bool requireSSL;

	private static bool slidingExpiration;

	private static string cookie_domain;

	private static HttpCookieMode cookie_mode;

	private static bool cookies_supported;

	private static string default_url;

	private static bool enable_crossapp_redirects;

	private static string login_url;

	private static string[] indexFiles = new string[5] { "index.aspx", "Default.aspx", "default.aspx", "index.html", "index.htm" };

	public static TimeSpan Timeout { get; private set; }

	public static bool IsEnabled => initialized;

	internal static string ReturnUrl => HttpContext.Current.Request["RETURNURL"];

	public static string FormsCookieName
	{
		get
		{
			Initialize();
			return cookieName;
		}
	}

	public static string FormsCookiePath
	{
		get
		{
			Initialize();
			return cookiePath;
		}
	}

	public static bool RequireSSL
	{
		get
		{
			Initialize();
			return requireSSL;
		}
	}

	public static bool SlidingExpiration
	{
		get
		{
			Initialize();
			return slidingExpiration;
		}
	}

	public static string CookieDomain
	{
		get
		{
			Initialize();
			return cookie_domain;
		}
	}

	public static HttpCookieMode CookieMode
	{
		get
		{
			Initialize();
			return cookie_mode;
		}
	}

	public static bool CookiesSupported
	{
		get
		{
			Initialize();
			return cookies_supported;
		}
	}

	public static string DefaultUrl
	{
		get
		{
			Initialize();
			return default_url;
		}
	}

	public static bool EnableCrossAppRedirects
	{
		get
		{
			Initialize();
			return enable_crossapp_redirects;
		}
	}

	public static string LoginUrl
	{
		get
		{
			Initialize();
			return login_url;
		}
	}

	public static TicketCompatibilityMode TicketCompatibilityMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public static void EnableFormsAuthentication(NameValueCollection configurationData)
	{
		BuildManager.AssertPreStartMethodsRunning();
		if (configurationData != null && configurationData.Count != 0)
		{
			string value = configurationData["loginUrl"];
			if (!string.IsNullOrEmpty(value))
			{
				login_url = value;
			}
			value = configurationData["defaultUrl"];
			if (!string.IsNullOrEmpty(value))
			{
				default_url = value;
			}
		}
	}

	public static bool Authenticate(string name, string password)
	{
		if (name == null || password == null)
		{
			return false;
		}
		Initialize();
		if (HttpContext.Current == null)
		{
			throw new HttpException("Context is null!");
		}
		name = name.ToLower(Helpers.InvariantCulture);
		FormsAuthenticationCredentials credentials = ((AuthenticationSection)WebConfigurationManager.GetSection(authConfigPath)).Forms.Credentials;
		FormsAuthenticationUser formsAuthenticationUser = credentials.Users[name];
		string text = null;
		if (formsAuthenticationUser != null)
		{
			text = formsAuthenticationUser.Password;
		}
		if (text == null)
		{
			return false;
		}
		bool flag = true;
		switch (credentials.PasswordFormat)
		{
		case FormsAuthPasswordFormat.Clear:
			flag = false;
			break;
		case FormsAuthPasswordFormat.MD5:
			password = HashPasswordForStoringInConfigFile(password, FormsAuthPasswordFormat.MD5);
			break;
		case FormsAuthPasswordFormat.SHA1:
			password = HashPasswordForStoringInConfigFile(password, FormsAuthPasswordFormat.SHA1);
			break;
		}
		return string.Compare(password, text, flag ? StringComparison.OrdinalIgnoreCase : StringComparison.Ordinal) == 0;
	}

	private static FormsAuthenticationTicket Decrypt2(byte[] bytes)
	{
		if (protection == FormsProtectionEnum.None)
		{
			return FormsAuthenticationTicket.FromByteArray(bytes);
		}
		MachineKeySection section = (MachineKeySection)WebConfigurationManager.GetWebApplicationSection(machineKeyConfigPath);
		byte[] bytes2 = null;
		if (protection == FormsProtectionEnum.All)
		{
			bytes2 = MachineKeySectionUtils.VerifyDecrypt(section, bytes);
		}
		else if (protection == FormsProtectionEnum.Encryption)
		{
			bytes2 = MachineKeySectionUtils.Decrypt(section, bytes);
		}
		else if (protection == FormsProtectionEnum.Validation)
		{
			bytes2 = MachineKeySectionUtils.Verify(section, bytes);
		}
		return FormsAuthenticationTicket.FromByteArray(bytes2);
	}

	public static FormsAuthenticationTicket Decrypt(string encryptedTicket)
	{
		if (string.IsNullOrEmpty(encryptedTicket))
		{
			throw new ArgumentException("Invalid encrypted ticket", "encryptedTicket");
		}
		Initialize();
		byte[] bytes = Convert.FromBase64String(encryptedTicket);
		try
		{
			return Decrypt2(bytes);
		}
		catch (Exception)
		{
			return null;
		}
	}

	public static string Encrypt(FormsAuthenticationTicket ticket)
	{
		if (ticket == null)
		{
			throw new ArgumentNullException("ticket");
		}
		Initialize();
		byte[] array = ticket.ToByteArray();
		if (protection == FormsProtectionEnum.None)
		{
			return Convert.ToBase64String(array);
		}
		byte[] inArray = null;
		MachineKeySection section = (MachineKeySection)WebConfigurationManager.GetWebApplicationSection(machineKeyConfigPath);
		if (protection == FormsProtectionEnum.All)
		{
			inArray = MachineKeySectionUtils.EncryptSign(section, array);
		}
		else if (protection == FormsProtectionEnum.Encryption)
		{
			inArray = MachineKeySectionUtils.Encrypt(section, array);
		}
		else if (protection == FormsProtectionEnum.Validation)
		{
			inArray = MachineKeySectionUtils.Sign(section, array);
		}
		return Convert.ToBase64String(inArray);
	}

	public static HttpCookie GetAuthCookie(string userName, bool createPersistentCookie)
	{
		return GetAuthCookie(userName, createPersistentCookie, null);
	}

	public static HttpCookie GetAuthCookie(string userName, bool createPersistentCookie, string strCookiePath)
	{
		Initialize();
		if (userName == null)
		{
			userName = string.Empty;
		}
		if (strCookiePath == null || strCookiePath.Length == 0)
		{
			strCookiePath = cookiePath;
		}
		DateTime now = DateTime.Now;
		DateTime dateTime = now.AddMinutes(timeout);
		DateTime expires = (createPersistentCookie ? dateTime : DateTime.MinValue);
		FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, userName, now, dateTime, createPersistentCookie, string.Empty, cookiePath);
		HttpCookie httpCookie = new HttpCookie(cookieName, Encrypt(ticket), strCookiePath, expires);
		if (requireSSL)
		{
			httpCookie.Secure = true;
		}
		if (!string.IsNullOrEmpty(cookie_domain))
		{
			httpCookie.Domain = cookie_domain;
		}
		return httpCookie;
	}

	public static string GetRedirectUrl(string userName, bool createPersistentCookie)
	{
		if (userName == null)
		{
			return null;
		}
		Initialize();
		HttpRequest request = HttpContext.Current.Request;
		string returnUrl = ReturnUrl;
		if (returnUrl != null)
		{
			return returnUrl;
		}
		returnUrl = request.ApplicationPath;
		string physicalApplicationPath = request.PhysicalApplicationPath;
		bool flag = false;
		string[] array = indexFiles;
		foreach (string text in array)
		{
			if (File.Exists(Path.Combine(physicalApplicationPath, text)))
			{
				returnUrl = UrlUtils.Combine(returnUrl, text);
				flag = true;
				break;
			}
		}
		if (!flag)
		{
			returnUrl = UrlUtils.Combine(returnUrl, "index.aspx");
		}
		return returnUrl;
	}

	private static string HashPasswordForStoringInConfigFile(string password, FormsAuthPasswordFormat passwordFormat)
	{
		if (password == null)
		{
			throw new ArgumentNullException("password");
		}
		return MachineKeySectionUtils.GetHexString(passwordFormat switch
		{
			FormsAuthPasswordFormat.MD5 => MD5.Create().ComputeHash(Encoding.UTF8.GetBytes(password)), 
			FormsAuthPasswordFormat.SHA1 => SHA1.Create().ComputeHash(Encoding.UTF8.GetBytes(password)), 
			_ => throw new ArgumentException("The format must be either MD5 or SHA1", "passwordFormat"), 
		});
	}

	public static string HashPasswordForStoringInConfigFile(string password, string passwordFormat)
	{
		if (password == null)
		{
			throw new ArgumentNullException("password");
		}
		if (passwordFormat == null)
		{
			throw new ArgumentNullException("passwordFormat");
		}
		if (string.Compare(passwordFormat, "MD5", StringComparison.OrdinalIgnoreCase) == 0)
		{
			return HashPasswordForStoringInConfigFile(password, FormsAuthPasswordFormat.MD5);
		}
		if (string.Compare(passwordFormat, "SHA1", StringComparison.OrdinalIgnoreCase) == 0)
		{
			return HashPasswordForStoringInConfigFile(password, FormsAuthPasswordFormat.SHA1);
		}
		throw new ArgumentException("The format must be either MD5 or SHA1", "passwordFormat");
	}

	public static void Initialize()
	{
		if (initialized)
		{
			return;
		}
		lock (locker)
		{
			if (!initialized)
			{
				FormsAuthenticationConfiguration forms = ((AuthenticationSection)WebConfigurationManager.GetSection(authConfigPath)).Forms;
				cookieName = forms.Name;
				Timeout = forms.Timeout;
				timeout = (int)forms.Timeout.TotalMinutes;
				cookiePath = forms.Path;
				protection = forms.Protection;
				requireSSL = forms.RequireSSL;
				slidingExpiration = forms.SlidingExpiration;
				cookie_domain = forms.Domain;
				cookie_mode = forms.Cookieless;
				cookies_supported = true;
				if (!string.IsNullOrEmpty(default_url))
				{
					default_url = MapUrl(default_url);
				}
				else
				{
					default_url = MapUrl(forms.DefaultUrl);
				}
				enable_crossapp_redirects = forms.EnableCrossAppRedirects;
				if (!string.IsNullOrEmpty(login_url))
				{
					login_url = MapUrl(login_url);
				}
				else
				{
					login_url = MapUrl(forms.LoginUrl);
				}
				initialized = true;
			}
		}
	}

	private static string MapUrl(string url)
	{
		if (UrlUtils.IsRelativeUrl(url))
		{
			return UrlUtils.Combine(HttpRuntime.AppDomainAppVirtualPath, url);
		}
		return UrlUtils.ResolveVirtualPathFromAppAbsolute(url);
	}

	public static void RedirectFromLoginPage(string userName, bool createPersistentCookie)
	{
		RedirectFromLoginPage(userName, createPersistentCookie, null);
	}

	public static void RedirectFromLoginPage(string userName, bool createPersistentCookie, string strCookiePath)
	{
		if (userName != null)
		{
			Initialize();
			SetAuthCookie(userName, createPersistentCookie, strCookiePath);
			Redirect(GetRedirectUrl(userName, createPersistentCookie), end: false);
		}
	}

	public static FormsAuthenticationTicket RenewTicketIfOld(FormsAuthenticationTicket tOld)
	{
		if (tOld == null)
		{
			return null;
		}
		DateTime now = DateTime.Now;
		TimeSpan timeSpan = now - tOld.IssueDate;
		if (tOld.Expiration - now > timeSpan)
		{
			return tOld;
		}
		FormsAuthenticationTicket formsAuthenticationTicket = tOld.Clone();
		formsAuthenticationTicket.SetDates(now, now + (tOld.Expiration - tOld.IssueDate));
		return formsAuthenticationTicket;
	}

	public static void SetAuthCookie(string userName, bool createPersistentCookie)
	{
		Initialize();
		SetAuthCookie(userName, createPersistentCookie, cookiePath);
	}

	public static void SetAuthCookie(string userName, bool createPersistentCookie, string strCookiePath)
	{
		((HttpContext.Current ?? throw new HttpException("Context is null!")).Response ?? throw new HttpException("Response is null!")).Cookies.Add(GetAuthCookie(userName, createPersistentCookie, strCookiePath));
	}

	public static void SignOut()
	{
		Initialize();
		HttpCookieCollection cookies = ((HttpContext.Current ?? throw new HttpException("Context is null!")).Response ?? throw new HttpException("Response is null!")).Cookies;
		cookies.Remove(cookieName);
		HttpCookie httpCookie = new HttpCookie(cookieName, string.Empty)
		{
			Expires = new DateTime(1999, 10, 12),
			Path = cookiePath
		};
		if (!string.IsNullOrEmpty(cookie_domain))
		{
			httpCookie.Domain = cookie_domain;
		}
		cookies.Add(httpCookie);
		Roles.DeleteCookie();
	}

	public static void RedirectToLoginPage()
	{
		Redirect(LoginUrl);
	}

	[MonoTODO("needs more tests")]
	public static void RedirectToLoginPage(string extraQueryString)
	{
		Redirect(LoginUrl + "?" + extraQueryString);
	}

	private static void Redirect(string url)
	{
		HttpContext.Current.Response.Redirect(url);
	}

	private static void Redirect(string url, bool end)
	{
		HttpContext.Current.Response.Redirect(url, end);
	}
}
