using System.ComponentModel;
using System.Windows.Forms;
using Unity;

namespace System.Web.UI.Design.WebControls;

public class RegexEditorDialog : Form
{
	private string regular_expression;

	public string RegularExpression
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			regular_expression = value;
		}
	}

	public RegexEditorDialog()
	{
	}

	protected void CmdHelp_Click(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}

	protected void CmdOK_Click(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}

	protected void CmdTestValidate_Click(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}

	protected override void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	protected void LstStandardExpressions_SelectedIndexChanged(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}

	protected void RegexTypeEditor_Activated(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}

	protected void TxtExpression_Changed(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}

	public RegexEditorDialog(ISite site)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void cmdHelp_Click(object sender, EventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void cmdOK_Click(object sender, EventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void cmdTestValidate_Click(object sender, EventArgs args)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void lstStandardExpressions_SelectedIndexChanged(object sender, EventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void txtExpression_TextChanged(object sender, EventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
