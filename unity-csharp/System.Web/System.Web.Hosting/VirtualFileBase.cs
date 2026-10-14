namespace System.Web.Hosting;

public abstract class VirtualFileBase : MarshalByRefObject
{
	private string vpath;

	public abstract bool IsDirectory { get; }

	public virtual string Name => VirtualPathUtility.GetFileName(vpath);

	public string VirtualPath => vpath;

	internal void SetVirtualPath(string vpath)
	{
		this.vpath = vpath;
	}

	public override object InitializeLifetimeService()
	{
		return null;
	}
}
