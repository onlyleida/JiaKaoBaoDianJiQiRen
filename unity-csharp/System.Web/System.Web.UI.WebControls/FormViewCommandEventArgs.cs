using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls;

public class FormViewCommandEventArgs : CommandEventArgs
{
	private object source;

	public object CommandSource => source;

	public bool Handled
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public FormViewCommandEventArgs(object commandSource, CommandEventArgs originalArgs)
		: base(originalArgs)
	{
		source = commandSource;
	}
}
