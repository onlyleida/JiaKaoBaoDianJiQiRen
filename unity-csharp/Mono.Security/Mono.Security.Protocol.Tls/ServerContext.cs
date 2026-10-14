using System.Security.Cryptography.X509Certificates;
using Mono.Security.Interface;
using Mono.Security.Protocol.Tls.Handshake;
using Mono.Security.X509;

namespace Mono.Security.Protocol.Tls;

internal class ServerContext : Context
{
	private SslServerStream sslStream;

	private bool request_client_certificate;

	private bool clientCertificateRequired;

	public SslServerStream SslStream => sslStream;

	public bool ClientCertificateRequired => clientCertificateRequired;

	public bool RequestClientCertificate => request_client_certificate;

	public ServerContext(SslServerStream stream, SecurityProtocolType securityProtocolType, System.Security.Cryptography.X509Certificates.X509Certificate serverCertificate, bool clientCertificateRequired, bool requestClientCertificate)
		: base(securityProtocolType)
	{
		sslStream = stream;
		this.clientCertificateRequired = clientCertificateRequired;
		request_client_certificate = requestClientCertificate;
		Mono.Security.X509.X509Certificate x509Certificate = new Mono.Security.X509.X509Certificate(serverCertificate.GetRawCertData());
		ServerSettings.Certificates = new Mono.Security.X509.X509CertificateCollection();
		ServerSettings.Certificates.Add(x509Certificate);
		ServerSettings.UpdateCertificateRSA();
		if (CertificateValidationHelper.SupportsX509Chain)
		{
			Mono.Security.X509.X509Chain x509Chain = new Mono.Security.X509.X509Chain(X509StoreManager.IntermediateCACertificates);
			if (x509Chain.Build(x509Certificate))
			{
				for (int num = x509Chain.Chain.Count - 1; num > 0; num--)
				{
					ServerSettings.Certificates.Add(x509Chain.Chain[num]);
				}
			}
		}
		ServerSettings.CertificateTypes = new ClientCertificateType[ServerSettings.Certificates.Count];
		for (int i = 0; i < ServerSettings.CertificateTypes.Length; i++)
		{
			ServerSettings.CertificateTypes[i] = ClientCertificateType.RSA;
		}
		if (!CertificateValidationHelper.SupportsX509Chain)
		{
			return;
		}
		Mono.Security.X509.X509CertificateCollection trustedRootCertificates = X509StoreManager.TrustedRootCertificates;
		string[] array = new string[trustedRootCertificates.Count];
		int num2 = 0;
		foreach (Mono.Security.X509.X509Certificate item in trustedRootCertificates)
		{
			array[num2++] = item.IssuerName;
		}
		ServerSettings.DistinguisedNames = array;
	}
}
