namespace System.Web;

public interface IPartitionResolver
{
	void Initialize();

	string ResolvePartition(object key);
}
