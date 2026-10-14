using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms.Design.Behavior;

namespace System.Windows.Forms.Design;

public class ControlDesigner : ComponentDesigner, IMessageReceiver
{
	[ComVisible(true)]
	public class ControlDesignerAccessibleObject : AccessibleObject
	{
		[System.MonoTODO]
		public override Rectangle Bounds
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		[System.MonoTODO]
		public override string DefaultAction
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		[System.MonoTODO]
		public override string Description
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		[System.MonoTODO]
		public override string Name
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		[System.MonoTODO]
		public override AccessibleObject Parent
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		[System.MonoTODO]
		public override AccessibleRole Role
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		[System.MonoTODO]
		public override AccessibleStates State
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		[System.MonoTODO]
		public override string Value
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		[System.MonoTODO]
		public ControlDesignerAccessibleObject(ControlDesigner designer, Control control)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public override AccessibleObject GetChild(int index)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public override int GetChildCount()
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public override AccessibleObject GetFocused()
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public override AccessibleObject GetSelected()
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public override AccessibleObject HitTest(int x, int y)
		{
			throw new NotImplementedException();
		}
	}

	private WndProcRouter _messageRouter;

	private bool _locked;

	private bool _mouseDown;

	private bool _mouseMoveAfterMouseDown;

	private bool _mouseDownFirstMove;

	private bool _firstMouseMoveInClient = true;

	protected static readonly Point InvalidPoint = new Point(int.MinValue, int.MinValue);

	protected AccessibleObject accessibilityObj;

	private MouseButtons _mouseButtonDown;

	protected internal BehaviorService BehaviorService
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public virtual Control Control => (Control)Component;

	protected virtual bool EnableDragRect => true;

	public virtual SelectionRules SelectionRules
	{
		get
		{
			if (Control == null)
			{
				return SelectionRules.None;
			}
			SelectionRules selectionRules = SelectionRules.Visible;
			if ((bool)GetValue(Component, "Locked"))
			{
				selectionRules |= SelectionRules.Locked;
			}
			else
			{
				switch ((DockStyle)GetValue(Component, "Dock", typeof(DockStyle)))
				{
				case DockStyle.Top:
					selectionRules |= SelectionRules.BottomSizeable;
					break;
				case DockStyle.Left:
					selectionRules |= SelectionRules.RightSizeable;
					break;
				case DockStyle.Right:
					selectionRules |= SelectionRules.LeftSizeable;
					break;
				case DockStyle.Bottom:
					selectionRules |= SelectionRules.TopSizeable;
					break;
				default:
					selectionRules |= SelectionRules.Moveable;
					selectionRules |= SelectionRules.AllSizeable;
					break;
				case DockStyle.Fill:
					break;
				}
			}
			return selectionRules;
		}
	}

