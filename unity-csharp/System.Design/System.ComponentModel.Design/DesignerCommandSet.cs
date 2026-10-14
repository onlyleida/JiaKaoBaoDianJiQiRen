using System.Collections;

namespace System.ComponentModel.Design;

public class DesignerCommandSet
{
	private DesignerActionListCollection action_lists = new DesignerActionListCollection();

	private DesignerVerbCollection verbs = new DesignerVerbCollection();

	public DesignerActionListCollection ActionLists => action_lists;

	public DesignerVerbCollection Verbs => verbs;

	[System.MonoTODO]
	public virtual ICollection GetCommands(string name)
	{
		throw new NotImplementedException();
	}
}
