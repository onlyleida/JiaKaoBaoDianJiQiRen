using System.IO;
using System.Security.Permissions;
using System.Web.Compilation;
using Unity;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class WebServiceParser : SimpleWebHandlerParser
{
	protected override string DefaultDirectiveName => "webservice";

	private WebServiceParser(HttpContext context, string virtualPath, string physicalPath)
		: base(context, virtualPath, physicalPath)
	{
	}

	internal WebServiceParser(HttpContext context, VirtualPath virtualPath, TextReader reader)
		: this(context, virtualPath, null, reader)
	{
	}

	internal WebServiceParser(HttpContext context, VirtualPath virtualPath, string physicalPath, TextReader reader)
		: base(context, virtualPath.Original, physicalPath, reader)
	{
	}

	public static Type GetCompiledType(string inputFile, HttpContext context)
	{
		return BuildManager.GetCompiledType(inputFile);
	}

	internal WebServiceParser()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
