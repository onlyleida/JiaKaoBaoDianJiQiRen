namespace System.Web.UI;

public sealed class OutputCacheParameters
{
	private string _cacheProfile;

	private int _duration;

	private bool _enabled;

	private OutputCacheLocation _location;

	private bool _noStore;

	private string _sqlDependency;

	private string _varByControl;

	private string _varByCustom;

	private string _varByHeader;

	private string _varByParam;

	private string _varyByContentEncoding;

	public string CacheProfile
	{
		get
		{
			return _cacheProfile;
		}
		set
		{
			_cacheProfile = value;
		}
	}

	public int Duration
	{
		get
		{
			return _duration;
		}
		set
		{
			_duration = value;
		}
	}

	public bool Enabled
	{
		get
		{
			return _enabled;
		}
		set
		{
			_enabled = value;
		}
	}

	public OutputCacheLocation Location
	{
		get
		{
			return _location;
		}
		set
		{
			_location = value;
		}
	}

	public bool NoStore
	{
		get
		{
			return _noStore;
		}
		set
		{
			_noStore = value;
		}
	}

	public string SqlDependency
	{
		get
		{
			return _sqlDependency;
		}
		set
		{
			_sqlDependency = value;
		}
	}

	public string VaryByContentEncoding
	{
		get
		{
			return _varyByContentEncoding;
		}
		set
		{
			_varyByContentEncoding = value;
		}
	}

	public string VaryByControl
	{
		get
		{
			return _varByControl;
		}
		set
		{
			_varByControl = value;
		}
	}

	public string VaryByCustom
	{
		get
		{
			return _varByCustom;
		}
		set
		{
			_varByCustom = value;
		}
	}

	public string VaryByHeader
	{
		get
		{
			return _varByHeader;
		}
		set
		{
			_varByHeader = value;
		}
	}

	public string VaryByParam
	{
		get
		{
			return _varByParam;
		}
		set
		{
			_varByParam = value;
		}
	}

	public OutputCacheParameters()
	{
		Duration = 0;
		Enabled = true;
		Location = OutputCacheLocation.Any;
		NoStore = false;
	}
}
