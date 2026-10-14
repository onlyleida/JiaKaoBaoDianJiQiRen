using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Configuration;
using System.DirectoryServices.Design;
using System.Runtime.InteropServices;
using Novell.Directory.Ldap;
using Novell.Directory.Ldap.Utilclass;

namespace System.DirectoryServices;

[TypeConverter(typeof(DirectoryEntryConverter))]
public class DirectoryEntry : Component
{
	private static readonly string DEFAULT_LDAP_HOST = "System.DirectoryServices.DefaultLdapHost";

	private static readonly string DEFAULT_LDAP_PORT = "System.DirectoryServices.DefaultLdapPort";

	private LdapConnection _conn;

	private AuthenticationTypes _AuthenticationType;

	private DirectoryEntries _Children;

	private string _Fdn;

	private string _Path = "";

	private string _Name;

	private DirectoryEntry _Parent;

	private string _Username;

	private string _Password;

	private PropertyCollection _Properties;

	private string _SchemaClassName;

	private bool _Nflag;

	private bool _usePropertyCache = true;

	private bool _inPropertiesLoading;

	internal string Fdn
	{
		get
		{
			if (_Fdn == null)
			{
				string dN = new LdapUrl(ADsPath).getDN();
				if (dN != null)
				{
					_Fdn = dN;
				}
				else
				{
					_Fdn = string.Empty;
				}
			}
			return _Fdn;
		}
	}

	internal LdapConnection conn
	{
		get
		{
			if (_conn == null)
			{
				InitBlock();
			}
			return _conn;
		}
		set
		{
			_conn = value;
		}
	}

	internal bool Nflag
	{
		get
		{
			return _Nflag;
		}
		set
		{
			_Nflag = value;
		}
	}

	[DSDescription("Type of authentication to use while Binding to Ldap server")]
	[DefaultValue(AuthenticationTypes.None)]
	public AuthenticationTypes AuthenticationType
	{
		get
		{
			return _AuthenticationType;
		}
		set
		{
			_AuthenticationType = value;
		}
	}

