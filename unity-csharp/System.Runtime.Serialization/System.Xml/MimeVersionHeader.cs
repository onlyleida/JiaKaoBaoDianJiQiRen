using System.Runtime.Serialization;
using System.Text;

namespace System.Xml;

internal class MimeVersionHeader : MimeHeader
{
	public static readonly MimeVersionHeader Default = new MimeVersionHeader("1.0");

	private string version;

	public string Version
	{
		get
		{
			if (version == null && Value != null)
			{
				ParseValue();
			}
			return version;
		}
	}

	public MimeVersionHeader(string value)
		: base("mime-version", value)
	{
	}

	private void ParseValue()
	{
		if (Value == "1.0")
		{
			version = "1.0";
			return;
		}
		int offset = 0;
		if (!MailBnfHelper.SkipCFWS(Value, ref offset))
		{
			throw DiagnosticUtility.ExceptionUtility.ThrowHelperError(new FormatException(System.Runtime.Serialization.SR.GetString("MIME version header is invalid.")));
		}
		StringBuilder stringBuilder = new StringBuilder();
		MailBnfHelper.ReadDigits(Value, ref offset, stringBuilder);
		if (!MailBnfHelper.SkipCFWS(Value, ref offset) || offset >= Value.Length || Value[offset++] != '.' || !MailBnfHelper.SkipCFWS(Value, ref offset))
		{
			throw DiagnosticUtility.ExceptionUtility.ThrowHelperError(new FormatException(System.Runtime.Serialization.SR.GetString("MIME version header is invalid.")));
		}
		stringBuilder.Append('.');
		MailBnfHelper.ReadDigits(Value, ref offset, stringBuilder);
		version = stringBuilder.ToString();
	}
}
