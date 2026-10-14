using System.Globalization;
using Unity;

namespace System.Web.Globalization;

public sealed class ResourceFileStringLocalizerProvider : IStringLocalizerProvider
{
	public const string ResourceFileName = "DataAnnotation.Localization";

	public ResourceFileStringLocalizerProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public string GetLocalizedString(CultureInfo culture, string name, object[] arguments)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