	[DSDescription("Child entries of this node")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public DirectoryEntries Children
	{
		get
		{
			_Children = new DirectoryEntries(ADsPath, conn);
			return _Children;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DSDescription("A globally unique identifier for this DirectoryEntry")]
	[MonoTODO]
	public Guid Guid
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DSDescription("The name of the object as named with the underlying directory")]
	[Browsable(false)]
	public string Name
	{
		get
		{
			if (_Name == null)
			{
				if (!CheckEntry(conn, ADsPath))
				{
					throw new SystemException("There is no such object on the server");
				}
				InitEntry();
			}
			return _Name;
		}
	}

	[DSDescription("This entry's parent in the Ldap Directory hierarchy.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public DirectoryEntry Parent
	{
		get
		{
			if (_Parent == null)
			{
				if (!CheckEntry(conn, ADsPath))
				{
					throw new SystemException("There is no such object on the server");
				}
				InitEntry();
			}
			return _Parent;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DSDescription("The globally unique identifier of the DirectoryEntry, as returned from the provider")]
	[MonoTODO]
	public string NativeGuid
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DSDescription("The native Active Directory Service Interfaces (ADSI) object.")]
	[Browsable(false)]
	public object NativeObject
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DSDescription("An ActiveDirectorySecurity object that represents the security descriptor for this directory entry.")]
	[Browsable(false)]
	public ActiveDirectorySecurity ObjectSecurity
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
		[MonoTODO]
		set
		{
			throw new NotImplementedException();
		}
	}

	[DefaultValue(true)]
	[DSDescription("Determines if a cache should be used.")]
	public bool UsePropertyCache
	{
		get
		{
			return _usePropertyCache;
		}
		set
		{
			_usePropertyCache = value;
		}
	}

	[DSDescription("The provider-specific options for this entry.")]
	[Browsable(false)]
	[MonoTODO]
	public DirectoryEntryConfiguration Options
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[DSDescription("The password to use when authenticating the client.")]
	[DefaultValue(null)]
	[Browsable(false)]
	public string Password
	{
		get
		{
			return _Password;
		}
		set
		{
			_Password = value;
		}
	}

	[Browsable(false)]
	[DSDescription("The user name to use when authenticating the client.")]
	[DefaultValue(null)]
	[TypeConverter("System.Diagnostics.Design.StringValueConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string Username
	{
		get
		{
			return _Username;
		}
		set
		{
			_Username = value;
		}
	}

	[TypeConverter("System.Diagnostics.Design.StringValueConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[RecommendedAsConfigurable(true)]
	[DefaultValue("")]
	[DSDescription("The path for this DirectoryEntry.")]
	public string Path
	{
		get
		{
			return _Path;
		}
		set
		{
			if (value == null)
			{
				_Path = string.Empty;
			}
			else
			{
				_Path = value;
			}
		}
	}

	internal string ADsPath
	{
		get
		{
			if (Path == null || Path == string.Empty)
			{
				DirectoryEntry directoryEntry = new DirectoryEntry();
				directoryEntry.InitToRootDse(null, -1);
				string text = (string)directoryEntry.Properties["defaultNamingContext"].Value;
				if (text == null)
				{
					text = (string)directoryEntry.Properties["namingContexts"].Value;
				}
				return new LdapUrl(DefaultHost, DefaultPort, text).ToString();
			}
			return Path;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DSDescription("Properties set on this object.")]
	public PropertyCollection Properties => GetProperties(forceLoad: true);

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DSDescription("The name of the schema used for this DirectoryEntry.")]
	public string SchemaClassName
	{
		get
		{
			if (_SchemaClassName == null)
			{
				_SchemaClassName = FindAttrValue("structuralObjectClass");
			}
			return _SchemaClassName;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DSDescription("The current schema directory entry.")]
	public DirectoryEntry SchemaEntry
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	private string DefaultHost
	{
		get
		{
			string text = (string)AppDomain.CurrentDomain.GetData(DEFAULT_LDAP_HOST);
			if (text == null)
			{
				NameValueCollection nameValueCollection = (NameValueCollection)ConfigurationSettings.GetConfig("mainsoft.directoryservices/settings");
				if (nameValueCollection != null)
				{
					text = nameValueCollection["servername"];
				}
				if (text == null)
				{
					text = "localhost";
				}
				AppDomain.CurrentDomain.SetData(DEFAULT_LDAP_HOST, text);
			}
			return text;
		}
	}

	private int DefaultPort
	{
		get
		{
			string text = (string)AppDomain.CurrentDomain.GetData(DEFAULT_LDAP_PORT);
			if (text == null)
			{
				NameValueCollection nameValueCollection = (NameValueCollection)ConfigurationSettings.GetConfig("mainsoft.directoryservices/settings");
				if (nameValueCollection != null)
				{
					text = nameValueCollection["port"];
				}
				if (text == null)
				{
					text = "389";
				}
				AppDomain.CurrentDomain.SetData(DEFAULT_LDAP_PORT, text);
			}
			return int.Parse(text);
		}
	}

	private void InitBlock()
	{
		try
		{
			_conn = new LdapConnection();
			LdapUrl ldapUrl = new LdapUrl(ADsPath);
			_conn.Connect(ldapUrl.Host, ldapUrl.Port);
			_conn.Bind(Username, Password, (Novell.Directory.Ldap.AuthenticationTypes)AuthenticationType);
		}
		catch (LdapException ex)
		{
			throw ex;
		}
		catch (Exception ex2)
		{
			throw ex2;
		}
	}

	private void InitEntry()
	{
		LdapUrl ldapUrl = new LdapUrl(ADsPath);
		string dN = ldapUrl.getDN();
		if (dN != null)
		{
			if (string.Compare(dN, "rootDSE", ignoreCase: true) == 0)
			{
				InitToRootDse(ldapUrl.Host, ldapUrl.Port);
				return;
			}
			DN dN2 = new DN(dN);
			string[] array = dN2.explodeDN(noTypes: false);
			_Name = array[0];
			_Parent = new DirectoryEntry(conn);
			_Parent.Path = GetLdapUrlString(ldapUrl.Host, ldapUrl.Port, dN2.Parent.ToString());
		}
		else
		{
			_Name = ldapUrl.Host + ":" + ldapUrl.Port;
			_Parent = new DirectoryEntry(conn);
			_Parent.Path = "Ldap:";
		}
	}

	public DirectoryEntry()
	{
	}

	public DirectoryEntry(object adsObject)
	{
		throw new NotImplementedException();
	}

	public DirectoryEntry(string path)
	{
		_Path = path;
	}

	public DirectoryEntry(string path, string username, string password)
	{
		_Path = path;
		_Username = username;
		_Password = password;
	}

	public DirectoryEntry(string path, string username, string password, AuthenticationTypes authenticationType)
	{
		_Path = path;
		_Username = username;
		_Password = password;
		_AuthenticationType = authenticationType;
	}

	internal DirectoryEntry(LdapConnection lconn)
	{
		conn = lconn;
	}

	private void InitToRootDse(string host, int port)
	{
		if (host == null)
		{
			host = DefaultHost;
		}
		if (port < 0)
		{
			port = DefaultPort;
		}
		LdapUrl ldapUrl = new LdapUrl(host, port, string.Empty);
		string[] propertiesToLoad = new string[2] { "+", "*" };
		SearchResult searchResult = new DirectorySearcher(new DirectoryEntry(ldapUrl.ToString(), Username, Password, AuthenticationType), null, propertiesToLoad, SearchScope.Base).FindOne();
		PropertyCollection propertyCollection = new PropertyCollection();
		foreach (string propertyName in searchResult.Properties.PropertyNames)
		{
			IEnumerator enumerator2 = searchResult.Properties[propertyName].GetEnumerator();
			if (enumerator2 == null)
			{
				continue;
			}
			while (enumerator2.MoveNext())
			{
				if (string.Compare(propertyName, "ADsPath", ignoreCase: true) != 0)
				{
					propertyCollection[propertyName].Add(enumerator2.Current);
				}
			}
		}
		SetProperties(propertyCollection);
		_Name = "rootDSE";
	}

	private void SetProperties(PropertyCollection pcoll)
	{
		_Properties = pcoll;
	}

	private PropertyCollection GetProperties(bool forceLoad)
	{
		if (_Properties == null)
		{
			PropertyCollection properties = new PropertyCollection(this);
			if (forceLoad && !Nflag)
			{
				LoadProperties(properties, null);
			}
			_Properties = properties;
		}
		return _Properties;
	}

	private void LoadProperties(PropertyCollection properties, string[] propertyNames)
	{
		_inPropertiesLoading = true;
		try
		{
			LdapSearchResults ldapSearchResults = conn.Search(Fdn, 0, "objectClass=*", propertyNames, typesOnly: false);
			if (!ldapSearchResults.hasMore())
			{
				return;
			}
			LdapEntry ldapEntry = ldapSearchResults.next();
			string[] array = null;
			int num = 0;
			if (propertyNames != null)
			{
				num = propertyNames.Length;
				array = new string[num];
				for (int i = 0; i < num; i++)
				{
					array[i] = propertyNames[i].ToLower();
				}
			}
			foreach (LdapAttribute item in ldapEntry.getAttributeSet())
			{
				string name = item.Name;
				if (propertyNames == null || Array.IndexOf(array, name.ToLower()) != -1)
				{
					properties[name].Value = null;
					properties[name].AddRange(item.StringValueArray);
					properties[name].Mbit = false;
				}
			}
		}
		finally
		{
			_inPropertiesLoading = false;
		}
	}

	private string FindAttrValue(string attrName)
	{
		string result = null;
		string[] attrs = new string[1] { attrName };
		LdapSearchResults ldapSearchResults = conn.Search(Fdn, 0, "objectClass=*", attrs, typesOnly: false);
		if (ldapSearchResults.hasMore())
		{
			LdapEntry ldapEntry = null;
			try
			{
				ldapEntry = ldapSearchResults.next();
			}
			catch (LdapException ex)
			{
				throw ex;
			}
			result = ldapEntry.getAttribute(attrName).StringValue;
		}
		return result;
	}

	private void ModEntry(LdapModification[] mods)
	{
		try
		{
			conn.Modify(Fdn, mods);
		}
		catch (LdapException ex)
		{
			throw ex;
		}
	}

	private static bool CheckEntry(LdapConnection lconn, string epath)
	{
		string text = new LdapUrl(epath).getDN();
		if (text == null)
		{
			text = string.Empty;
		}
		else if (string.Compare(text, "rootDSE", ignoreCase: true) == 0)
		{
			return true;
		}
		string[] attrs = new string[1] { "objectClass" };
		try
		{
			LdapSearchResults ldapSearchResults = lconn.Search(text, 0, "objectClass=*", attrs, typesOnly: false);
			if (ldapSearchResults.hasMore())
			{
				try
				{
					ldapSearchResults.next();
				}
				catch (LdapException ex)
				{
					throw ex;
				}
			}
		}
		catch (LdapException ex2)
		{
			if (ex2.ResultCode == 32)
			{
				return false;
			}
			throw ex2;
		}
		catch (Exception ex3)
		{
			throw ex3;
		}
		return true;
	}

	public void Close()
	{
		if (_conn != null && _conn.Connected)
		{
			_conn.Disconnect();
		}
	}

	[MonoTODO]
	public DirectoryEntry CopyTo(DirectoryEntry newParent)
	{
		throw new NotImplementedException();
	}

	public void DeleteTree()
	{
		IEnumerator enumerator = Children.GetEnumerator();
		while (enumerator.MoveNext())
		{
			DirectoryEntry directoryEntry = (DirectoryEntry)enumerator.Current;
			conn.Delete(directoryEntry.Fdn);
		}
		conn.Delete(Fdn);
	}

	public static bool Exists(string path)
	{
		LdapConnection ldapConnection = new LdapConnection();
		LdapUrl ldapUrl = new LdapUrl(path);
		ldapConnection.Connect(ldapUrl.Host, ldapUrl.Port);
		ldapConnection.Bind("", "");
		if (CheckEntry(ldapConnection, path))
		{
			return true;
		}
		return false;
	}

	public void MoveTo(DirectoryEntry newParent)
	{
		string fdn = Parent.Fdn;
		conn.Rename(Fdn, Name, newParent.Fdn, deleteOldRdn: true);
		Path = Path.Replace(fdn, newParent.Fdn);
		RefreshEntry();
	}

	public void MoveTo(DirectoryEntry newParent, string newName)
	{
		string fdn = Parent.Fdn;
		conn.Rename(Fdn, newName, newParent.Fdn, deleteOldRdn: true);
		Path = Path.Replace(fdn, newParent.Fdn).Replace(Name, newName);
		RefreshEntry();
	}

	public void Rename(string newName)
	{
		string name = Name;
		conn.Rename(Fdn, newName, deleteOldRdn: true);
		Path = Path.Replace(name, newName);
		RefreshEntry();
	}

	[MonoTODO]
	public object Invoke(string methodName, params object[] args)
	{
		throw new NotImplementedException();
	}

	[ComVisible(false)]
	[MonoNotSupported("")]
	public object InvokeGet(string propertyName)
	{
		throw new NotImplementedException();
	}

	[ComVisible(false)]
	[MonoNotSupported("")]
	public void InvokeSet(string propertyName, params object[] args)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public DirectoryEntry CopyTo(DirectoryEntry newParent, string newName)
	{
		throw new NotImplementedException();
	}

	public void CommitChanges()
	{
		if (UsePropertyCache)
		{
			CommitEntry();
		}
	}

	private void CommitEntry()
	{
		PropertyCollection properties = GetProperties(forceLoad: false);
		if (!Nflag)
		{
			ArrayList arrayList = new ArrayList();
			foreach (string propertyName in properties.PropertyNames)
			{
				LdapAttribute ldapAttribute = null;
				if (properties[propertyName].Mbit)
				{
					switch (properties[propertyName].Count)
					{
					case 0:
						ldapAttribute = new LdapAttribute(propertyName, new string[0]);
						arrayList.Add(new LdapModification(1, ldapAttribute));
						break;
					case 1:
					{
						string attrString = (string)properties[propertyName].Value;
						ldapAttribute = new LdapAttribute(propertyName, attrString);
						arrayList.Add(new LdapModification(2, ldapAttribute));
						break;
					}
					default:
					{
						object[] sourceArray = (object[])properties[propertyName].Value;
						string[] array = new string[properties[propertyName].Count];
						Array.Copy(sourceArray, 0, array, 0, properties[propertyName].Count);
						ldapAttribute = new LdapAttribute(propertyName, array);
						arrayList.Add(new LdapModification(2, ldapAttribute));
						break;
					}
					}
					properties[propertyName].Mbit = false;
				}
			}
			if (arrayList.Count > 0)
			{
				LdapModification[] array2 = new LdapModification[arrayList.Count];
				Type typeFromHandle = typeof(LdapModification);
				array2 = (LdapModification[])arrayList.ToArray(typeFromHandle);
				ModEntry(array2);
			}
			return;
		}
		LdapAttributeSet ldapAttributeSet = new LdapAttributeSet();
		foreach (string propertyName2 in properties.PropertyNames)
		{
			if (properties[propertyName2].Count == 1)
			{
				string attrString2 = (string)properties[propertyName2].Value;
				ldapAttributeSet.Add(new LdapAttribute(propertyName2, attrString2));
				continue;
			}
			object[] sourceArray2 = (object[])properties[propertyName2].Value;
			string[] array3 = new string[properties[propertyName2].Count];
			Array.Copy(sourceArray2, 0, array3, 0, properties[propertyName2].Count);
			ldapAttributeSet.Add(new LdapAttribute(propertyName2, array3));
		}
		LdapEntry entry = new LdapEntry(Fdn, ldapAttributeSet);
		conn.Add(entry);
		Nflag = false;
	}

	internal void CommitDeferred()
	{
		if (!_inPropertiesLoading && !UsePropertyCache && !Nflag)
		{
			CommitEntry();
		}
	}

	private void RefreshEntry()
	{
		_Properties = null;
		_Fdn = null;
		_Name = null;
		_Parent = null;
		_SchemaClassName = null;
		InitEntry();
	}

	public void RefreshCache()
	{
		PropertyCollection properties = new PropertyCollection();
		LoadProperties(properties, null);
		SetProperties(properties);
	}

	public void RefreshCache(string[] propertyNames)
	{
		LoadProperties(GetProperties(forceLoad: false), propertyNames);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			Close();
		}
		base.Dispose(disposing);
	}

	internal static string GetLdapUrlString(string host, int port, string dn)
	{
		LdapUrl ldapUrl = ((port != 389) ? new LdapUrl(host, port, dn) : new LdapUrl(host, 0, dn));
		return ldapUrl.ToString();
	}
}
