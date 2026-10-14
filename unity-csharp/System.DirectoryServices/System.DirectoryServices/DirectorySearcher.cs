using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using Novell.Directory.Ldap;
using Unity;

namespace System.DirectoryServices;

public class DirectorySearcher : Component
{
	private static readonly TimeSpan DefaultTimeSpan = new TimeSpan(-10000000L);

	private DirectoryEntry _SearchRoot;

	private bool _CacheResults = true;

	private TimeSpan _ClientTimeout = DefaultTimeSpan;

	private string _Filter = "(objectClass=*)";

	private int _PageSize;

	private StringCollection _PropertiesToLoad = new StringCollection();

	private bool _PropertyNamesOnly;

	private ReferralChasingOption _ReferralChasing = ReferralChasingOption.External;

	private SearchScope _SearchScope = SearchScope.Subtree;

	private TimeSpan _ServerPageTimeLimit = DefaultTimeSpan;

	private TimeSpan _serverTimeLimit = DefaultTimeSpan;

	private int _SizeLimit;

	private LdapConnection _conn;

	private string _Host;

	private int _Port = 389;

	private SearchResultCollection _SrchColl;

	internal SearchResultCollection SrchColl
	{
		get
		{
			if (_SrchColl == null)
			{
				_SrchColl = new SearchResultCollection();
				DoSearch();
			}
			return _SrchColl;
		}
	}

	[DefaultValue(true)]
	[DSDescription("The cacheability of results.")]
	public bool CacheResults
	{
		get
		{
			return _CacheResults;
		}
		set
		{
			_CacheResults = value;
		}
	}

	[DSDescription("The maximum amount of time that the client waits for the server to return results.")]
	public TimeSpan ClientTimeout
	{
		get
		{
			return _ClientTimeout;
		}
		set
		{
			_ClientTimeout = value;
		}
	}

