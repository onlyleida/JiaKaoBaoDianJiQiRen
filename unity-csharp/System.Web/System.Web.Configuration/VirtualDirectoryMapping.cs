namespace System.Web.Configuration;

public sealed class VirtualDirectoryMapping
{
	private string physicalDirectory;

	private bool isAppRoot;

	private string configFileBaseName;

	private string virtualDirectory;

	[MonoTODO("Do something with this")]
	public string ConfigFileBaseName
	{
		get
		{
			return configFileBaseName;
		}
		set
		{
			configFileBaseName = value;
		}
	}

	[MonoTODO("Do something with this")]
	public bool IsAppRoot
	{
		get
		{
			return isAppRoot;
		}
		set
		{
			isAppRoot = value;
		}
	}

	public string PhysicalDirectory
	{
		get
		{
			return physicalDirectory;
		}
		set
		{
			physicalDirectory = value;
		}
	}

	public string VirtualDirectory => virtualDirectory;

	public VirtualDirectoryMapping(string physicalDirectory, bool isAppRoot)
	{
		this.physicalDirectory = physicalDirectory;
		this.isAppRoot = isAppRoot;
	}

	public VirtualDirectoryMapping(string physicalDirectory, bool isAppRoot, string configFileBaseName)
	{
		this.physicalDirectory = physicalDirectory;
		this.isAppRoot = isAppRoot;
		this.configFileBaseName = configFileBaseName;
	}

	internal void SetVirtualDirectory(string dir)
	{
		virtualDirectory = dir;
	}
}
