using System.Security.Permissions;
using System.Security.Principal;

namespace System.Web.Security;

[MonoTODO("Not implemented")]
[MonoNotSupported("")]
[Obsolete("This type is obsolete. The Passport authentication product is no longer supported and has been superseded by Live ID.")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class PassportIdentity : IIdentity, IDisposable
{
	[MonoTODO("Not implemented")]
	public string AuthenticationType
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public int Error
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public bool GetFromNetworkServer
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public bool HasSavedPassword
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public bool HasTicket
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public string HexPUID
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public bool IsAuthenticated
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public string this[string strProfileName]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public int TicketAge
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public int TimeSinceSignIn
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public PassportIdentity()
	{
	}

	~PassportIdentity()
	{
	}

	public string AuthUrl()
	{
		return AuthUrl(null, -1, -1, null, -1, null, -1, -1);
	}

	public string AuthUrl(string strReturnUrl)
	{
		return AuthUrl(strReturnUrl, -1, -1, null, -1, null, -1, -1);
	}

	public string AuthUrl(string strReturnUrl, int iTimeWindow, bool fForceLogin, string strCoBrandedArgs, int iLangID, string strNameSpace, int iKPP, bool bUseSecureAuth)
	{
		return AuthUrl(strReturnUrl, iTimeWindow, fForceLogin ? 1 : 0, strCoBrandedArgs, iLangID, strNameSpace, iKPP, bUseSecureAuth ? 1 : 0);
	}

	[MonoTODO("Not implemented")]
	public string AuthUrl(string strReturnUrl, int iTimeWindow, int iForceLogin, string strCoBrandedArgs, int iLangID, string strNameSpace, int iKPP, int iUseSecureAuth)
	{
		throw new NotImplementedException();
	}

	public string AuthUrl2()
	{
		return AuthUrl2(null, -1, -1, null, -1, null, -1, -1);
	}

	public string AuthUrl2(string strReturnUrl)
	{
		return AuthUrl2(strReturnUrl, -1, -1, null, -1, null, -1, -1);
	}

	public string AuthUrl2(string strReturnUrl, int iTimeWindow, bool fForceLogin, string strCoBrandedArgs, int iLangID, string strNameSpace, int iKPP, bool bUseSecureAuth)
	{
		return AuthUrl2(strReturnUrl, iTimeWindow, fForceLogin ? 1 : 0, strCoBrandedArgs, iLangID, strNameSpace, iKPP, bUseSecureAuth ? 1 : 0);
	}

	[MonoTODO("Not implemented")]
	public string AuthUrl2(string strReturnUrl, int iTimeWindow, int iForceLogin, string strCoBrandedArgs, int iLangID, string strNameSpace, int iKPP, int iUseSecureAuth)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static string Compress(string strData)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static bool CryptIsValid()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static int CryptPutHost(string strHost)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static int CryptPutSite(string strSite)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static string Decompress(string strData)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static string Decrypt(string strData)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static string Encrypt(string strData)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public object GetCurrentConfig(string strAttribute)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public string GetDomainAttribute(string strAttribute, int iLCID, string strDomain)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public string GetDomainFromMemberName(string strMemberName)
	{
		throw new NotImplementedException();
	}

	public bool GetIsAuthenticated(int iTimeWindow, bool bForceLogin, bool bCheckSecure)
	{
		return GetIsAuthenticated(iTimeWindow, bForceLogin ? 1 : 0, bCheckSecure ? 1 : 0);
	}

	[MonoTODO("Not implemented")]
	public bool GetIsAuthenticated(int iTimeWindow, int iForceLogin, int iCheckSecure)
	{
		throw new NotImplementedException();
	}

	public string GetLoginChallenge()
	{
		return GetLoginChallenge(null, -1, -1, null, -1, null, -1, -1, null);
	}

	public string GetLoginChallenge(string strReturnUrl)
	{
		return GetLoginChallenge(strReturnUrl, -1, -1, null, -1, null, -1, -1, null);
	}

	[MonoTODO("Not implemented")]
	public string GetLoginChallenge(string szRetURL, int iTimeWindow, int fForceLogin, string szCOBrandArgs, int iLangID, string strNameSpace, int iKPP, int iUseSecureAuth, object oExtraParams)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public object GetOption(string strOpt)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public object GetProfileObject(string strProfileName)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public bool HasFlag(int iFlagMask)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public bool HasProfile(string strProfile)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public bool HaveConsent(bool bNeedFullConsent, bool bNeedBirthdate)
	{
		throw new NotImplementedException();
	}

	public int LoginUser()
	{
		return LoginUser(null, -1, -1, null, -1, null, -1, -1, null);
	}

	public int LoginUser(string strReturnUrl)
	{
		return LoginUser(strReturnUrl, -1, -1, null, -1, null, -1, -1, null);
	}

	public int LoginUser(string szRetURL, int iTimeWindow, bool fForceLogin, string szCOBrandArgs, int iLangID, string strNameSpace, int iKPP, bool fUseSecureAuth, object oExtraParams)
	{
		return LoginUser(szRetURL, iTimeWindow, fForceLogin ? 1 : 0, szCOBrandArgs, iLangID, strNameSpace, iKPP, fUseSecureAuth ? 1 : 0, null);
	}

	[MonoTODO("Not implemented")]
	public int LoginUser(string szRetURL, int iTimeWindow, int fForceLogin, string szCOBrandArgs, int iLangID, string strNameSpace, int iKPP, int iUseSecureAuth, object oExtraParams)
	{
		throw new NotImplementedException();
	}

	public string LogoTag()
	{
		return LogoTag(null, -1, -1, null, -1, -1, null, -1, -1);
	}

	public string LogoTag(string strReturnUrl)
	{
		return LogoTag(strReturnUrl, -1, -1, null, -1, -1, null, -1, -1);
	}

	public string LogoTag(string strReturnUrl, int iTimeWindow, bool fForceLogin, string strCoBrandedArgs, int iLangID, bool fSecure, string strNameSpace, int iKPP, bool bUseSecureAuth)
	{
		return LogoTag(strReturnUrl, iTimeWindow, fForceLogin ? 1 : 0, strCoBrandedArgs, iLangID, fSecure ? 1 : 0, strNameSpace, iKPP, bUseSecureAuth ? 1 : 0);
	}

	[MonoTODO("Not implemented")]
	public string LogoTag(string strReturnUrl, int iTimeWindow, int iForceLogin, string strCoBrandedArgs, int iLangID, int iSecure, string strNameSpace, int iKPP, int iUseSecureAuth)
	{
		throw new NotImplementedException();
	}

	public string LogoTag2()
	{
		return LogoTag2(null, -1, -1, null, -1, -1, null, -1, -1);
	}

	public string LogoTag2(string strReturnUrl)
	{
		return LogoTag2(strReturnUrl, -1, -1, null, -1, -1, null, -1, -1);
	}

	public string LogoTag2(string strReturnUrl, int iTimeWindow, bool fForceLogin, string strCoBrandedArgs, int iLangID, bool fSecure, string strNameSpace, int iKPP, bool bUseSecureAuth)
	{
		return LogoTag2(strReturnUrl, iTimeWindow, fForceLogin ? 1 : 0, strCoBrandedArgs, iLangID, fSecure ? 1 : 0, strNameSpace, iKPP, bUseSecureAuth ? 1 : 0);
	}

	[MonoTODO("Not implemented")]
	public string LogoTag2(string strReturnUrl, int iTimeWindow, int iForceLogin, string strCoBrandedArgs, int iLangID, int iSecure, string strNameSpace, int iKPP, int iUseSecureAuth)
	{
		throw new NotImplementedException();
	}

	public string LogoutURL()
	{
		return LogoutURL(null, null, -1, null, -1);
	}

	[MonoTODO("Not implemented")]
	public string LogoutURL(string szReturnURL, string szCOBrandArgs, int iLangID, string strDomain, int iUseSecureAuth)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public void SetOption(string strOpt, object vOpt)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static void SignOut(string strSignOutDotGifFileName)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public object Ticket(string strAttribute)
	{
		throw new NotImplementedException();
	}

	void IDisposable.Dispose()
	{
	}
}
