using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class FormViewModeEventArgs : CancelEventArgs
{
	private FormViewMode _mode;

	private bool _cancelingEdit;

	public bool CancelingEdit => _cancelingEdit;

	public FormViewMode NewMode
	{
		get
		{
			return _mode;
		}
		set
		{
			_mode = value;
		}
	}

	public FormViewModeEventArgs(FormViewMode mode, bool cancelingEdit)
		: base(cancel: false)
	{
		_mode = mode;
		_cancelingEdit = cancelingEdit;
	}
}
