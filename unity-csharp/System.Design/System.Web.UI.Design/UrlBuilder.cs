using System.ComponentModel;
using System.Windows.Forms;

namespace System.Web.UI.Design;

public sealed class UrlBuilder
{
	private UrlBuilder()
	{
	}

	[System.MonoTODO]
	public static string BuildUrl(IComponent component, System.Windows.Forms.Control owner, string initialUrl, string caption, string filter)
	{
		return BuildUrl(component, owner, initialUrl, caption, filter, UrlBuilderOptions.None);
	}

	[System.MonoTODO]
	public static string BuildUrl(IComponent component, System.Windows.Forms.Control owner, string initialUrl, string caption, string filter, UrlBuilderOptions options)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static string BuildUrl(IServiceProvider serviceProvider, System.Windows.Forms.Control owner, string initialUrl, string caption, string filter, UrlBuilderOptions options)
	{
		throw new NotImplementedException();
	}
}
