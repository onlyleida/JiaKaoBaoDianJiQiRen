using Unity;

namespace System.Web.UI;

public class ComplexPropertyEntry : BuilderPropertyEntry
{
	public bool IsCollectionItem { get; private set; }

	public bool ReadOnly { get; set; }

	internal ComplexPropertyEntry(bool isCollectionItem, bool readOnly)
	{
		IsCollectionItem = isCollectionItem;
		ReadOnly = readOnly;
	}

	internal ComplexPropertyEntry()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
