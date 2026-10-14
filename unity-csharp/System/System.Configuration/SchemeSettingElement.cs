using Unity;

namespace System.Configuration;

public sealed class SchemeSettingElement : ConfigurationElement
{
	public GenericUriParserOptions GenericUriParserOptions
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public SchemeSettingElement()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
