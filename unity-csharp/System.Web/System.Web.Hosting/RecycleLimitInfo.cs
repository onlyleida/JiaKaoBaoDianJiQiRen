using Unity;

namespace System.Web.Hosting;

public sealed class RecycleLimitInfo
{
	public long CurrentPrivateBytes
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public long RecycleLimit
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

	public RecycleLimitNotificationFrequency TrimFrequency
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public RecycleLimitInfo(long currentPrivateBytes, long recycleLimit, RecycleLimitNotificationFrequency recycleLimitNearFrequency)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
