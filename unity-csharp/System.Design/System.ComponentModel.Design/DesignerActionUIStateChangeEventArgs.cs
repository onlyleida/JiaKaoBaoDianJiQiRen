namespace System.ComponentModel.Design;

public class DesignerActionUIStateChangeEventArgs : EventArgs
{
	private object related_object;

	private DesignerActionUIStateChangeType change_type;

	public DesignerActionUIStateChangeType ChangeType => change_type;

	public object RelatedObject => related_object;

	public DesignerActionUIStateChangeEventArgs(object relatedObject, DesignerActionUIStateChangeType changeType)
	{
		related_object = relatedObject;
		change_type = changeType;
	}
}
