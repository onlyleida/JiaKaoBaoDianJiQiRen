using System.Collections;

namespace System.ComponentModel.Design.Data;

public sealed class DesignerDataRelationship
{
	private string name;

	private ICollection parent_columns;

	private ICollection child_columns;

	private DesignerDataTable child_table;

	public string Name => name;

	public ICollection ParentColumns => parent_columns;

	public DesignerDataTable ChildTable => child_table;

	public ICollection ChildColumns => child_columns;

	public DesignerDataRelationship(string name, ICollection parentColumns, DesignerDataTable childTable, ICollection childColumns)
	{
		this.name = name;
		parent_columns = parentColumns;
		child_table = childTable;
		child_columns = childColumns;
	}
}
