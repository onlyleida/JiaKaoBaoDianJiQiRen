using System.Collections;
using System.IO;
using System.Web.Caching;

namespace System.Web.Hosting;

public abstract class VirtualPathProvider : MarshalByRefObject
{
	private VirtualPathProvider prev;

	protected internal VirtualPathProvider Previous => prev;

	protected virtual void Initialize()
	{
	}

	internal void InitializeAndSetPrevious(VirtualPathProvider prev)
	{
		this.prev = prev;
		Initialize();
	}

	public virtual string CombineVirtualPaths(string basePath, string relativePath)
	{
		return VirtualPathUtility.Combine(basePath, relativePath);
	}

	public virtual bool DirectoryExists(string virtualDir)
	{
		if (prev != null)
		{
			return prev.DirectoryExists(virtualDir);
		}
		return false;
	}

	public virtual bool FileExists(string virtualPath)
	{
		if (prev != null)
		{
			return prev.FileExists(virtualPath);
		}
		return false;
	}

	public virtual CacheDependency GetCacheDependency(string virtualPath, IEnumerable virtualPathDependencies, DateTime utcStart)
	{
		if (prev != null)
		{
			return prev.GetCacheDependency(virtualPath, virtualPathDependencies, utcStart);
		}
		return null;
	}

	public virtual string GetCacheKey(string virtualPath)
	{
		if (prev != null)
		{
			return prev.GetCacheKey(virtualPath);
		}
		return null;
	}

	public virtual VirtualDirectory GetDirectory(string virtualDir)
	{
		if (prev != null)
		{
			return prev.GetDirectory(virtualDir);
		}
		return null;
	}

	public virtual VirtualFile GetFile(string virtualPath)
	{
		if (prev != null)
		{
			return prev.GetFile(virtualPath);
		}
		return null;
	}

	public virtual string GetFileHash(string virtualPath, IEnumerable virtualPathDependencies)
	{
		if (prev != null)
		{
			return prev.GetFileHash(virtualPath, virtualPathDependencies);
		}
		return null;
	}

	public override object InitializeLifetimeService()
	{
		return null;
	}

	public static Stream OpenFile(string virtualPath)
	{
		return HostingEnvironment.VirtualPathProvider.GetFile(virtualPath)?.Open();
	}
}
