using System.Runtime.InteropServices;
using Unity;

namespace System.Web.Services.Protocols;

public sealed class SoapServerMessage : SoapMessage
{
	private SoapServerProtocol protocol;

	internal SoapExtension[] highPriConfigExtensions;

	internal SoapExtension[] otherExtensions;

	internal SoapExtension[] allExtensions;

	public override bool OneWay => protocol.ServerMethod.oneWay;

	public override string Url => RuntimeUtils.EscapeUri(protocol.Request.Url);

	public override string Action => protocol.ServerMethod.action;

	[ComVisible(false)]
	public override SoapProtocolVersion SoapVersion => protocol.Version;

	public object Server
	{
		get
		{
			EnsureStage((SoapMessageStage)9);
			return protocol.Target;
		}
	}

	public override LogicalMethodInfo MethodInfo => protocol.MethodInfo;

	internal SoapServerMessage(SoapServerProtocol protocol)
	{
		this.protocol = protocol;
	}

	protected override void EnsureOutStage()
	{
		EnsureStage(SoapMessageStage.BeforeSerialize);
	}

	protected override void EnsureInStage()
	{
		EnsureStage(SoapMessageStage.AfterDeserialize);
	}

	internal SoapServerMessage()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
