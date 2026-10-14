using System.Net.Mail;
using Unity;

namespace System.Web.Management;

public sealed class MailEventNotificationInfo
{
	public WebBaseEventCollection Events
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int EventsDiscardedByBuffer
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int EventsDiscardedDueToMessageLimit
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

	public int EventsInNotification
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int EventsRemaining
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

	public MailMessage Message
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int MessageSequence
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int MessagesInNotification
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

	internal MailEventNotificationInfo()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
