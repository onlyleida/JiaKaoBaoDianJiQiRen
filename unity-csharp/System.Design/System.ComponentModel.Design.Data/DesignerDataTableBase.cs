using System.Collections;

namespace System.ComponentModel.Design.Data;

public abstract class DesignerDataTableBase
{
	private string name;

	private string owner;

	public string Name => name;

	public string Owner => owner;

	[System.MonoTODO]
	public ICollection Columns
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected DesignerDataTableBase(string name)
		: this(name, null)
	{
	}

	protected DesignerDataTableBase(string name, string owner)
	{
		this.name = name;
		this.owner = owner;
	}

	protected abstract ICollection CreateColumns();
}
