using System.IO;

namespace System.Web.Services.Protocols;

public abstract class SoapExtension
{
	public abstract object GetInitializer(LogicalMethodInfo methodInfo, SoapExtensionAttribute attribute);

	public abstract object GetInitializer(Type serviceType);

	public abstract void Initialize(object initializer);

	public abstract void ProcessMessage(SoapMessage message);

	public virtual Stream ChainStream(Stream stream)
	{
		return stream;
	}
}
