using Unity;

namespace System.Web.Management;

public sealed class WebEventBufferFlushInfo
{
	public WebBaseEventCollection Events
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int EventsDiscardedSinceLastNotification
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int EventsInBuffer
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public DateTime LastNotificationUtc
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int NotificationSequence
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public EventNotificationType NotificationType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal WebEventBufferFlushInfo()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
