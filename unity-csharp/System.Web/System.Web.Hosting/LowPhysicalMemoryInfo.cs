using Unity;

namespace System.Web.Hosting;

public sealed class LowPhysicalMemoryInfo
{
	public int CurrentPercentUsed
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int PercentLimit
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool RequestGC
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

	public LowPhysicalMemoryInfo(int currentPercentUsed, int percentLimit)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
