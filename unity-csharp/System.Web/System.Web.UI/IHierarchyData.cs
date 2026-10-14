namespace System.Web.UI;

public interface IHierarchyData
{
	bool HasChildren { get; }

	string Path { get; }

	object Item { get; }

	string Type { get; }

	IHierarchicalEnumerable GetChildren();

	IHierarchyData GetParent();
}
