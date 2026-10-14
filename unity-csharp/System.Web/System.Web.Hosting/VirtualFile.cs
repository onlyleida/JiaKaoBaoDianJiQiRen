using System.IO;

namespace System.Web.Hosting;

public abstract class VirtualFile : VirtualFileBase
{
	public override bool IsDirectory => false;

	protected VirtualFile(string virtualPath)
	{
		SetVirtualPath(virtualPath);
	}

	public abstract Stream Open();
}
