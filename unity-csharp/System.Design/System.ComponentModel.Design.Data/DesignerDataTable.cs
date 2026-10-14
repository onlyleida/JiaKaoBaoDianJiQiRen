using System.Collections;

namespace System.ComponentModel.Design.Data;

public abstract class DesignerDataTable : DesignerDataTableBase
{
	[System.MonoTODO]
	public ICollection Relationships
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected DesignerDataTable(string name)
		: base(name)
	{
	}

	protected DesignerDataTable(string name, string owner)
		: base(name, owner)
	{
	}

	protected abstract ICollection CreateRelationships();
}
