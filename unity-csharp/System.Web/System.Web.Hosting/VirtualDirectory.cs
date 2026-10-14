using System.Collections;

namespace System.Web.Hosting;

public abstract class VirtualDirectory : VirtualFileBase
{
	public abstract IEnumerable Children { get; }

	public abstract IEnumerable Directories { get; }

	public abstract IEnumerable Files { get; }

	public override bool IsDirectory => true;

	protected VirtualDirectory(string virtualPath)
	{
		SetVirtualPath(virtualPath);
	}
}
