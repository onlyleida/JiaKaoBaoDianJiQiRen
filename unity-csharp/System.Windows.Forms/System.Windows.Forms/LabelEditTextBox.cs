namespace System.Windows.Forms;

internal class LabelEditTextBox : FixedSizeTextBox
{
	private static object EditingCancelledEvent = new object();

	private static object EditingFinishedEvent = new object();

	public event EventHandler EditingCancelled
	{
		add
		{
			Events.AddHandler(EditingCancelledEvent, value);
		}
		remove
		{
			Events.RemoveHandler(EditingCancelledEvent, value);
		}
	}

	public event EventHandler EditingFinished
	{
		add
		{
			Events.AddHandler(EditingFinishedEvent, value);
		}
		remove
		{
			Events.AddHandler(EditingFinishedEvent, value);
		}
	}

	public LabelEditTextBox()
		: base(fixed_horz: true, fixed_vert: true)
	{
	}

	protected override bool IsInputKey(Keys key_data)
	{
		if ((key_data & Keys.Alt) == 0)
		{
			switch (key_data & Keys.KeyCode)
			{
			case Keys.Return:
				return true;
			case Keys.Escape:
				return true;
			}
		}
		return base.IsInputKey(key_data);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		if (Visible)
		{
			switch (e.KeyCode)
			{
			case Keys.Return:
				Visible = false;
				Parent.Focus();
				e.Handled = true;
				OnEditingFinished(e);
				break;
			case Keys.Escape:
				Visible = false;
				Parent.Focus();
				e.Handled = true;
				OnEditingCancelled(e);
				break;
			}
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		if (Visible)
		{
			OnEditingFinished(e);
		}
	}

	protected void OnEditingCancelled(EventArgs e)
	{
		((EventHandler)Events[EditingCancelledEvent])?.Invoke(this, e);
	}

	protected void OnEditingFinished(EventArgs e)
	{
		((EventHandler)Events[EditingFinishedEvent])?.Invoke(this, e);
	}
}
