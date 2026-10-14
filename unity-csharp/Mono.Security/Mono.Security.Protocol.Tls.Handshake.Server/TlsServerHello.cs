namespace Mono.Security.Protocol.Tls.Handshake.Server;

internal class TlsServerHello : HandshakeMessage
{
	private int unixTime;

	private byte[] random;

	public TlsServerHello(Context context)
		: base(context, HandshakeType.ServerHello)
	{
	}

	public override void Update()
	{
		base.Update();
		TlsStream tlsStream = new TlsStream();
		tlsStream.Write(unixTime);
		tlsStream.Write(random);
		Context.ServerRandom = tlsStream.ToArray();
		tlsStream.Reset();
		tlsStream.Write(Context.ClientRandom);
		tlsStream.Write(Context.ServerRandom);
		Context.RandomCS = tlsStream.ToArray();
		tlsStream.Reset();
		tlsStream.Write(Context.ServerRandom);
		tlsStream.Write(Context.ClientRandom);
		Context.RandomSC = tlsStream.ToArray();
		tlsStream.Reset();
	}

	protected override void ProcessAsSsl3()
	{
		ProcessAsTls1();
	}

	protected override void ProcessAsTls1()
	{
		Write(Context.Protocol);
		unixTime = Context.GetUnixTime();
		Write(unixTime);
		random = Context.GetSecureRandomBytes(28);
		Write(random);
		if (Context.SessionId == null)
		{
			WriteByte(0);
		}
		else
		{
			WriteByte((byte)Context.SessionId.Length);
			Write(Context.SessionId);
		}
		Write(Context.Negotiating.Cipher.Code);
		WriteByte((byte)Context.CompressionMethod);
	}
}
