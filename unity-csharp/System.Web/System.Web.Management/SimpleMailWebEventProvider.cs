using Unity;

namespace System.Web.Management;

public sealed class SimpleMailWebEventProvider : MailWebEventProvider
{
	internal SimpleMailWebEventProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
