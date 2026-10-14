using System.Security.Permissions;
using Unity;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class PartialCachingAttribute : Attribute
{
	private int duration;

	private string varyByControls;

	private string varyByCustom;

	private string varyByParams;

	private bool shared;

	private string sqlDependency;

	public int Duration
	{
		get
		{
			return duration;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string ProviderName { get; set; }

	public string VaryByParams
	{
		get
		{
			return varyByParams;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string VaryByControls
	{
		get
		{
			return varyByControls;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string VaryByCustom
	{
		get
		{
			return varyByCustom;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool Shared
	{
		get
		{
			return shared;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string SqlDependency
	{
		get
		{
			return sqlDependency;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public PartialCachingAttribute(int duration)
	{
		this.duration = duration;
	}

	public PartialCachingAttribute(int duration, string varyByParams, string varyByControls, string varyByCustom)
	{
		this.duration = duration;
		this.varyByParams = varyByParams;
		this.varyByControls = varyByControls;
		this.varyByCustom = varyByCustom;
	}

	public PartialCachingAttribute(int duration, string varyByParams, string varyByControls, string varyByCustom, bool shared)
	{
		this.duration = duration;
		this.varyByParams = varyByParams;
		this.varyByControls = varyByControls;
		this.varyByCustom = varyByCustom;
		this.shared = shared;
	}

	public PartialCachingAttribute(int duration, string varyByParams, string varyByControls, string varyByCustom, string sqlDependency, bool shared)
	{
		this.duration = duration;
		this.varyByParams = varyByParams;
		this.varyByControls = varyByControls;
		this.varyByCustom = varyByCustom;
		this.sqlDependency = sqlDependency;
		this.shared = shared;
	}
}
