using Unity;

namespace System.Web.Globalization;

public static class StringLocalizerProviders
{
	public static IStringLocalizerProvider DataAnnotationStringLocalizerProvider
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}
}
