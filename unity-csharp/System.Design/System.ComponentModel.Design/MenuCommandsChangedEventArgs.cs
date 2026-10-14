using System.Runtime.InteropServices;

namespace System.ComponentModel.Design;

[ComVisible(true)]
public class MenuCommandsChangedEventArgs : EventArgs
{
	private MenuCommandsChangedType change_type;

	private MenuCommand command;

	public MenuCommandsChangedType ChangeType => change_type;

	public MenuCommand Command => command;

	public MenuCommandsChangedEventArgs(MenuCommandsChangedType changeType, MenuCommand command)
	{
		change_type = changeType;
		this.command = command;
	}
}
