using System.ComponentModel.Design;

namespace System.Web.UI.Design.WebControls;

public class TableCellsCollectionEditor : CollectionEditor
{
	public TableCellsCollectionEditor(Type type)
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
