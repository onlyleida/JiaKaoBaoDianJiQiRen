using System.Collections;

namespace System.Windows.Forms.Design.Behavior;

public class BehaviorDragDropEventArgs : EventArgs
{
	private ICollection components;

	public ICollection DragComponents => components;

	public BehaviorDragDropEventArgs(ICollection dragComponents)
	{
		components = dragComponents;
	}
}