	[DefaultValue("(objectClass=*)")]
	[DSDescription("The Lightweight Directory Access Protocol (Ldap) format filter string.")]
	[RecommendedAsConfigurable(true)]
	[TypeConverter("System.Diagnostics.Design.StringValueConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string Filter
	{
		get
		{
			return _Filter;
		}
		set
		{
			_Filter = value;
			ClearCachedResults();
		}
	}

	[DefaultValue(0)]
	[DSDescription("The page size in a paged search.")]
	public int PageSize
	{
		get
		{
			return _PageSize;
		}
		set
		{
			_PageSize = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DSDescription("The set of properties retrieved during the search.")]
	[Editor("System.Windows.Forms.Design.StringCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public StringCollection PropertiesToLoad => _PropertiesToLoad;

	[DefaultValue(false)]
	[DSDescription("A value indicating whether the search retrieves only the names of attributes to which values have been assigned.")]
	public bool PropertyNamesOnly
	{
		get
		{
			return _PropertyNamesOnly;
		}
		set
		{
			_PropertyNamesOnly = value;
		}
	}

	[DSDescription("How referrals are chased.")]
	[DefaultValue(ReferralChasingOption.External)]
	public ReferralChasingOption ReferralChasing
	{
		get
		{
			return _ReferralChasing;
		}
		set
		{
			_ReferralChasing = value;
		}
	}

	[DSDescription("The node in the Ldap Directory hierarchy where the search starts.")]
	[DefaultValue(null)]
	public DirectoryEntry SearchRoot
	{
		get
		{
			return _SearchRoot;
		}
		set
		{
			_SearchRoot = value;
			ClearCachedResults();
		}
	}

	[DSDescription("The scope of the search that is observed by the server.")]
	[RecommendedAsConfigurable(true)]
	[DefaultValue(SearchScope.Subtree)]
	public SearchScope SearchScope
	{
		get
		{
			return _SearchScope;
		}
		set
		{
			_SearchScope = value;
			ClearCachedResults();
		}
	}

	[DSDescription("The time limit the server should observe to search an individual page of results.")]
	public TimeSpan ServerPageTimeLimit
	{
		get
		{
			return _ServerPageTimeLimit;
		}
		set
		{
			_ServerPageTimeLimit = value;
		}
	}

	[DSDescription("The time limit the server should observe to search.")]
	public TimeSpan ServerTimeLimit
	{
		[MonoTODO]
		get
		{
			return _serverTimeLimit;
		}
		[MonoTODO]
		set
		{
			_serverTimeLimit = value;
		}
	}

	[DSDescription("The maximum number of objects the server returns in a search.")]
	[DefaultValue(0)]
	public int SizeLimit
	{
		get
		{
			return _SizeLimit;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentException();
			}
			_SizeLimit = value;
		}
	}

	[TypeConverter(typeof(ExpandableObjectConverter))]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DSDescription("An object that defines how the data should be sorted.")]
	public SortOption Sort
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

	public bool Asynchronous
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string AttributeScopeQuery
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DereferenceAlias DerefAlias
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DirectorySynchronization DirectorySynchronization
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ExtendedDN ExtendedDN
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public SecurityMasks SecurityMasks
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool Tombstone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DirectoryVirtualListView VirtualListView
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	private void InitBlock()
	{
		_conn = new LdapConnection();
		LdapUrl ldapUrl = new LdapUrl(SearchRoot.ADsPath);
		_Host = ldapUrl.Host;
		_Port = ldapUrl.Port;
		_conn.Connect(_Host, _Port);
		_conn.Bind(SearchRoot.Username, SearchRoot.Password, (Novell.Directory.Ldap.AuthenticationTypes)SearchRoot.AuthenticationType);
	}

	public DirectorySearcher()
	{
	}

	public DirectorySearcher(DirectoryEntry searchRoot)
	{
		_SearchRoot = searchRoot;
	}

	public DirectorySearcher(string filter)
	{
		_Filter = filter;
	}

	public DirectorySearcher(DirectoryEntry searchRoot, string filter)
	{
		_SearchRoot = searchRoot;
		_Filter = filter;
	}

	public DirectorySearcher(string filter, string[] propertiesToLoad)
	{
		_Filter = filter;
		PropertiesToLoad.AddRange(propertiesToLoad);
	}

	public DirectorySearcher(DirectoryEntry searchRoot, string filter, string[] propertiesToLoad)
	{
		_SearchRoot = searchRoot;
		_Filter = filter;
		PropertiesToLoad.AddRange(propertiesToLoad);
	}

	public DirectorySearcher(string filter, string[] propertiesToLoad, SearchScope scope)
	{
		_SearchScope = scope;
		_Filter = filter;
		PropertiesToLoad.AddRange(propertiesToLoad);
	}

	public DirectorySearcher(DirectoryEntry searchRoot, string filter, string[] propertiesToLoad, SearchScope scope)
	{
		_SearchRoot = searchRoot;
		_SearchScope = scope;
		_Filter = filter;
		PropertiesToLoad.AddRange(propertiesToLoad);
	}

	public SearchResult FindOne()
	{
		if (SrchColl.Count == 0)
		{
			return null;
		}
		return SrchColl[0];
	}

	public SearchResultCollection FindAll()
	{
		return SrchColl;
	}

	private void DoSearch()
	{
		InitBlock();
		string[] array = new string[PropertiesToLoad.Count];
		PropertiesToLoad.CopyTo(array, 0);
		LdapSearchConstraints searchConstraints = _conn.SearchConstraints;
		if (SizeLimit > 0)
		{
			searchConstraints.MaxResults = SizeLimit;
		}
		if (ServerTimeLimit != DefaultTimeSpan)
		{
			searchConstraints.ServerTimeLimit = (int)ServerTimeLimit.TotalSeconds;
		}
		int num = 2;
		num = _SearchScope switch
		{
			SearchScope.Base => 0, 
			SearchScope.OneLevel => 1, 
			SearchScope.Subtree => 2, 
			_ => 2, 
		};
		LdapSearchResults ldapSearchResults = _conn.Search(SearchRoot.Fdn, num, Filter, array, PropertyNamesOnly, searchConstraints);
		while (ldapSearchResults.hasMore())
		{
			LdapEntry ldapEntry = null;
			try
			{
				ldapEntry = ldapSearchResults.next();
			}
			catch (LdapException ex)
			{
				int resultCode = ex.ResultCode;
				if ((uint)(resultCode - 3) <= 1u || resultCode == 10)
				{
					continue;
				}
				throw ex;
			}
			DirectoryEntry directoryEntry = new DirectoryEntry(_conn);
			PropertyCollection propertyCollection = new PropertyCollection();
			directoryEntry.Path = DirectoryEntry.GetLdapUrlString(_Host, _Port, ldapEntry.DN);
			IEnumerator enumerator = ldapEntry.getAttributeSet().GetEnumerator();
			if (enumerator != null)
			{
				while (enumerator.MoveNext())
				{
					LdapAttribute ldapAttribute = (LdapAttribute)enumerator.Current;
					string name = ldapAttribute.Name;
					propertyCollection[name].AddRange(ldapAttribute.StringValueArray);
				}
			}
			if (!propertyCollection.Contains("ADsPath"))
			{
				propertyCollection["ADsPath"].Add(directoryEntry.Path);
			}
			_SrchColl.Add(new SearchResult(directoryEntry, propertyCollection));
		}
	}

	[MonoTODO]
	protected override void Dispose(bool disposing)
	{
		if (disposing && _conn != null && _conn.Connected)
		{
			_conn.Disconnect();
		}
		base.Dispose(disposing);
	}

	private void ClearCachedResults()
	{
		_SrchColl = null;
	}
}
