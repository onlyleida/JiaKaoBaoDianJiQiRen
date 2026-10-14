using System.Net;
using System.Text;

namespace Mono.Security.Protocol.Tls.Handshake.Client;

internal class TlsClientHello : HandshakeMessage
{
	private byte[] random;

	public TlsClientHello(Context context)
		: base(context, HandshakeType.ClientHello)
	{
	}

	public override void Update()
	{
		ClientContext clientContext = (ClientContext)Context;
		base.Update();
		clientContext.ClientRandom = random;
		clientContext.ClientHelloProtocol = Context.Protocol;
		random = null;
	}

	protected override void ProcessAsSsl3()
	{
		Write(Context.Protocol);
		TlsStream tlsStream = new TlsStream();
		tlsStream.Write(Context.GetUnixTime());
		tlsStream.Write(Context.GetSecureRandomBytes(28));
		random = tlsStream.ToArray();
		tlsStream.Reset();
		Write(random);
		Context.SessionId = ClientSessionCache.FromHost(Context.ClientSettings.TargetHost);
		if (Context.SessionId != null)
		{
			Write((byte)Context.SessionId.Length);
			if (Context.SessionId.Length != 0)
			{
				Write(Context.SessionId);
			}
		}
		else
		{
			Write((byte)0);
		}
		Write((short)(Context.SupportedCiphers.Count * 2));
		for (int i = 0; i < Context.SupportedCiphers.Count; i++)
		{
			Write(Context.SupportedCiphers[i].Code);
		}
		Write((byte)1);
		Write((byte)Context.CompressionMethod);
	}

	protected override void ProcessAsTls1()
	{
		ProcessAsSsl3();
		string targetHost = Context.ClientSettings.TargetHost;
		if (!IPAddress.TryParse(targetHost, out var _))
		{
			TlsStream tlsStream = new TlsStream();
			byte[] bytes = Encoding.UTF8.GetBytes(targetHost);
			tlsStream.Write((short)0);
			tlsStream.Write((short)(bytes.Length + 5));
			tlsStream.Write((short)(bytes.Length + 3));
			tlsStream.Write((byte)0);
			tlsStream.Write((short)bytes.Length);
			tlsStream.Write(bytes);
			Write((short)tlsStream.Length);
			Write(tlsStream.ToArray());
		}
	}
}
