using System.Configuration;
using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Web.Util;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class LosFormatter
{
	private ObjectStateFormatter osf;

	public LosFormatter()
	{
		osf = new ObjectStateFormatter();
	}

	public LosFormatter(bool enableMac, string macKeyModifier)
		: this(enableMac, string.IsNullOrEmpty(macKeyModifier) ? null : Encoding.ASCII.GetBytes(macKeyModifier))
	{
	}

	public LosFormatter(bool enableMac, byte[] macKeyModifier)
	{
		osf = new ObjectStateFormatter();
		if (enableMac && macKeyModifier != null)
		{
			SetMacKey(macKeyModifier);
		}
	}

	private void SetMacKey(byte[] macKeyModifier)
	{
		try
		{
			osf.Section.ValidationKey = MachineKeySectionUtils.GetHexString(macKeyModifier);
		}
		catch (ArgumentException)
		{
		}
		catch (ConfigurationErrorsException)
		{
		}
	}

	public object Deserialize(Stream stream)
	{
		if (stream == null)
		{
			throw new ArgumentNullException("stream");
		}
		using StreamReader streamReader = new StreamReader(stream);
		return Deserialize(streamReader.ReadToEnd());
	}

	public object Deserialize(TextReader input)
	{
		if (input == null)
		{
			throw new ArgumentNullException("input");
		}
		return Deserialize(input.ReadToEnd());
	}

	public object Deserialize(string input)
	{
		if (input == null)
		{
			return null;
		}
		return osf.Deserialize(input);
	}

	internal string SerializeToBase64(object value)
	{
		return osf.Serialize(value);
	}

	public void Serialize(Stream stream, object value)
	{
		if (stream == null)
		{
			throw new ArgumentNullException("stream");
		}
		if (!stream.CanSeek)
		{
			throw new NotSupportedException();
		}
		string s = SerializeToBase64(value);
		byte[] bytes = Encoding.ASCII.GetBytes(s);
		stream.Write(bytes, 0, bytes.Length);
	}

	public void Serialize(TextWriter output, object value)
	{
		if (output == null)
		{
			throw new ArgumentNullException("output");
		}
		output.Write(SerializeToBase64(value));
	}
}