	public override ICollection AssociatedComponents
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			foreach (Control control in Control.Controls)
			{
				if (control.Site != null)
				{
					arrayList.Add(control);
				}
			}
			return arrayList;
		}
	}

	protected override IComponent ParentComponent => GetValue(Control, "Parent") as Control;

	public virtual AccessibleObject AccessibilityObject
	{
		get
		{
			if (accessibilityObj == null)
			{
				accessibilityObj = new AccessibleObject();
			}
			return accessibilityObj;
		}
	}

	internal MouseButtons MouseButtonDown => _mouseButtonDown;

	private bool Visible
	{
		get
		{
			return (bool)ShadowProperties["Visible"];
		}
		set
		{
			ShadowProperties["Visible"] = value;
		}
	}

	private bool Enabled
	{
		get
		{
			return (bool)ShadowProperties["Enabled"];
		}
		set
		{
			ShadowProperties["Enabled"] = value;
		}
	}

	private bool Locked
	{
		get
		{
			return _locked;
		}
		set
		{
			_locked = value;
		}
	}

	private bool AllowDrop
	{
		get
		{
			return (bool)ShadowProperties["AllowDrop"];
		}
		set
		{
			ShadowProperties["AllowDrop"] = value;
		}
	}

	private string Name
	{
		get
		{
			return Component.Site.Name;
		}
		set
		{
			Component.Site.Name = value;
		}
	}

	private ContextMenu ContextMenu
	{
		get
		{
			return (ContextMenu)ShadowProperties["ContextMenu"];
		}
		set
		{
			ShadowProperties["ContextMenu"] = value;
		}
	}

	private Point Location
	{
		get
		{
			return Control.Location;
		}
		set
		{
			Control.Location = value;
		}
	}

	[System.MonoTODO]
	protected override InheritanceAttribute InheritanceAttribute
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual IList SnapLines
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual bool ParticipatesWithSnapLines
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public bool AutoResizeHandles
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		if (!(component is Control))
		{
			throw new ArgumentException("Component is not a Control.");
		}
		Control.Text = component.Site.Name;
		_messageRouter = new WndProcRouter((Control)component, this);
		Control.WindowTarget = _messageRouter;
		Visible = true;
		Enabled = true;
		Locked = false;
		AllowDrop = false;
		Control.Enabled = true;
		Control.Visible = true;
		Control.AllowDrop = false;
		Control.DragDrop += OnDragDrop;
		Control.DragEnter += OnDragEnter;
		Control.DragLeave += OnDragLeave;
		Control.DragOver += OnDragOver;
		if (Control.IsHandleCreated)
		{
			OnCreateHandle();
		}
	}

	public override void OnSetComponentDefaults()
	{
		if (Component != null && Component.Site != null)
		{
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(Component)["Text"];
			if (propertyDescriptor != null && !propertyDescriptor.IsReadOnly && propertyDescriptor.PropertyType == typeof(string))
			{
				propertyDescriptor.SetValue(Component, Component.Site.Name);
			}
		}
	}

	protected void DefWndProc(ref Message m)
	{
		_messageRouter.ToControl(ref m);
	}

	protected void BaseWndProc(ref Message m)
	{
		_messageRouter.ToSystem(ref m);
	}

	void IMessageReceiver.WndProc(ref Message m)
	{
		WndProc(ref m);
	}

	protected virtual void WndProc(ref Message m)
	{
		if (m.Msg >= 256 && m.Msg <= 264)
		{
			return;
		}
		if (IsMouseMessage((Native.Msg)m.Msg) && GetHitTest(new Point(Native.LoWord((int)m.LParam), Native.HiWord((int)m.LParam))))
		{
			DefWndProc(ref m);
			return;
		}
		switch ((Native.Msg)m.Msg)
		{
		case Native.Msg.WM_CREATE:
			DefWndProc(ref m);
			if (m.HWnd == Control.Handle)
			{
				OnCreateHandle();
			}
			break;
		case Native.Msg.WM_CONTEXTMENU:
			OnContextMenu(Native.LoWord((int)m.LParam), Native.HiWord((int)m.LParam));
			break;
		case Native.Msg.WM_SETCURSOR:
			if (GetHitTest(new Point(Native.LoWord((int)m.LParam), Native.HiWord((int)m.LParam))))
			{
				DefWndProc(ref m);
			}
			else
			{
				OnSetCursor();
			}
			break;
		case Native.Msg.WM_SETFOCUS:
			DefWndProc(ref m);
			break;
		case Native.Msg.WM_PAINT:
		{
			DefWndProc(ref m);
			Graphics graphics = Graphics.FromHwnd(m.HWnd);
			PaintEventArgs e = new PaintEventArgs(graphics, Control.Bounds);
			OnPaintAdornments(e);
			graphics.Dispose();
			e.Dispose();
			break;
		}
		case Native.Msg.WM_LBUTTONDBLCLK:
		case Native.Msg.WM_RBUTTONDBLCLK:
		case Native.Msg.WM_MBUTTONDBLCLK:
			if (m.Msg == 515)
			{
				_mouseButtonDown = MouseButtons.Left;
			}
			else if (m.Msg == 518)
			{
				_mouseButtonDown = MouseButtons.Right;
			}
			else if (m.Msg == 521)
			{
				_mouseButtonDown = MouseButtons.Middle;
			}
			OnMouseDoubleClick();
			BaseWndProc(ref m);
			break;
		case Native.Msg.WM_MOUSEHOVER:
			OnMouseHover();
			break;
		case Native.Msg.WM_LBUTTONDOWN:
		case Native.Msg.WM_RBUTTONDOWN:
		case Native.Msg.WM_MBUTTONDOWN:
			_mouseMoveAfterMouseDown = true;
			if (m.Msg == 513)
			{
				_mouseButtonDown = MouseButtons.Left;
			}
			else if (m.Msg == 516)
			{
				_mouseButtonDown = MouseButtons.Right;
			}
			else if (m.Msg == 519)
			{
				_mouseButtonDown = MouseButtons.Middle;
			}
			if (_firstMouseMoveInClient)
			{
				OnMouseEnter();
				_firstMouseMoveInClient = false;
			}
			OnMouseDown(Native.LoWord((int)m.LParam), Native.HiWord((int)m.LParam));
			BaseWndProc(ref m);
			break;
		case Native.Msg.WM_MOUSELEAVE:
			_firstMouseMoveInClient = false;
			OnMouseLeave();
			BaseWndProc(ref m);
			break;
		case Native.Msg.WM_CANCELMODE:
			OnMouseDragEnd(cancel: true);
			DefWndProc(ref m);
			break;
		case Native.Msg.WM_NCLBUTTONUP:
		case Native.Msg.WM_NCRBUTTONUP:
		case Native.Msg.WM_NCMBUTTONUP:
		case Native.Msg.WM_LBUTTONUP:
		case Native.Msg.WM_RBUTTONUP:
		case Native.Msg.WM_MBUTTONUP:
			_mouseMoveAfterMouseDown = false;
			OnMouseUp();
			BaseWndProc(ref m);
			break;
		case Native.Msg.WM_MOUSEFIRST:
		{
			if (_mouseMoveAfterMouseDown)
			{
				_mouseMoveAfterMouseDown = false;
				BaseWndProc(ref m);
				break;
			}
			IUISelectionService iUISelectionService = GetService(typeof(IUISelectionService)) as IUISelectionService;
			ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
			IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
			if (iUISelectionService != null && selectionService != null && designerHost != null)
			{
				Control control = selectionService.PrimarySelection as Control;
				Point p = new Point(Native.LoWord((int)m.LParam), Native.HiWord((int)m.LParam));
				if (iUISelectionService.SelectionInProgress && Component != designerHost.RootComponent && Component != selectionService.PrimarySelection)
				{
					p = control.PointToClient(Control.PointToScreen(p));
					Native.SendMessage(control.Handle, (Native.Msg)m.Msg, m.WParam, Native.LParam(p.X, p.Y));
				}
				else if (iUISelectionService.ResizeInProgress && Control.Parent == ((Control)selectionService.PrimarySelection).Parent)
				{
					p = Control.Parent.PointToClient(Control.PointToScreen(p));
					Native.SendMessage(Control.Parent.Handle, (Native.Msg)m.Msg, m.WParam, Native.LParam(p.X, p.Y));
				}
				else
				{
					OnMouseMove(p.X, p.Y);
				}
			}
			else
			{
				OnMouseMove(Native.LoWord((int)m.LParam), Native.HiWord((int)m.LParam));
			}
			BaseWndProc(ref m);
			break;
		}
		default:
			DefWndProc(ref m);
			break;
		case Native.Msg.WM_NCLBUTTONDOWN:
		case Native.Msg.WM_NCLBUTTONDBLCLK:
		case Native.Msg.WM_NCRBUTTONDOWN:
		case Native.Msg.WM_NCRBUTTONDBLCLK:
		case Native.Msg.WM_NCMBUTTONDOWN:
			break;
		}
	}

	protected virtual bool GetHitTest(Point point)
	{
		return false;
	}

	private bool IsMouseMessage(Native.Msg msg)
	{
		if (msg >= Native.Msg.WM_MOUSEFIRST && msg <= Native.Msg.WM_MOUSEWHEEL)
		{
			return true;
		}
		if (msg >= Native.Msg.WM_NCLBUTTONDOWN && msg <= Native.Msg.WM_NCMBUTTONDBLCLK)
		{
			return true;
		}
		if (msg == Native.Msg.WM_MOUSEHOVER || msg == Native.Msg.WM_MOUSELEAVE)
		{
			return true;
		}
		return false;
	}

	protected virtual void OnSetCursor()
	{
	}

	private void OnMouseDoubleClick()
	{
		try
		{
			base.DoDefaultAction();
		}
		catch (Exception e)
		{
			DisplayError(e);
		}
	}

	internal virtual void OnMouseDown(int x, int y)
	{
		_mouseDown = true;
		_mouseDownFirstMove = true;
		if ((!(GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService) || !iUISelectionService.AdornmentsHitTest(Control, x, y)) && GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SetSelectedComponents(new IComponent[1] { Component });
		}
	}

	internal virtual void OnMouseMove(int x, int y)
	{
		if (_mouseDown)
		{
			if (_mouseDownFirstMove)
			{
				OnMouseDragBegin(x, y);
				_mouseDownFirstMove = false;
			}
			else
			{
				OnMouseDragMove(x, y);
			}
		}
	}

	internal virtual void OnMouseUp()
	{
		IUISelectionService iUISelectionService = GetService(typeof(IUISelectionService)) as IUISelectionService;
		if (_mouseDown)
		{
			OnMouseDragEnd(cancel: false);
			if (iUISelectionService != null && (iUISelectionService.SelectionInProgress || iUISelectionService.ResizeInProgress))
			{
				iUISelectionService.MouseDragEnd(cancel: false);
			}
			_mouseDown = false;
		}
		else if (iUISelectionService != null && (iUISelectionService.SelectionInProgress || iUISelectionService.ResizeInProgress))
		{
			iUISelectionService.MouseDragEnd(cancel: false);
		}
	}

	protected virtual void OnContextMenu(int x, int y)
	{
		if (GetService(typeof(IMenuCommandService)) is IMenuCommandService menuCommandService)
		{
			menuCommandService.ShowContextMenu(MenuCommands.SelectionMenu, x, y);
		}
	}

	protected virtual void OnMouseEnter()
	{
	}

	protected virtual void OnMouseHover()
	{
	}

	protected virtual void OnMouseLeave()
	{
	}

	protected virtual void OnCreateHandle()
	{
	}

	protected virtual void OnPaintAdornments(PaintEventArgs pe)
	{
	}

	protected virtual void OnMouseDragBegin(int x, int y)
	{
		if (GetService(typeof(IUISelectionService)) is IUISelectionService iUISelectionService && (SelectionRules & SelectionRules.Moveable) == SelectionRules.Moveable)
		{
			iUISelectionService.DragBegin();
		}
	}

	protected virtual void OnMouseDragMove(int x, int y)
	{
	}

	protected virtual void OnMouseDragEnd(bool cancel)
	{
	}

	protected void HookChildControls(Control firstChild)
	{
		if (firstChild == null)
		{
			return;
		}
		foreach (Control control in firstChild.Controls)
		{
			control.WindowTarget = new WndProcRouter(control, this);
		}
	}

	protected void UnhookChildControls(Control firstChild)
	{
		if (firstChild == null)
		{
			return;
		}
		foreach (Control control in firstChild.Controls)
		{
			if (control.WindowTarget is WndProcRouter)
			{
				((WndProcRouter)control.WindowTarget).Dispose();
			}
		}
	}

	public virtual bool CanBeParentedTo(IDesigner parentDesigner)
	{
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		if (parentDesigner is ParentControlDesigner && Component != designerHost.RootComponent && !Control.Controls.Contains(((ParentControlDesigner)parentDesigner).Control))
		{
			return true;
		}
		return false;
	}

	protected void DisplayError(Exception e)
	{
		if (e == null)
		{
			return;
		}
		if (GetService(typeof(IUIService)) is IUIService iUIService)
		{
			iUIService.ShowError(e);
			return;
		}
		string text = e.Message;
		if (text == null || text == string.Empty)
		{
			text = e.ToString();
		}
		MessageBox.Show(Control, text, "Error", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
	}

	protected void EnableDragDrop(bool value)
	{
		if (Control != null)
		{
			if (value)
			{
				Control.DragDrop += OnDragDrop;
				Control.DragOver += OnDragOver;
				Control.DragEnter += OnDragEnter;
				Control.DragLeave += OnDragLeave;
				Control.GiveFeedback += OnGiveFeedback;
				Control.AllowDrop = true;
			}
			else
			{
				Control.DragDrop -= OnDragDrop;
				Control.DragOver -= OnDragOver;
				Control.DragEnter -= OnDragEnter;
				Control.DragLeave -= OnDragLeave;
				Control.GiveFeedback -= OnGiveFeedback;
				Control.AllowDrop = false;
			}
		}
	}

	private void OnGiveFeedback(object sender, GiveFeedbackEventArgs e)
	{
		OnGiveFeedback(e);
	}

	private void OnDragDrop(object sender, DragEventArgs e)
	{
		OnDragDrop(e);
	}

	private void OnDragEnter(object sender, DragEventArgs e)
	{
		OnDragEnter(e);
	}

	private void OnDragLeave(object sender, EventArgs e)
	{
		OnDragLeave(e);
	}

	private void OnDragOver(object sender, DragEventArgs e)
	{
		OnDragOver(e);
	}

	protected virtual void OnGiveFeedback(GiveFeedbackEventArgs e)
	{
		e.UseDefaultCursors = false;
	}

	protected virtual void OnDragDrop(DragEventArgs de)
	{
	}

	protected virtual void OnDragEnter(DragEventArgs de)
	{
	}

	protected virtual void OnDragLeave(EventArgs e)
	{
	}

	protected virtual void OnDragOver(DragEventArgs de)
	{
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		string[] array = new string[6] { "Visible", "Enabled", "ContextMenu", "AllowDrop", "Location", "Name" };
		Attribute[][] array2 = new Attribute[6][]
		{
			new Attribute[1]
			{
				new DefaultValueAttribute(value: true)
			},
			new Attribute[1]
			{
				new DefaultValueAttribute(value: true)
			},
			new Attribute[1]
			{
				new DefaultValueAttribute(null)
			},
			new Attribute[1]
			{
				new DefaultValueAttribute(value: false)
			},
			new Attribute[1]
			{
				new DefaultValueAttribute(typeof(Point), "0, 0")
			},
			new Attribute[0]
		};
		PropertyDescriptor propertyDescriptor = null;
		for (int i = 0; i < array.Length; i++)
		{
			if (properties[array[i]] is PropertyDescriptor oldPropertyDescriptor)
			{
				properties[array[i]] = TypeDescriptor.CreateProperty(typeof(ControlDesigner), oldPropertyDescriptor, array2[i]);
			}
		}
		properties["Locked"] = TypeDescriptor.CreateProperty(typeof(ControlDesigner), "Locked", typeof(bool), DesignOnlyAttribute.Yes, BrowsableAttribute.Yes, CategoryAttribute.Design, new DefaultValueAttribute(value: false), new DescriptionAttribute("The Locked property determines if we can move or resize the control."));
	}

	internal object GetValue(object component, string propertyName)
	{
		return GetValue(component, propertyName, null);
	}

	internal object GetValue(object component, string propertyName, Type propertyType)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(component)[propertyName];
		if (propertyDescriptor == null)
		{
			throw new InvalidOperationException("Property \"" + propertyName + "\" is missing on " + component.GetType().AssemblyQualifiedName);
		}
		if (propertyType != null && !propertyType.IsAssignableFrom(propertyDescriptor.PropertyType))
		{
			throw new InvalidOperationException("Types do not match: " + propertyDescriptor.PropertyType.AssemblyQualifiedName + " : " + propertyType.AssemblyQualifiedName);
		}
		return propertyDescriptor.GetValue(component);
	}

	internal void SetValue(object component, string propertyName, object value)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(component)[propertyName];
		if (propertyDescriptor == null)
		{
			throw new InvalidOperationException("Property \"" + propertyName + "\" is missing on " + component.GetType().AssemblyQualifiedName);
		}
		if (!propertyDescriptor.PropertyType.IsAssignableFrom(value.GetType()))
		{
			throw new InvalidOperationException("Types do not match: " + value.GetType().AssemblyQualifiedName + " : " + propertyDescriptor.PropertyType.AssemblyQualifiedName);
		}
		if (!propertyDescriptor.IsReadOnly)
		{
			propertyDescriptor.SetValue(component, value);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && Control != null)
		{
			UnhookChildControls(Control);
			OnMouseDragEnd(cancel: true);
			_messageRouter.Dispose();
			Control.DragDrop -= OnDragDrop;
			Control.DragEnter -= OnDragEnter;
			Control.DragLeave -= OnDragLeave;
			Control.DragOver -= OnDragOver;
		}
		base.Dispose(disposing: true);
	}

	public virtual ControlDesigner InternalControlDesigner(int internalControlIndex)
	{
		return null;
	}

	public virtual int NumberOfInternalControlDesigners()
	{
		return 0;
	}

	protected bool EnableDesignMode(Control child, string name)
	{
		if (name == null)
		{
			throw new ArgumentNullException("name");
		}
		if (child == null)
		{
			throw new ArgumentNullException("child");
		}
		bool result = false;
		if (GetService(typeof(INestedContainer)) is INestedContainer nestedContainer)
		{
			nestedContainer.Add(child, name);
			result = true;
		}
		return result;
	}

	[System.MonoTODO]
	protected virtual ControlBodyGlyph GetControlGlyph(GlyphSelectionType selectionType)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual GlyphCollection GetGlyphs(GlyphSelectionType selectionType)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void InitializeExistingComponent(IDictionary defaultValues)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void InitializeNewComponent(IDictionary defaultValues)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void OnDragComplete(DragEventArgs de)
	{
		throw new NotImplementedException();
	}
}
