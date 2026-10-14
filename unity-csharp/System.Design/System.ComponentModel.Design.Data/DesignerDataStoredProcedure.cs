using System.Collections;

namespace System.ComponentModel.Design.Data;

public abstract class DesignerDataStoredProcedure
{
	private string name;

	private string owner;

	public string Name => name;

	public string Owner => owner;

	[System.MonoTODO]
	public ICollection Parameters
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected DesignerDataStoredProcedure(string name)
		: this(name, null)
	{
	}

	[System.MonoTODO]
	protected DesignerDataStoredProcedure(string name, string owner)
	{
		this.name = name;
		this.owner = owner;
	}

	protected abstract ICollection CreateParameters();
}
