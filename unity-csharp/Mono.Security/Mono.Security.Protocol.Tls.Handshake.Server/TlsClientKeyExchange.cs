using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;

namespace Mono.Security.Protocol.Tls.Handshake.Server;

internal class TlsClientKeyExchange : HandshakeMessage
{
	public TlsClientKeyExchange(Context context, byte[] buffer)
		: base(context, HandshakeType.ClientKeyExchange, buffer)
	{
	}

	protected override void ProcessAsSsl3()
	{
		ServerContext serverContext = (ServerContext)Context;
		AsymmetricAlgorithm key = serverContext.SslStream.RaisePrivateKeySelection(new X509Certificate(serverContext.ServerSettings.Certificates[0].RawData), null) ?? throw new TlsException(AlertDescription.UserCancelled, "Server certificate Private Key unavailable.");
		byte[] rgb = ReadBytes((int)Length);
		byte[] preMasterSecret = new RSAPKCS1KeyExchangeDeformatter(key).DecryptKeyExchange(rgb);
		Context.Negotiating.Cipher.ComputeMasterSecret(preMasterSecret);
		Context.Negotiating.Cipher.ComputeKeys();
		Context.Negotiating.Cipher.InitializeCipher();
	}

	protected override void ProcessAsTls1()
	{
		ServerContext serverContext = (ServerContext)Context;
		AsymmetricAlgorithm key = serverContext.SslStream.RaisePrivateKeySelection(new X509Certificate(serverContext.ServerSettings.Certificates[0].RawData), null) ?? throw new TlsException(AlertDescription.UserCancelled, "Server certificate Private Key unavailable.");
		byte[] rgb = ReadBytes(ReadInt16());
		byte[] preMasterSecret = new RSAPKCS1KeyExchangeDeformatter(key).DecryptKeyExchange(rgb);
		Context.Negotiating.Cipher.ComputeMasterSecret(preMasterSecret);
		Context.Negotiating.Cipher.ComputeKeys();
		Context.Negotiating.Cipher.InitializeCipher();
	}
}
