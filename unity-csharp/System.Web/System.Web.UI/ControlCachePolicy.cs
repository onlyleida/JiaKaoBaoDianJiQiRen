using System.Web.Caching;

namespace System.Web.UI;

public sealed class ControlCachePolicy
{
	private BasePartialCachingControl bpcc;

	private bool cached;

	public bool Cached
	{
		get
		{
			AssertBasePartialCachingControl();
			return cached;
		}
		set
		{
			AssertBasePartialCachingControl();
			cached = value;
		}
	}

	public CacheDependency Dependency
	{
		get
		{
			AssertBasePartialCachingControl();
			return bpcc.Dependency;
		}
		set
		{
			AssertBasePartialCachingControl();
			bpcc.Dependency = value;
		}
	}

	public TimeSpan Duration
	{
		get
		{
			AssertBasePartialCachingControl();
			return TimeSpan.FromMinutes(bpcc.Duration);
		}
		set
		{
			AssertBasePartialCachingControl();
			bpcc.Duration = value.Minutes;
		}
	}

	public string ProviderName
	{
		get
		{
			AssertBasePartialCachingControl();
			return bpcc.ProviderName;
		}
		set
		{
			AssertBasePartialCachingControl();
			bpcc.ProviderName = value;
		}
	}

	public bool SupportsCaching => bpcc != null;

	public string VaryByControl
	{
		get
		{
			AssertBasePartialCachingControl();
			return bpcc.VaryByControls;
		}
		set
		{
			AssertBasePartialCachingControl();
			bpcc.VaryByControls = value;
		}
	}

	public HttpCacheVaryByParams VaryByParams
	{
		get
		{
			AssertBasePartialCachingControl();
			throw new NotImplementedException();
		}
	}

	internal ControlCachePolicy()
		: this(null)
	{
	}

	internal ControlCachePolicy(BasePartialCachingControl bpcc)
	{
		this.bpcc = bpcc;
	}

	public void SetExpires(DateTime expirationTime)
	{
		AssertBasePartialCachingControl();
		bpcc.ExpirationTime = expirationTime;
	}

	public void SetSlidingExpiration(bool useSlidingExpiration)
	{
		AssertBasePartialCachingControl();
		bpcc.SlidingExpiration = useSlidingExpiration;
	}

	public void SetVaryByCustom(string varyByCustom)
	{
		AssertBasePartialCachingControl();
		bpcc.VaryByCustom = varyByCustom;
	}

	private void AssertBasePartialCachingControl()
	{
		if (bpcc == null)
		{
			throw new HttpException("The user control is not associated with a 'BasePartialCachingControl' and is not cacheable.");
		}
	}
}
