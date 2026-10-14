using Unity;

namespace System.Web.Hosting;

[Serializable]
public sealed class ApplicationInfo
{
	private string id;

	private string physical_path;

	private string virtual_path;

	public string ID => id;

	public string PhysicalPath => physical_path;

	public string VirtualPath => virtual_path;

	internal ApplicationInfo(string id, string phys, string virt)
	{
		this.id = id;
		physical_path = phys;
		virtual_path = virt;
	}

	internal ApplicationInfo()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
