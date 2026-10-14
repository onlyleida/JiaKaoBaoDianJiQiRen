using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class DetailsViewModeEventArgs : CancelEventArgs
{
	private DetailsViewMode _mode;

	private bool _cancelingEdit;

	public bool CancelingEdit => _cancelingEdit;

	public DetailsViewMode NewMode
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

	public DetailsViewModeEventArgs(DetailsViewMode mode, bool cancelingEdit)
		: base(cancel: false)
	{
		_mode = mode;
		_cancelingEdit = cancelingEdit;
	}
}
