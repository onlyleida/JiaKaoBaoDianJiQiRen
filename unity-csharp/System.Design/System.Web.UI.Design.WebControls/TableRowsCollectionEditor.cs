using System.ComponentModel.Design;

namespace System.Web.UI.Design.WebControls;

public class TableRowsCollectionEditor : CollectionEditor
{
	public TableRowsCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override bool CanSelectMultipleInstances()
	{
		throw new NotImplementedException();
	}

	protected override object CreateInstance(Type itemType)
	{
		throw new NotImplementedException();
	}
}
