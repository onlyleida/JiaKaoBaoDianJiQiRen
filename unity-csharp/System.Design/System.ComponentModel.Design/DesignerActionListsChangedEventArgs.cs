namespace System.ComponentModel.Design;

public class DesignerActionListsChangedEventArgs : EventArgs
{
	private object related_object;

	private DesignerActionListsChangedType change_type;

	private DesignerActionListCollection action_lists;

	public DesignerActionListCollection ActionLists => action_lists;

	public DesignerActionListsChangedType ChangeType => change_type;

	public object RelatedObject => related_object;

	public DesignerActionListsChangedEventArgs(object relatedObject, DesignerActionListsChangedType changeType, DesignerActionListCollection actionLists)
	{
		related_object = relatedObject;
		change_type = changeType;
		action_lists = actionLists;
	}
}
