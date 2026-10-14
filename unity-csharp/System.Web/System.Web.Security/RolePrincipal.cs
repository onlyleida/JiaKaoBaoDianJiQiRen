using System.Collections.Specialized;
using System.IO;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Security.Principal;
using System.Web.Configuration;
using System.Web.Util;
using Unity;

namespace System.Web.Security;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class RolePrincipal : IPrincipal, ISerializable
{
	private IIdentity _identity;

	private bool _listChanged;

	private string[] _cachedArray;

	private HybridDictionary _cachedRoles;

	private readonly string _providerName;

	private int _version;

	private string _cookiePath;

	private DateTime _issueDate;

	private DateTime _expireDate;

	public bool CachedListChanged => _listChanged;

	public string CookiePath => _cookiePath;

	public bool Expired => ExpireDate < DateTime.Now;

	public DateTime ExpireDate => _expireDate;

	public IIdentity Identity => _identity;

	public bool IsRoleListCached
	{
		get
		{
			if (_cachedRoles != null)
			{
				return RoleManagerConfig.CacheRolesInCookie;
			}
			return false;
		}
	}

	public DateTime IssueDate => _issueDate;

	public string ProviderName
	{
		get
		{
			if (!string.IsNullOrEmpty(_providerName))
			{
				return _providerName;
			}
			return Provider.Name;
		}
	}

	public int Version => _version;

	private RoleProvider Provider
	{
		get
		{
			if (string.IsNullOrEmpty(_providerName))
			{
				return Roles.Provider;
			}
			return Roles.Providers[_providerName];
		}
	}

	private RoleManagerSection RoleManagerConfig => (RoleManagerSection)WebConfigurationManager.GetSection("system.web/roleManager");

	private MachineKeySection MachineConfig => (MachineKeySection)WebConfigurationManager.GetSection("system.web/machineKey");

	public RolePrincipal(IIdentity identity)
	{
		_version = 1;
		base._002Ector();
		if (identity == null)
		{
			throw new ArgumentNullException("identity");
		}
		_identity = identity;
		_cookiePath = RoleManagerConfig.CookiePath;
		_issueDate = DateTime.Now;
		_expireDate = _issueDate.Add(RoleManagerConfig.CookieTimeout);
	}

	public RolePrincipal(IIdentity identity, string encryptedTicket)
		: this(identity)
	{
		DecryptTicket(encryptedTicket);
	}

	public RolePrincipal(string providerName, IIdentity identity)
		: this(identity)
	{
		if (providerName == null)
		{
			throw new ArgumentNullException("providerName");
		}
		_providerName = providerName;
	}

	public RolePrincipal(string providerName, IIdentity identity, string encryptedTicket)
		: this(providerName, identity)
	{
		DecryptTicket(encryptedTicket);
	}

	public string[] GetRoles()
	{
		if (!_identity.IsAuthenticated)
		{
			return new string[0];
		}
		if (!IsRoleListCached || Expired)
		{
			_cachedArray = Provider.GetRolesForUser(_identity.Name);
			_cachedRoles = new HybridDictionary(caseInsensitive: true);
			string[] cachedArray = _cachedArray;
			foreach (string text in cachedArray)
			{
				_cachedRoles.Add(text, text);
			}
			_listChanged = true;
		}
		return _cachedArray;
	}

	public bool IsInRole(string role)
	{
		if (!_identity.IsAuthenticated)
		{
			return false;
		}
		GetRoles();
		return _cachedRoles[role] != null;
	}

	public string ToEncryptedTicket()
	{
		string text = string.Join(",", GetRoles());
		string cookiePath = RoleManagerConfig.CookiePath;
		int capacity = text.Length + cookiePath.Length + 64;
		if (_cachedArray.Length > Roles.MaxCachedResults)
		{
			return null;
		}
		MemoryStream memoryStream = new MemoryStream(capacity);
		BinaryWriter binaryWriter = new BinaryWriter(memoryStream);
		binaryWriter.Write(Version);
		binaryWriter.Write(DateTime.Now.Ticks);
		binaryWriter.Write(_expireDate.Ticks);
		binaryWriter.Write(cookiePath);
		binaryWriter.Write(text);
		CookieProtection cookieProtection = RoleManagerConfig.CookieProtection;
		byte[] array = memoryStream.GetBuffer();
		switch (cookieProtection)
		{
		case CookieProtection.All:
			array = MachineKeySectionUtils.EncryptSign(MachineConfig, array);
			break;
		case CookieProtection.Encryption:
			array = MachineKeySectionUtils.Encrypt(MachineConfig, array);
			break;
		case CookieProtection.Validation:
			array = MachineKeySectionUtils.Sign(MachineConfig, array);
			break;
		}
		return GetBase64FromBytes(array, 0, array.Length);
	}

	private void DecryptTicket(string encryptedTicket)
	{
		if (encryptedTicket == null || encryptedTicket == string.Empty)
		{
			throw new ArgumentException("Invalid encrypted ticket", "encryptedTicket");
		}
		byte[] bytesFromBase = GetBytesFromBase64(encryptedTicket);
		byte[] array = null;
		switch (RoleManagerConfig.CookieProtection)
		{
		case CookieProtection.All:
			array = MachineKeySectionUtils.VerifyDecrypt(MachineConfig, bytesFromBase);
			break;
		case CookieProtection.Encryption:
			array = MachineKeySectionUtils.Decrypt(MachineConfig, bytesFromBase);
			break;
		case CookieProtection.Validation:
			array = MachineKeySectionUtils.Verify(MachineConfig, bytesFromBase);
			break;
		}
		if (array == null)
		{
			throw new HttpException("ticket validation failed");
		}
		BinaryReader binaryReader = new BinaryReader(new MemoryStream(array));
		_version = binaryReader.ReadInt32();
		_issueDate = new DateTime(binaryReader.ReadInt64());
		_expireDate = new DateTime(binaryReader.ReadInt64());
		_cookiePath = binaryReader.ReadString();
		string decryptedRoles = binaryReader.ReadString();
		if (!Expired)
		{
			InitializeRoles(decryptedRoles);
			if (Roles.CookieSlidingExpiration && _expireDate - DateTime.Now < TimeSpan.FromTicks(RoleManagerConfig.CookieTimeout.Ticks / 2))
			{
				_issueDate = DateTime.Now;
				_expireDate = DateTime.Now.Add(RoleManagerConfig.CookieTimeout);
				SetDirty();
			}
		}
		else
		{
			_issueDate = DateTime.Now;
			_expireDate = _issueDate.Add(RoleManagerConfig.CookieTimeout);
		}
	}

	private void InitializeRoles(string decryptedRoles)
	{
		_cachedArray = decryptedRoles.Split(',');
		_cachedRoles = new HybridDictionary(caseInsensitive: true);
		string[] cachedArray = _cachedArray;
		foreach (string text in cachedArray)
		{
			_cachedRoles.Add(text, text);
		}
	}

	public void SetDirty()
	{
		_listChanged = true;
		_cachedRoles = null;
		_cachedArray = null;
	}

	private static string GetBase64FromBytes(byte[] bytes, int offset, int len)
	{
		return Convert.ToBase64String(bytes, offset, len);
	}

	private static byte[] GetBytesFromBase64(string base64String)
	{
		return Convert.FromBase64String(base64String);
	}

	protected RolePrincipal(SerializationInfo info, StreamingContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
