using System.Security.Cryptography;
using Mono.Security.Cryptography;

namespace Mono.Security.Protocol.Tls.Handshake.Client;

internal class TlsClientKeyExchange : HandshakeMessage
{
	public TlsClientKeyExchange(Context context)
		: base(context, HandshakeType.ClientKeyExchange)
	{
	}

	protected override void ProcessAsSsl3()
	{
		ProcessCommon(sendLength: false);
	}

	protected override void ProcessAsTls1()
	{
		ProcessCommon(sendLength: true);
	}

	public void ProcessCommon(bool sendLength)
	{
		byte[] array = Context.Negotiating.Cipher.CreatePremasterSecret();
		RSA rSA = null;
		if (Context.ServerSettings.ServerKeyExchange)
		{
			rSA = new RSAManaged();
			rSA.ImportParameters(Context.ServerSettings.RsaParameters);
		}
		else
		{
			rSA = Context.ServerSettings.CertificateRSA;
		}
		byte[] array2 = new RSAPKCS1KeyExchangeFormatter(rSA).CreateKeyExchange(array);
		if (sendLength)
		{
			Write((short)array2.Length);
		}
		Write(array2);
		Context.Negotiating.Cipher.ComputeMasterSecret(array);
		Context.Negotiating.Cipher.ComputeKeys();
		rSA.Clear();
	}
}
