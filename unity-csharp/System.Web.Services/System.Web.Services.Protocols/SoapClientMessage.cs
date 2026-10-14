using System.Runtime.InteropServices;
using Unity;

namespace System.Web.Services.Protocols;

public sealed class SoapClientMessage : SoapMessage
{
	private SoapClientMethod method;

	private SoapHttpClientProtocol protocol;

	private string url;

	internal SoapExtension[] initializedExtensions;

	public override bool OneWay => method.oneWay;

	public SoapHttpClientProtocol Client => protocol;

	public override LogicalMethodInfo MethodInfo => method.methodInfo;

	public override string Url => url;

	public override string Action => method.action;

	[ComVisible(false)]
	public override SoapProtocolVersion SoapVersion
	{
		get
		{
			if (protocol.SoapVersion != SoapProtocolVersion.Default)
			{
				return protocol.SoapVersion;
			}
			return SoapProtocolVersion.Soap11;
		}
	}

	internal SoapClientMethod Method => method;

	internal SoapClientMessage(SoapHttpClientProtocol protocol, SoapClientMethod method, string url)
	{
		this.method = method;
		this.protocol = protocol;
		this.url = url;
	}

	protected override void EnsureOutStage()
	{
		EnsureStage(SoapMessageStage.AfterDeserialize);
	}

	protected override void EnsureInStage()
	{
		EnsureStage(SoapMessageStage.BeforeSerialize);
	}

	internal SoapClientMessage()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
