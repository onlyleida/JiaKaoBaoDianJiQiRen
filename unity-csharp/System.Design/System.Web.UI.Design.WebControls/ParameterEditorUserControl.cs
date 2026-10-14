using System.ComponentModel;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Unity;

namespace System.Web.UI.Design.WebControls;

public class ParameterEditorUserControl : System.Windows.Forms.UserControl
{
	public bool ParametersConfigured
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public TypeDescriptionProvider TypeDescriptionProvider
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public event EventHandler ParametersChanged
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ParameterEditorUserControl(IServiceProvider serviceProvider)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void AddParameters(Parameter[] parameters)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ClearParameters()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public Parameter[] GetParameters()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual void OnParametersChanged(object sender, EventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void SetAllowCollectionChanges(bool allowChanges)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
