using System.Collections;
using Novell.Directory.Ldap;
using Unity;

namespace System.DirectoryServices;

public class DirectoryEntries : IEnumerable
{
	private LdapConnection _Conn;

	private string _Bpath;

	private string _Buser;

	private string _Bpass;

	private string _Basedn;

	private ArrayList m_oValues;

	internal string Basedn
	{
		get
		{
			if (_Basedn == null)
			{
				string dN = new LdapUrl(_Bpath).getDN();
				if (dN != null)
				{
					_Basedn = dN;
				}
				else
				{
					_Basedn = "";
				}
			}
			return _Basedn;
		}
	}

	internal string Bpath
	{
		get
		{
			return _Bpath;
		}
		set
		{
			_Bpath = value;
		}
	}

	internal LdapConnection Conn
	{
		get
		{
			if (_Conn == null)
			{
				InitBlock();
			}
			return _Conn;
		}
		set
		{
			_Conn = value;
		}
	}

	public SchemaNameCollection SchemaFilter
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException("System.DirectoryServices.DirectoryEntries.SchemaFilter");
		}
	}

	private void InitBlock()
	{
		try
		{
			LdapUrl ldapUrl = new LdapUrl(_Bpath);
			_Conn = new LdapConnection();
			_Conn.Connect(ldapUrl.Host, ldapUrl.Port);
			_Conn.Bind(_Buser, _Bpass);
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

	internal DirectoryEntries(string path, string uname, string passwd)
	{
		_Bpath = path;
		_Buser = uname;
		_Bpass = passwd;
	}

	internal DirectoryEntries(string path, LdapConnection lc)
	{
		_Bpath = path;
		_Conn = lc;
	}

	public IEnumerator GetEnumerator()
	{
		m_oValues = new ArrayList();
		string[] attrs = new string[1] { "objectClass" };
		LdapSearchResults ldapSearchResults = Conn.Search(Basedn, 1, "objectClass=*", attrs, typesOnly: false);
		LdapUrl ldapUrl = new LdapUrl(_Bpath);
		string host = ldapUrl.Host;
		int port = ldapUrl.Port;
		while (ldapSearchResults.hasMore())
		{
			LdapEntry ldapEntry = null;
			try
			{
				ldapEntry = ldapSearchResults.next();
			}
			catch (LdapException)
			{
				continue;
			}
			DirectoryEntry directoryEntry = new DirectoryEntry(Conn);
			string dN = ldapEntry.DN;
			LdapUrl ldapUrl2 = new LdapUrl(host, port, dN);
			directoryEntry.Path = ldapUrl2.ToString();
			m_oValues.Add(directoryEntry);
		}
		return m_oValues.GetEnumerator();
	}

	public DirectoryEntry Add(string name, string schemaClassName)
	{
		DirectoryEntry directoryEntry = new DirectoryEntry(Conn);
		LdapUrl ldapUrl = new LdapUrl(_Bpath);
		string dN = ldapUrl.getDN();
		LdapUrl ldapUrl2 = new LdapUrl(dn: (dN != null && dN.Length != 0) ? (name + "," + dN) : name, host: ldapUrl.Host, port: ldapUrl.Port);
		directoryEntry.Path = ldapUrl2.ToString();
		directoryEntry.Nflag = true;
		return directoryEntry;
	}

	public void Remove(DirectoryEntry entry)
	{
		LdapUrl ldapUrl = new LdapUrl(_Bpath);
		string dn = entry.Name + "," + ldapUrl.getDN();
		Conn.Delete(dn);
	}

	public DirectoryEntry Find(string name)
	{
		return CheckEntry(name);
	}

	public DirectoryEntry Find(string name, string schemaClassName)
	{
		DirectoryEntry directoryEntry = CheckEntry(name);
		if (directoryEntry != null)
		{
			if (directoryEntry.Properties["objectclass"].ContainsCaselessStringValue(schemaClassName))
			{
				return directoryEntry;
			}
			throw new SystemException("An unknown directory object was requested");
		}
		return directoryEntry;
	}

	private DirectoryEntry CheckEntry(string rdn)
	{
		string text = null;
		DirectoryEntry directoryEntry = null;
		text = rdn + "," + Basedn;
		string[] attrs = new string[1] { "objectClass" };
		try
		{
			LdapSearchResults ldapSearchResults = Conn.Search(text, 0, "objectClass=*", attrs, typesOnly: false);
			if (ldapSearchResults.hasMore())
			{
				try
				{
					ldapSearchResults.next();
					directoryEntry = new DirectoryEntry(Conn);
					LdapUrl ldapUrl = new LdapUrl(_Bpath);
					LdapUrl ldapUrl2 = new LdapUrl(ldapUrl.Host, ldapUrl.Port, text);
					directoryEntry.Path = ldapUrl2.ToString();
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
				return null;
			}
			throw ex2;
		}
		catch (Exception ex3)
		{
			throw ex3;
		}
		return directoryEntry;
	}

	internal DirectoryEntries()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
