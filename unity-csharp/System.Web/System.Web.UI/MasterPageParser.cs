using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Web.Compilation;
using System.Web.Hosting;

namespace System.Web.UI;

internal sealed class MasterPageParser : UserControlParser
{
	private Type masterType;

	private string masterTypeVirtualPath;

	private List<string> contentPlaceHolderIds;

	private string cacheEntryName;

	internal Type MasterType
	{
		get
		{
			if (masterType == null && !string.IsNullOrEmpty(masterTypeVirtualPath))
			{
				masterType = BuildManager.GetCompiledType(masterTypeVirtualPath);
			}
			return masterType;
		}
	}

	internal override string DefaultBaseTypeName => "System.Web.UI.MasterPage";

	internal override string DefaultDirectiveName => "master";

	internal MasterPageParser(VirtualPath virtualPath, string inputFile, HttpContext context)
		: base(virtualPath, inputFile, context, "System.Web.UI.MasterPage")
	{
		cacheEntryName = string.Concat("@@MasterPagePHIDS:", virtualPath, ":", inputFile);
		contentPlaceHolderIds = HttpRuntime.InternalCache.Get(cacheEntryName) as List<string>;
		LoadConfigDefaults();
	}

	internal MasterPageParser(VirtualPath virtualPath, TextReader reader, HttpContext context)
		: this(virtualPath, null, reader, context)
	{
	}

	internal MasterPageParser(VirtualPath virtualPath, string inputFile, TextReader reader, HttpContext context)
		: base(virtualPath, inputFile, reader, context)
	{
		cacheEntryName = string.Concat("@@MasterPagePHIDS:", virtualPath, ":", InputFile);
		contentPlaceHolderIds = HttpRuntime.InternalCache.Get(cacheEntryName) as List<string>;
		LoadConfigDefaults();
	}

	public static MasterPage GetCompiledMasterInstance(string virtualPath, string inputFile, HttpContext context)
	{
		return BuildManager.CreateInstanceFromVirtualPath(virtualPath, typeof(MasterPage)) as MasterPage;
	}

	public static Type GetCompiledMasterType(string virtualPath, string inputFile, HttpContext context)
	{
		return BuildManager.GetCompiledType(virtualPath);
	}

	internal override void HandleOptions(object obj)
	{
		base.HandleOptions(obj);
		((MasterPage)obj).MasterPageFile = MasterPageFile;
	}

	internal override void AddDirective(string directive, IDictionary atts)
	{
		if (string.Compare("MasterType", directive, StringComparison.OrdinalIgnoreCase) == 0)
		{
			PageParserFilter?.PreprocessDirective(directive.ToLowerInvariant(), atts);
			string text = BaseParser.GetString(atts, "TypeName", null);
			if (text != null)
			{
				masterType = LoadType(text);
				if (masterType == null)
				{
					ThrowParseException("Could not load type '" + text + "'.");
				}
			}
			else
			{
				string text2 = BaseParser.GetString(atts, "VirtualPath", null);
				if (!string.IsNullOrEmpty(text2))
				{
					VirtualPathProvider virtualPathProvider = HostingEnvironment.VirtualPathProvider;
					if (!virtualPathProvider.FileExists(text2))
					{
						ThrowParseFileNotFound(text2);
					}
					AddDependency(masterTypeVirtualPath = virtualPathProvider.CombineVirtualPaths(VirtualPath.Absolute, VirtualPathUtility.ToAbsolute(text2)));
				}
				else
				{
					ThrowParseException("The MasterType directive must have either a TypeName or a VirtualPath attribute.");
				}
			}
			if (masterType != null)
			{
				AddAssembly(masterType.Assembly, fullPath: true);
			}
		}
		else
		{
			base.AddDirective(directive, atts);
		}
	}

	internal void AddContentPlaceHolderId(string id)
	{
		if (contentPlaceHolderIds == null)
		{
			contentPlaceHolderIds = new List<string>(1);
			HttpRuntime.InternalCache.Insert(cacheEntryName, contentPlaceHolderIds);
		}
		contentPlaceHolderIds.Add(id);
	}
}
