using System.Collections.Specialized;
using System.Security.Permissions;
using System.Web.Util;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HttpClientCertificate : NameValueCollection
{
	private HttpWorkerRequest hwr;

	private int flags;

	private DateTime from;

	private DateTime until;

	public byte[] BinaryIssuer => hwr.GetClientCertificateBinaryIssuer();

	public int CertEncoding => hwr.GetClientCertificateEncoding();

	public byte[] Certificate => hwr.GetClientCertificate();

	public string Cookie => GetString("CERT_COOKIE");

	public int Flags => flags;

	public bool IsPresent => (flags & 1) == 1;

	public string Issuer => GetString("CERT_ISSUER");

	public bool IsValid
	{
		get
		{
			if (!IsPresent)
			{
				return true;
			}
			return (flags & 2) == 0;
		}
	}

	public int KeySize => GetInt("CERT_KEYSIZE");

	public byte[] PublicKey => hwr.GetClientCertificatePublicKey();

	public int SecretKeySize => GetInt("CERT_SECRETKEYSIZE");

	public string SerialNumber => GetString("CERT_SERIALNUMBER");

	public string ServerIssuer => GetString("CERT_SERVER_ISSUER");

	public string ServerSubject => GetString("CERT_SERVER_SUBJECT");

	public string Subject => GetString("CERT_SUBJECT");

	public DateTime ValidFrom => from;

	public DateTime ValidUntil => until;

	internal HttpClientCertificate(HttpWorkerRequest hwr)
	{
		this.hwr = hwr;
		flags = GetIntNoPresense("CERT_FLAGS");
		if (IsPresent)
		{
			from = hwr.GetClientCertificateValidFrom();
			until = hwr.GetClientCertificateValidUntil();
		}
		else
		{
			from = DateTime.Now;
			until = from;
		}
	}

	public override string Get(string field)
	{
		return string.Empty;
	}

	private int GetInt(string variable)
	{
		if (!IsPresent)
		{
			return 0;
		}
		return GetIntNoPresense(variable);
	}

	private int GetIntNoPresense(string variable)
	{
		string serverVariable = hwr.GetServerVariable(variable);
		if (serverVariable == null)
		{
			return 0;
		}
		try
		{
			return int.Parse(serverVariable, Helpers.InvariantCulture);
		}
		catch
		{
			return 0;
		}
	}

	private string GetString(string variable)
	{
		if (!IsPresent)
		{
			return string.Empty;
		}
		string serverVariable = hwr.GetServerVariable(variable);
		if (serverVariable != null)
		{
			return serverVariable;
		}
		return string.Empty;
	}

	internal HttpClientCertificate()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
