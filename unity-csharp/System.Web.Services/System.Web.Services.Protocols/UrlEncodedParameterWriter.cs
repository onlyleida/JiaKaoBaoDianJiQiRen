using System.IO;
using System.Reflection;
using System.Text;

namespace System.Web.Services.Protocols;

public abstract class UrlEncodedParameterWriter : MimeParameterWriter
{
	private ParameterInfo[] paramInfos;

	private int numberEncoded;

	private Encoding encoding;

	public override Encoding RequestEncoding
	{
		get
		{
			return encoding;
		}
		set
		{
			encoding = value;
		}
	}

	public override object GetInitializer(LogicalMethodInfo methodInfo)
	{
		if (!ValueCollectionParameterReader.IsSupported(methodInfo))
		{
			return null;
		}
		return methodInfo.InParameters;
	}

	public override void Initialize(object initializer)
	{
		paramInfos = (ParameterInfo[])initializer;
	}

	protected void Encode(TextWriter writer, object[] values)
	{
		numberEncoded = 0;
		for (int i = 0; i < paramInfos.Length; i++)
		{
			ParameterInfo parameterInfo = paramInfos[i];
			if (parameterInfo.ParameterType.IsArray)
			{
				Array array = (Array)values[i];
				for (int j = 0; j < array.Length; j++)
				{
					Encode(writer, parameterInfo.Name, array.GetValue(j));
				}
			}
			else
			{
				Encode(writer, parameterInfo.Name, values[i]);
			}
		}
	}

	protected void Encode(TextWriter writer, string name, object value)
	{
		if (numberEncoded > 0)
		{
			writer.Write('&');
		}
		writer.Write(UrlEncode(name));
		writer.Write('=');
		writer.Write(UrlEncode(ScalarFormatter.ToString(value)));
		numberEncoded++;
	}

	private string UrlEncode(string value)
	{
		if (encoding != null)
		{
			return UrlEncoder.UrlEscapeString(value, encoding);
		}
		return UrlEncoder.UrlEscapeStringUnicode(value);
	}
}
