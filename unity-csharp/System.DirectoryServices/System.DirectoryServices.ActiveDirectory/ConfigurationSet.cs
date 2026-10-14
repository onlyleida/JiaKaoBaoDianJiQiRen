using System.Security.Permissions;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ConfigurationSet
{
	public AdamInstanceCollection AdamInstances
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ApplicationPartitionCollection ApplicationPartitions
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public AdamInstance NamingRoleOwner
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ActiveDirectorySchema Schema
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public AdamInstance SchemaRoleOwner
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ReadOnlySiteCollection Sites
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal ConfigurationSet()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void Dispose(bool disposing)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public AdamInstance FindAdamInstance()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public AdamInstance FindAdamInstance(string partitionName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public AdamInstance FindAdamInstance(string partitionName, string siteName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public AdamInstanceCollection FindAllAdamInstances()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public AdamInstanceCollection FindAllAdamInstances(string partitionName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public AdamInstanceCollection FindAllAdamInstances(string partitionName, string siteName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static ConfigurationSet GetConfigurationSet(DirectoryContext context)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public DirectoryEntry GetDirectoryEntry()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public ReplicationSecurityLevel GetSecurityLevel()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void SetSecurityLevel(ReplicationSecurityLevel securityLevel)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
