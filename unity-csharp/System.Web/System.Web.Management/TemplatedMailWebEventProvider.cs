using Unity;

namespace System.Web.Management;

public sealed class TemplatedMailWebEventProvider : MailWebEventProvider
{
	public static MailEventNotificationInfo CurrentNotification
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal TemplatedMailWebEventProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
