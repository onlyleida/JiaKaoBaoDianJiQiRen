using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms.WebBrowserDialogs;
using Mono.WebBrowser;

namespace System.Windows.Forms;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.AutoDispatch)]
[DefaultEvent("Enter")]
[Designer("System.Windows.Forms.Design.AxDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultProperty("Name")]
public class WebBrowserBase : Control
{
	private enum State
	{
		Unloaded,
		Loaded,
		Active
	}

	internal bool documentReady;

	private bool suppressDialogs;

	protected string status;

	private State state;

	private IWebBrowser webHost;

	internal bool SuppressDialogs
	{
		get
		{
			return suppressDialogs;
		}
		set
		{
			suppressDialogs = value;
			webHost.Alert -= OnWebHostAlert;
			if (!suppressDialogs)
			{
				webHost.Alert += OnWebHostAlert;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public object ActiveXInstance
	{
		get
		{
			throw new NotSupportedException("Retrieving a reference to an activex interface is not supported. Sorry.");
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool AllowDrop
	{
		get
		{
			return base.AllowDrop;
		}
		set
		{
			base.AllowDrop = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override Image BackgroundImage
	{
		get
		{
			return base.BackgroundImage;
		}
		set
		{
			base.BackgroundImage = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override ImageLayout BackgroundImageLayout
	{
		get
		{
			return base.BackgroundImageLayout;
		}
		set
		{
			base.BackgroundImageLayout = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override Cursor Cursor
	{
		get
		{
			return base.Cursor;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new bool Enabled
	{
		get
		{
			return base.Enabled;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override Font Font
	{
		get
		{
			return base.Font;
		}
		set
		{
			base.Font = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override Color ForeColor
	{
		get
		{
			return base.ForeColor;
		}
		set
		{
			base.ForeColor = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new ImeMode ImeMode
	{
		get
		{
			return base.ImeMode;
		}
		set
		{
			base.ImeMode = value;
		}
	}

	[Localizable(false)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new virtual RightToLeft RightToLeft
	{
		get
		{
			return base.RightToLeft;
		}
		set
		{
			base.RightToLeft = value;
		}
	}

	public override ISite Site
	{
		set
		{
			base.Site = value;
		}
	}

	[Bindable(false)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string Text
	{
		get
		{
			return string.Empty;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new bool UseWaitCursor
	{
		get
		{
			return base.UseWaitCursor;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	protected override Size DefaultSize => new Size(100, 100);

	internal IWebBrowser WebHost => webHost;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler BackColorChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for BackColorChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler BackgroundImageChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for BackgroundImageChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler BackgroundImageLayoutChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for BackgroundImageLayoutChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler BindingContextChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for BindingContextChanged");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event UICuesEventHandler ChangeUICues
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for ChangeUICues");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler Click
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for Click");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler CursorChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for CursorChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler DoubleClick
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for DoubleClick");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event DragEventHandler DragDrop
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for DragDrop");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event DragEventHandler DragEnter
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for DragEnter");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler DragLeave
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for DragLeave");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event DragEventHandler DragOver
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for DragOver");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler EnabledChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for EnabledChanged");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler Enter
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for Enter");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler FontChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for FontChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler ForeColorChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for ForeColorChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event GiveFeedbackEventHandler GiveFeedback
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for GiveFeedback");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event HelpEventHandler HelpRequested
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for HelpRequested");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler ImeModeChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for ImeModeChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event KeyEventHandler KeyDown
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for KeyDown");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event KeyPressEventHandler KeyPress
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for KeyPress");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event KeyEventHandler KeyUp
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for KeyUp");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event LayoutEventHandler Layout
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for Layout");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler Leave
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for Leave");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler MouseCaptureChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseCaptureChanged");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event MouseEventHandler MouseClick
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseClick");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event MouseEventHandler MouseDoubleClick
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseDoubleClick");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event MouseEventHandler MouseDown
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseDown");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler MouseEnter
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseEnter");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler MouseHover
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseHover");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler MouseLeave
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseLeave");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event MouseEventHandler MouseMove
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseMove");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event MouseEventHandler MouseUp
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseUp");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event MouseEventHandler MouseWheel
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for MouseWheel");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event PaintEventHandler Paint
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for Paint");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event QueryAccessibilityHelpEventHandler QueryAccessibilityHelp
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for QueryAccessibilityHelp");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event QueryContinueDragEventHandler QueryContinueDrag
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for QueryContinueDrag");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler RightToLeftChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for RightToLeftChanged");
		}
		remove
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler StyleChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for StyleChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler TextChanged
	{
		add
		{
			throw new NotSupportedException("Invalid event handler for TextChanged");
		}
		remove
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public new void DrawToBitmap(Bitmap bitmap, Rectangle targetBounds)
	{
		base.DrawToBitmap(bitmap, targetBounds);
	}

	public override bool PreProcessMessage(ref Message msg)
	{
		return base.PreProcessMessage(ref msg);
	}

	protected virtual void AttachInterfaces(object nativeActiveXObject)
	{
		throw new NotSupportedException("Retrieving a reference to an activex interface is not supported. Sorry.");
	}

	protected virtual void CreateSink()
	{
		throw new NotSupportedException("Retrieving a reference to an activex interface is not supported. Sorry.");
	}

	protected virtual WebBrowserSiteBase CreateWebBrowserSiteBase()
	{
		throw new NotSupportedException("Retrieving a reference to an activex interface is not supported. Sorry.");
	}

	protected virtual void DetachInterfaces()
	{
		throw new NotSupportedException("Retrieving a reference to an activex interface is not supported. Sorry.");
	}

	protected virtual void DetachSink()
	{
		throw new NotSupportedException("Retrieving a reference to an activex interface is not supported. Sorry.");
	}

	protected override void Dispose(bool disposing)
	{
		WebHost.Shutdown();
		base.Dispose(disposing);
	}

	protected override bool IsInputChar(char charCode)
	{
		return base.IsInputChar(charCode);
	}

	protected override void OnBackColorChanged(EventArgs e)
	{
		base.OnBackColorChanged(e);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
	}

	protected override void OnForeColorChanged(EventArgs e)
	{
		base.OnForeColorChanged(e);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		base.OnGotFocus(e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
		WebHost.FocusOut();
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (Visible && !Disposing && !IsDisposed && state == State.Loaded)
		{
			state = State.Active;
			webHost.Activate();
		}
		else if (!Visible && state == State.Active)
		{
			state = State.Loaded;
			webHost.Deactivate();
		}
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		return base.ProcessMnemonic(charCode);
	}

	protected override void WndProc(ref Message m)
	{
		base.WndProc(ref m);
	}

	internal override void SetBoundsCoreInternal(int x, int y, int width, int height, BoundsSpecified specified)
	{
		base.SetBoundsCoreInternal(x, y, width, height, specified);
		webHost.Resize(width, height);
	}

	internal WebBrowserBase()
	{
		webHost = Manager.GetNewInstance();
		if (webHost.Load(Handle, Width, Height))
		{
			state = State.Loaded;
			webHost.MouseClick += OnWebHostMouseClick;
			webHost.Focus += OnWebHostFocus;
			webHost.CreateNewWindow += OnWebHostCreateNewWindow;
			webHost.LoadStarted += OnWebHostLoadStarted;
			webHost.LoadCommited += OnWebHostLoadCommited;
			webHost.ProgressChanged += OnWebHostProgressChanged;
			webHost.LoadFinished += OnWebHostLoadFinished;
			if (!suppressDialogs)
			{
				webHost.Alert += OnWebHostAlert;
			}
			webHost.StatusChanged += OnWebHostStatusChanged;
			webHost.SecurityChanged += OnWebHostSecurityChanged;
			webHost.ContextMenuShown += OnWebHostContextMenuShown;
		}
	}

	private void OnWebHostAlert(object sender, AlertEventArgs e)
	{
		switch (e.Type)
		{
		case DialogType.Alert:
			MessageBox.Show(e.Text, e.Title);
			break;
		case DialogType.AlertCheck:
		{
			AlertCheck alertCheck = new AlertCheck(e.Title, e.Text, e.CheckMessage, e.CheckState);
			alertCheck.Show();
			e.CheckState = alertCheck.Checked;
			e.BoolReturn = true;
			break;
		}
		case DialogType.Confirm:
		{
			DialogResult dialogResult3 = MessageBox.Show(e.Text, e.Title, MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation);
			e.BoolReturn = dialogResult3 == DialogResult.OK;
			break;
		}
		case DialogType.ConfirmCheck:
		{
			ConfirmCheck confirmCheck = new ConfirmCheck(e.Title, e.Text, e.CheckMessage, e.CheckState);
			DialogResult dialogResult2 = confirmCheck.Show();
			e.CheckState = confirmCheck.Checked;
			e.BoolReturn = dialogResult2 == DialogResult.OK;
			break;
		}
		case DialogType.ConfirmEx:
			MessageBox.Show(e.Text, e.Title);
			break;
		case DialogType.Prompt:
		{
			Prompt prompt = new Prompt(e.Title, e.Text, e.Text2);
			DialogResult dialogResult = prompt.Show();
			e.StringReturn = prompt.Text;
			e.BoolReturn = dialogResult == DialogResult.OK;
			break;
		}
		case DialogType.PromptPassword:
			MessageBox.Show(e.Text, e.Title);
			break;
		case DialogType.PromptUsernamePassword:
			MessageBox.Show(e.Text, e.Title);
			break;
		case DialogType.Select:
			MessageBox.Show(e.Text, e.Title);
			break;
		}
	}

	private bool OnWebHostCreateNewWindow(object sender, CreateNewWindowEventArgs e)
	{
		return OnNewWindowInternal();
	}

	internal override void OnResizeInternal(EventArgs e)
	{
		base.OnResizeInternal(e);
		if (state == State.Active)
		{
			webHost.Resize(Width, Height);
		}
	}

	private void OnWebHostMouseClick(object sender, EventArgs e)
	{
	}

	private void OnWebHostFocus(object sender, EventArgs e)
	{
		Focus();
	}

	internal virtual bool OnNewWindowInternal()
	{
		return false;
	}

	internal virtual void OnWebHostLoadStarted(object sender, LoadStartedEventArgs e)
	{
	}

	internal virtual void OnWebHostLoadCommited(object sender, LoadCommitedEventArgs e)
	{
	}

	internal virtual void OnWebHostProgressChanged(object sender, Mono.WebBrowser.ProgressChangedEventArgs e)
	{
	}

	internal virtual void OnWebHostLoadFinished(object sender, LoadFinishedEventArgs e)
	{
	}

	internal virtual void OnWebHostSecurityChanged(object sender, SecurityChangedEventArgs e)
	{
	}

	internal virtual void OnWebHostContextMenuShown(object sender, ContextMenuEventArgs e)
	{
	}

	internal virtual void OnWebHostStatusChanged(object sender, StatusChangedEventArgs e)
	{
	}
}
