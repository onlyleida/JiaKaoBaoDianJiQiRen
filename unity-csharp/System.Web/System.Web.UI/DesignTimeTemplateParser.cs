using System.Collections;
using System.ComponentModel.Design;
using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public static class DesignTimeTemplateParser
{
	[SecurityPermission(SecurityAction.Demand, ControlThread = true, UnmanagedCode = true)]
	public static Control ParseControl(DesignTimeParseData data)
	{
		TemplateParser templateParser = InitParser(data);
		templateParser.RootBuilder.Text = data.ParseText;
		if (templateParser.RootBuilder.Children == null)
		{
			return null;
		}
		IEnumerator enumerator = templateParser.RootBuilder.Children.GetEnumerator();
		try
		{
			if (enumerator.MoveNext())
			{
				return (Control)((ControlBuilder)enumerator.Current).CreateInstance();
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		return null;
	}

	[SecurityPermission(SecurityAction.Demand, ControlThread = true, UnmanagedCode = true)]
	public static ITemplate ParseTemplate(DesignTimeParseData data)
	{
		TemplateParser templateParser = InitParser(data);
		templateParser.RootBuilder.Text = data.ParseText;
		return templateParser.RootBuilder;
	}

	[MonoTODO]
	private static TemplateParser InitParser(DesignTimeParseData data)
	{
		return new PageParser();
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.Demand, ControlThread = true, UnmanagedCode = true)]
	public static Control[] ParseControls(DesignTimeParseData data)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.Demand, ControlThread = true)]
	public static ControlBuilder ParseTheme(IDesignerHost host, string theme, string themePath)
	{
		throw new NotImplementedException();
	}
}
