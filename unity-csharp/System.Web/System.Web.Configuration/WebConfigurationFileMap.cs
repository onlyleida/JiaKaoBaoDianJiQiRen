using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class WebConfigurationFileMap : ConfigurationFileMap
{
	private VirtualDirectoryMappingCollection virtualDirectories;

	public VirtualDirectoryMappingCollection VirtualDirectories => virtualDirectories;

	public WebConfigurationFileMap()
	{
		virtualDirectories = new VirtualDirectoryMappingCollection();
	}

	public override object Clone()
	{
		WebConfigurationFileMap webConfigurationFileMap = new WebConfigurationFileMap();
		webConfigurationFileMap.MachineConfigFilename = MachineConfigFilename;
		webConfigurationFileMap.virtualDirectories = new VirtualDirectoryMappingCollection();
		foreach (VirtualDirectoryMapping virtualDirectory in virtualDirectories)
		{
			VirtualDirectoryMapping mapping = new VirtualDirectoryMapping(virtualDirectory.PhysicalDirectory, virtualDirectory.IsAppRoot, virtualDirectory.ConfigFileBaseName);
			webConfigurationFileMap.virtualDirectories.Add(virtualDirectory.VirtualDirectory, mapping);
		}
		return webConfigurationFileMap;
	}

	public WebConfigurationFileMap(string machineConfigFileName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
