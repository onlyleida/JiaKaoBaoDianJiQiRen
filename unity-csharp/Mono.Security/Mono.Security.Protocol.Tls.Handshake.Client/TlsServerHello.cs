using System;

namespace Mono.Security.Protocol.Tls.Handshake.Client;

internal class TlsServerHello : HandshakeMessage
{
	private SecurityCompressionType compressionMethod;

	private byte[] random;

	private byte[] sessionId;

	private CipherSuite cipherSuite;

	public TlsServerHello(Context context, byte[] buffer)
		: base(context, HandshakeType.ServerHello, buffer)
	{
	}

	public override void Update()
	{
		base.Update();
		Context.SessionId = sessionId;
		Context.ServerRandom = random;
		Context.Negotiating.Cipher = cipherSuite;
		Context.CompressionMethod = compressionMethod;
		Context.ProtocolNegotiated = true;
		int num = Context.ClientRandom.Length;
		int num2 = Context.ServerRandom.Length;
		int num3 = num + num2;
		byte[] array = new byte[num3];
		Buffer.BlockCopy(Context.ClientRandom, 0, array, 0, num);
		Buffer.BlockCopy(Context.ServerRandom, 0, array, num, num2);
		Context.RandomCS = array;
		byte[] array2 = new byte[num3];
		Buffer.BlockCopy(Context.ServerRandom, 0, array2, 0, num2);
		Buffer.BlockCopy(Context.ClientRandom, 0, array2, num2, num);
		Context.RandomSC = array2;
	}

	protected override void ProcessAsSsl3()
	{
		ProcessAsTls1();
	}

	protected override void ProcessAsTls1()
	{
		processProtocol(ReadInt16());
		random = ReadBytes(32);
		int num = ReadByte();
		if (num > 0)
		{
			sessionId = ReadBytes(num);
			ClientSessionCache.Add(Context.ClientSettings.TargetHost, sessionId);
			Context.AbbreviatedHandshake = HandshakeMessage.Compare(sessionId, Context.SessionId);
		}
		else
		{
			Context.AbbreviatedHandshake = false;
		}
		short code = ReadInt16();
		if (Context.SupportedCiphers.IndexOf(code) == -1)
		{
			throw new TlsException(AlertDescription.InsuficientSecurity, "Invalid cipher suite received from server");
		}
		cipherSuite = Context.SupportedCiphers[code];
		compressionMethod = (SecurityCompressionType)ReadByte();
	}

	private void processProtocol(short protocol)
	{
		SecurityProtocolType securityProtocolType = Context.DecodeProtocolCode(protocol);
		if ((securityProtocolType & Context.SecurityProtocolFlags) == securityProtocolType || (Context.SecurityProtocolFlags & SecurityProtocolType.Default) == SecurityProtocolType.Default)
		{
			Context.SecurityProtocol = securityProtocolType;
			Context.SupportedCiphers = CipherSuiteFactory.GetSupportedCiphers(server: false, securityProtocolType);
			return;
		}
		throw new TlsException(AlertDescription.ProtocolVersion, "Incorrect protocol version received from server");
	}
}
