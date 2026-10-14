using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls;

[DefaultProperty("Key")]
[ToolboxData("<{0}:ModelErrorMessage runat=\"server\" Key=\"ModelStateKey\"></{0}:ModelErrorMessage>")]
[PersistChildren(false)]
[ParseChildren(true)]
public class ModelErrorMessage : Label
{
	public string ModelStateKey
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool SetFocusOnError
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ModelErrorMessage()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
