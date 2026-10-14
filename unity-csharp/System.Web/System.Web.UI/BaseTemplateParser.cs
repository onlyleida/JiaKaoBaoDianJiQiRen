using System.Web.Compilation;
using System.Web.Configuration;
using System.Web.Hosting;

namespace System.Web.UI;

public abstract class BaseTemplateParser : TemplateParser
{
	protected Type GetReferencedType(string virtualPath)
	{
		if (string.IsNullOrEmpty(virtualPath))
		{
			throw new ArgumentNullException("virtualPath");
		}
		PageParserFilter pageParserFilter = PageParserFilter;
		if (pageParserFilter != null)
		{
			CompilationSection obj = (WebConfigurationManager.GetSection("system.web/compilation") as CompilationSection) ?? throw new HttpException("Internal error. Missing configuration section.");
			string extension = VirtualPathUtility.GetExtension(virtualPath);
			Type providerTypeForExtension = obj.BuildProviders.GetProviderTypeForExtension(extension);
			VirtualReferenceType referenceType = ((providerTypeForExtension == null) ? VirtualReferenceType.Other : ((!(providerTypeForExtension == typeof(PageBuildProvider))) ? ((providerTypeForExtension == typeof(UserControlBuildProvider)) ? VirtualReferenceType.UserControl : ((!(providerTypeForExtension == typeof(MasterPageBuildProvider))) ? VirtualReferenceType.SourceFile : VirtualReferenceType.Master)) : VirtualReferenceType.Page));
			if (!pageParserFilter.AllowVirtualReference(virtualPath, referenceType))
			{
				throw new HttpException("The parser does not permit a virtual reference to the UserControl.");
			}
		}
		virtualPath = HostingEnvironment.VirtualPathProvider.CombineVirtualPaths(VirtualPath.Absolute, virtualPath);
		return BuildManager.GetCompiledType(virtualPath);
	}

	[MonoTODO("We don't do anything here with the no-compile controls.")]
	protected internal Type GetUserControlType(string virtualPath)
	{
		return GetReferencedType(virtualPath);
	}
}
