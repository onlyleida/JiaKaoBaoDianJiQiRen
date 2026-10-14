using System.Configuration;
using Unity;

namespace System.Net.Configuration;

public sealed class WebUtilityElement : ConfigurationElement
{
	public UnicodeDecodingConformance UnicodeDecodingConformance
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public UnicodeEncodingConformance UnicodeEncodingConformance
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebUtilityElement()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
