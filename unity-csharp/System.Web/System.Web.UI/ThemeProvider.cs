using System.Collections;
using System.ComponentModel.Design;

namespace System.Web.UI;

public sealed class ThemeProvider
{
	private IDesignerHost host;

	private string name;

	private string[] cssFiles;

	[MonoTODO("Not implemented")]
	public int ContentHashCode
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ICollection CssFiles => cssFiles;

	public IDesignerHost DesignerHost => host;

	public string ThemeName => name;

	public ThemeProvider(IDesignerHost host, string name, string themeDefinition, string[] cssFiles, string themePath)
	{
		this.host = host;
		this.name = name;
		this.cssFiles = cssFiles;
	}

	[MonoTODO("Not implemented")]
	public SkinBuilder GetSkinBuilder(Control control)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public IDictionary GetSkinControlBuildersForControlType(Type type)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public ICollection GetSkinsForControl(Type type)
	{
		throw new NotImplementedException();
	}
}
