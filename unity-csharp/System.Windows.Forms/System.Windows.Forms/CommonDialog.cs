using System.ComponentModel;

namespace System.Windows.Forms;

[ToolboxItemFilter("System.Windows.Forms")]
public abstract class CommonDialog : Component
{
	internal class DialogForm : Form
	{
		protected CommonDialog owner;

		protected override CreateParams CreateParams
		{
			get
			{
				CreateParams createParams = base.CreateParams;
				createParams.Style |= -2134376448;
				return createParams;
			}
		}

		internal DialogForm(CommonDialog owner)
		{
			this.owner = owner;
			ControlBox = true;
			MinimizeBox = false;
			MaximizeBox = false;
			ShowInTaskbar = false;
			FormBorderStyle = FormBorderStyle.Sizable;
			StartPosition = FormStartPosition.CenterScreen;
		}

		internal DialogResult RunDialog()
		{
			owner.InitFormsSize(this);
			ShowDialog();
			return DialogResult;
		}
	}

	internal DialogForm form;

	private object tag;

	private static object HelpRequestEvent = new object();

	[Localizable(false)]
	[MWFCategory("Data")]
	[DefaultValue(null)]
	[Bindable(true)]
	[TypeConverter(typeof(StringConverter))]
	public object Tag
	{
		get
		{
			return tag;
		}
		set
		{
			tag = value;
		}
	}

	public event EventHandler HelpRequest
	{
		add
		{
			Events.AddHandler(HelpRequestEvent, value);
		}
		remove
		{
			Events.RemoveHandler(HelpRequestEvent, value);
		}
	}

	public CommonDialog()
	{
	}

	internal virtual void InitFormsSize(Form form)
	{
		form.Width = 200;
		form.Height = 200;
	}

	public abstract void Reset();

	public DialogResult ShowDialog()
	{
		return ShowDialog(null);
	}

	public DialogResult ShowDialog(IWin32Window owner)
	{
		if (form == null)
		{
			if (RunDialog(owner?.Handle ?? IntPtr.Zero))
			{
				return DialogResult.OK;
			}
			return DialogResult.Cancel;
		}
		if (RunDialog(form.Handle))
		{
			form.ShowDialog(owner);
		}
		return form.DialogResult;
	}

	protected virtual IntPtr HookProc(IntPtr hWnd, int msg, IntPtr wparam, IntPtr lparam)
	{
		return IntPtr.Zero;
	}

	protected virtual void OnHelpRequest(EventArgs e)
	{
		((EventHandler)Events[HelpRequestEvent])?.Invoke(this, e);
	}

	protected virtual IntPtr OwnerWndProc(IntPtr hWnd, int msg, IntPtr wparam, IntPtr lparam)
	{
		return IntPtr.Zero;
	}

	protected abstract bool RunDialog(IntPtr hwndOwner);
}
