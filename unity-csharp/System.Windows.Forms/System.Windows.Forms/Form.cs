using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Runtime.InteropServices;
using Unity;

namespace System.Windows.Forms;

[DesignTimeVisible(false)]
[Designer("System.Windows.Forms.Design.FormDocumentDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(IRootDesigner))]
[DefaultEvent("Load")]
[ClassInterface(ClassInterfaceType.AutoDispatch)]
[InitializationEvent("Load")]
[ComVisible(true)]
[ToolboxItemFilter("System.Windows.Forms.Control.TopLevel")]
[ToolboxItem(false)]
[DesignerCategory("Form")]
public class Form : ContainerControl
{
	[ComVisible(false)]
	public new class ControlCollection : Control.ControlCollection
	{
		private Form form_owner;

		public ControlCollection(Form owner)
			: base(owner)
		{
			form_owner = owner;
		}

		public override void Add(Control value)
		{
			if (!Contains(value))
			{
				AddToList(value);
				((Form)value).owner = form_owner;
			}
		}

		public override void Remove(Control value)
		{
			((Form)value).owner = null;
			base.Remove(value);
		}
	}

	internal bool closing;

	private bool closed;

	private FormBorderStyle form_border_style;

	private bool is_active;

	private bool autoscale;

	private Size clientsize_set;

	private Size autoscale_base_size;

	private bool allow_transparency;

	private static Icon default_icon;

	internal bool is_modal;

	internal FormWindowState window_state;

	private bool control_box;

	private bool minimize_box;

	private bool maximize_box;

	private bool help_button;

	private bool show_in_taskbar;

	private bool topmost;

	private IButtonControl accept_button;

	private IButtonControl cancel_button;

	private DialogResult dialog_result;

	private FormStartPosition start_position;

	private Form owner;

	private ControlCollection owned_forms;

	private MdiClient mdi_container;

	internal InternalWindowManager window_manager;

	private Form mdi_parent;

	private bool key_preview;

	private MainMenu menu;

	private Icon icon;

	private Size maximum_size;

	private Size minimum_size;

	private SizeGripStyle size_grip_style;

	private SizeGrip size_grip;

	private Rectangle maximized_bounds;

	private Rectangle default_maximized_bounds;

	private double opacity;

	internal ApplicationContext context;

	private Color transparency_key;

	private bool is_loaded;

	internal int is_changing_visible_state;

	internal bool has_been_visible;

	private bool shown_raised;

	private bool close_raised;

	private bool is_clientsize_set;

	internal bool suppress_closing_events;

	internal bool waiting_showwindow;

	private bool is_minimizing;

	private bool show_icon = true;

	private MenuStrip main_menu_strip;

	private bool right_to_left_layout;

	private Rectangle restore_bounds;

	private bool autoscale_base_size_set;

	internal ArrayList disabled_by_showdialog = new ArrayList();

	internal static ArrayList modal_dialogs;

	private static object ActivatedEvent;

	private static object ClosedEvent;

	private static object ClosingEvent;

	private static object DeactivateEvent;

	private static object InputLanguageChangedEvent;

	private static object InputLanguageChangingEvent;

	private static object LoadEvent;

	private static object MaximizedBoundsChangedEvent;

	private static object MaximumSizeChangedEvent;

	private static object MdiChildActivateEvent;

	private static object MenuCompleteEvent;

	private static object MenuStartEvent;

	private static object MinimumSizeChangedEvent;

	private static object FormClosingEvent;

	private static object FormClosedEvent;

	private static object HelpButtonClickedEvent;

	private static object ResizeEndEvent;

	private static object ResizeBeginEvent;

	private static object RightToLeftLayoutChangedEvent;

	private static object ShownEvent;

	private static object UIAMenuChangedEvent;

	private static object UIATopMostChangedEvent;

	private static object UIAWindowStateChangedEvent;

	internal bool IsLoaded => is_loaded;

	internal bool IsActive
	{
		get
		{
			return is_active;
		}
		set
		{
			if (is_active != value && !IsRecreating)
			{
				is_active = value;
				if (is_active)
				{
					Application.AddForm(this);
					OnActivated(EventArgs.Empty);
				}
				else
				{
					OnDeactivate(EventArgs.Empty);
				}
			}
		}
	}

	public static Form ActiveForm
	{
		get
		{
			Control control = Control.FromHandle(XplatUI.GetActive());
			if (control != null)
			{
				if (control is Form)
				{
					return (Form)control;
				}
				for (Control control2 = control.Parent; control2 != null; control2 = control2.Parent)
				{
					if (control2 is Form)
					{
						return (Form)control2;
					}
				}
			}
			return null;
		}
	}

	[DefaultValue(null)]
	public IButtonControl AcceptButton
	{
		get
		{
			return accept_button;
		}
		set
		{
			if (accept_button != null)
			{
				accept_button.NotifyDefault(value: false);
			}
			accept_button = value;
			if (accept_button != null)
			{
				accept_button.NotifyDefault(value: true);
			}
			CheckAcceptButton();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool AllowTransparency
	{
		get
		{
			return allow_transparency;
		}
		set
		{
			if (value == allow_transparency)
			{
				return;
			}
			allow_transparency = value;
			if (!value)
			{
				return;
			}
			if (IsHandleCreated)
			{
				if ((XplatUI.SupportsTransparency() & TransparencySupport.Set) != 0)
				{
					XplatUI.SetWindowTransparency(Handle, Opacity, TransparencyKey);
				}
			}
			else
			{
				UpdateStyles();
			}
		}
	}

	[Browsable(false)]
	[Obsolete("This property has been deprecated in favor of AutoScaleMode.")]
	[MWFCategory("Layout")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool AutoScale
	{
		get
		{
			return autoscale;
		}
		set
		{
			if (value)
			{
				AutoScaleMode = AutoScaleMode.None;
			}
			autoscale = value;
		}
	}

	[Browsable(false)]
	[Localizable(true)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual Size AutoScaleBaseSize
	{
		get
		{
			return autoscale_base_size;
		}
		[MonoTODO("Setting this is probably unintentional and can cause Forms to be improperly sized.  See http://www.mono-project.com/FAQ:_Winforms#My_forms_are_sized_improperly for details.")]
		set
		{
			autoscale_base_size = value;
			autoscale_base_size_set = true;
		}
	}

	[Localizable(true)]
	public override bool AutoScroll
	{
		get
		{
			return base.AutoScroll;
		}
		set
		{
			base.AutoScroll = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	public override bool AutoSize
	{
		get
		{
			return base.AutoSize;
		}
		set
		{
			if (base.AutoSize != value)
			{
				base.AutoSize = value;
				PerformLayout(this, "AutoSize");
			}
		}
	}

	[DefaultValue(AutoSizeMode.GrowOnly)]
	[Browsable(true)]
	[Localizable(true)]
	public AutoSizeMode AutoSizeMode
	{
		get
		{
			return GetAutoSizeMode();
		}
		set
		{
			if (GetAutoSizeMode() != value)
			{
				if (!Enum.IsDefined(typeof(AutoSizeMode), value))
				{
					throw new InvalidEnumArgumentException($"Enum argument value '{value}' is not valid for AutoSizeMode");
				}
				SetAutoSizeMode(value);
				PerformLayout(this, "AutoSizeMode");
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	public override AutoValidate AutoValidate
	{
		get
		{
			return base.AutoValidate;
		}
		set
		{
			base.AutoValidate = value;
		}
	}

	public override Color BackColor
	{
		get
		{
			if (background_color.IsEmpty)
			{
				return Control.DefaultBackColor;
			}
			return background_color;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[DefaultValue(null)]
	public IButtonControl CancelButton
	{
		get
		{
			return cancel_button;
		}
		set
		{
			cancel_button = value;
			if (cancel_button != null && cancel_button.DialogResult == DialogResult.None)
			{
				cancel_button.DialogResult = DialogResult.Cancel;
			}
		}
	}

	[Localizable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public new Size ClientSize
	{
		get
		{
			return base.ClientSize;
		}
		set
		{
			is_clientsize_set = true;
			base.ClientSize = value;
		}
	}

	[DefaultValue(true)]
	[MWFCategory("Window Style")]
	public bool ControlBox
	{
		get
		{
			return control_box;
		}
		set
		{
			if (control_box != value)
			{
				control_box = value;
				UpdateStyles();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Rectangle DesktopBounds
	{
		get
		{
			return new Rectangle(Location, Size);
		}
		set
		{
			Bounds = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Point DesktopLocation
	{
		get
		{
			return Location;
		}
		set
		{
			Location = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public DialogResult DialogResult
	{
		get
		{
			return dialog_result;
		}
		set
		{
			if (value < DialogResult.None || value > DialogResult.No)
			{
				throw new InvalidEnumArgumentException("value", (int)value, typeof(DialogResult));
			}
			dialog_result = value;
			if (dialog_result != DialogResult.None && is_modal)
			{
				RaiseCloseEvents(last_check: false, cancel: false);
			}
		}
	}

	[MWFCategory("Appearance")]
	[DispId(-504)]
	[DefaultValue(FormBorderStyle.Sizable)]
	public FormBorderStyle FormBorderStyle
	{
		get
		{
			return form_border_style;
		}
		set
		{
			form_border_style = value;
			if (window_manager == null)
			{
				if (IsHandleCreated)
				{
					XplatUI.SetBorderStyle(window.Handle, form_border_style);
				}
			}
			else
			{
				window_manager.UpdateBorderStyle(value);
			}
			Size clientSize = ClientSize;
			UpdateStyles();
			if (IsHandleCreated)
			{
				Size = InternalSizeFromClientSize(clientSize);
				XplatUI.InvalidateNC(Handle);
			}
			else if (is_clientsize_set)
			{
				Size = InternalSizeFromClientSize(clientSize);
			}
		}
	}

	[MWFCategory("Window Style")]
	[DefaultValue(false)]
	public bool HelpButton
	{
		get
		{
			return help_button;
		}
		set
		{
			if (help_button != value)
			{
				help_button = value;
				UpdateStyles();
			}
		}
	}

	[MWFCategory("Window Style")]
	[AmbientValue(null)]
	[Localizable(true)]
	public Icon Icon
	{
		get
		{
			return icon;
		}
		set
		{
			if (value == null)
			{
				value = default_icon;
			}
			if (icon != value)
			{
				icon = value;
				if (IsHandleCreated)
				{
					XplatUI.SetIcon(Handle, icon);
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsMdiChild => mdi_parent != null;

	[MWFCategory("Window Style")]
	[DefaultValue(false)]
	public bool IsMdiContainer
	{
		get
		{
			return mdi_container != null;
		}
		set
		{
			if (value && mdi_container == null)
			{
				mdi_container = new MdiClient();
				Controls.Add(mdi_container);
				ControlAdded += ControlAddedHandler;
				mdi_container.SendToBack();
				mdi_container.SetParentText(text_changed: true);
			}
			else if (!value && mdi_container != null)
			{
				Controls.Remove(mdi_container);
				mdi_container = null;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Form ActiveMdiChild
	{
		get
		{
			if (!IsMdiContainer)
			{
				return null;
			}
			return mdi_container.ActiveMdiChild;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	public bool IsRestrictedWindow => false;

	[DefaultValue(false)]
	public bool KeyPreview
	{
		get
		{
			return key_preview;
		}
		set
		{
			key_preview = value;
		}
	}

	[TypeConverter(typeof(ReferenceConverter))]
	[DefaultValue(null)]
	public MenuStrip MainMenuStrip
	{
		get
		{
			return main_menu_strip;
		}
		set
		{
			if (main_menu_strip != value)
			{
				main_menu_strip = value;
				main_menu_strip.RefreshMdiItems();
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new Padding Margin
	{
		get
		{
			return base.Margin;
		}
		set
		{
			base.Margin = value;
		}
	}

	[DefaultValue(true)]
	[MWFCategory("Window Style")]
	public bool MaximizeBox
	{
		get
		{
			return maximize_box;
		}
		set
		{
			if (maximize_box != value)
			{
				maximize_box = value;
				UpdateStyles();
			}
		}
	}

	[Localizable(true)]
	[MWFCategory("Layout")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(typeof(Size), "0, 0")]
	public override Size MaximumSize
	{
		get
		{
			return maximum_size;
		}
		set
		{
			if (!(maximum_size != value))
			{
				return;
			}
			maximum_size = value;
			if (!minimum_size.IsEmpty)
			{
				if (maximum_size.Width <= minimum_size.Width)
				{
					minimum_size.Width = maximum_size.Width;
				}
				if (maximum_size.Height <= minimum_size.Height)
				{
					minimum_size.Height = maximum_size.Height;
				}
			}
			OnMaximumSizeChanged(EventArgs.Empty);
			if (IsHandleCreated)
			{
				XplatUI.SetWindowMinMax(Handle, maximized_bounds, minimum_size, maximum_size);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Form[] MdiChildren
	{
		get
		{
			if (mdi_container != null)
			{
				return mdi_container.MdiChildren;
			}
			return new Form[0];
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Form MdiParent
	{
		get
		{
			return mdi_parent;
		}
		set
		{
			if (value == mdi_parent)
			{
				return;
			}
			if (value != null && !value.IsMdiContainer)
			{
				throw new ArgumentException("Form that was specified to be the MdiParent for this form is not an MdiContainer.");
			}
			if (mdi_parent != null)
			{
				mdi_parent.MdiContainer.Controls.Remove(this);
			}
			if (value != null)
			{
				mdi_parent = value;
				if (window_manager == null)
				{
					window_manager = new MdiWindowManager(this, mdi_parent.MdiContainer);
				}
				mdi_parent.MdiContainer.Controls.Add(this);
				mdi_parent.MdiContainer.Controls.SetChildIndex(this, 0);
				if (IsHandleCreated)
				{
					RecreateHandle();
				}
			}
			else if (mdi_parent != null)
			{
				mdi_parent = null;
				window_manager = null;
				FormBorderStyle = form_border_style;
				if (IsHandleCreated)
				{
					RecreateHandle();
				}
			}
			is_toplevel = mdi_parent == null;
		}
	}

	internal MdiClient MdiContainer => mdi_container;

	internal InternalWindowManager WindowManager => window_manager;

	[Browsable(false)]
	[TypeConverter(typeof(ReferenceConverter))]
	[DefaultValue(null)]
	[MWFCategory("Window Style")]
	public MainMenu Menu
	{
		get
		{
			return menu;
		}
		set
		{
			if (menu == value)
			{
				return;
			}
			menu = value;
			if (menu != null && !IsMdiChild)
			{
				menu.SetForm(this);
				if (IsHandleCreated)
				{
					XplatUI.SetMenu(window.Handle, menu);
				}
				if (clientsize_set != Size.Empty)
				{
					SetClientSizeCore(clientsize_set.Width, clientsize_set.Height);
				}
				else
				{
					UpdateBounds(bounds.X, bounds.Y, bounds.Width, bounds.Height, ClientSize.Width, ClientSize.Height - ThemeEngine.Current.CalcMenuBarSize(DeviceContext, menu, ClientSize.Width));
				}
			}
			else
			{
				UpdateBounds();
			}
			OnUIAMenuChanged(EventArgs.Empty);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public MainMenu MergedMenu
	{
		get
		{
			if (!IsMdiChild || window_manager == null)
			{
				return null;
			}
			return ((MdiWindowManager)window_manager).MergedMenu;
		}
	}

	internal MainMenu ActiveMenu
	{
		get
		{
			if (IsMdiChild)
			{
				return null;
			}
			if (IsMdiContainer && mdi_container.Controls.Count > 0 && ((Form)mdi_container.Controls[0]).WindowState == FormWindowState.Maximized)
			{
				return ((MdiWindowManager)((Form)mdi_container.Controls[0]).WindowManager).MaximizedMenu;
			}
			Form activeMdiChild = ActiveMdiChild;
			if (activeMdiChild == null || activeMdiChild.Menu == null)
			{
				return menu;
			}
			return activeMdiChild.MergedMenu;
		}
	}

	internal MdiWindowManager ActiveMaximizedMdiChild
	{
		get
		{
			Form activeMdiChild = ActiveMdiChild;
			if (activeMdiChild == null)
			{
				return null;
			}
			if (activeMdiChild.WindowManager == null || activeMdiChild.window_state != FormWindowState.Maximized)
			{
				return null;
			}
			return (MdiWindowManager)activeMdiChild.WindowManager;
		}
	}

	[MWFCategory("Window Style")]
	[DefaultValue(true)]
	public bool MinimizeBox
	{
		get
		{
			return minimize_box;
		}
		set
		{
			if (minimize_box != value)
			{
				minimize_box = value;
				UpdateStyles();
			}
		}
	}

	[MWFCategory("Layout")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Localizable(true)]
	public override Size MinimumSize
	{
		get
		{
			return minimum_size;
		}
		set
		{
			if (!(minimum_size != value))
			{
				return;
			}
			minimum_size = value;
			if (!maximum_size.IsEmpty)
			{
				if (minimum_size.Width >= maximum_size.Width)
				{
					maximum_size.Width = minimum_size.Width;
				}
				if (minimum_size.Height >= maximum_size.Height)
				{
					maximum_size.Height = minimum_size.Height;
				}
			}
			if (Size.Width < value.Width || Size.Height < value.Height)
			{
				Size = new Size(Math.Max(Size.Width, value.Width), Math.Max(Size.Height, value.Height));
			}
			OnMinimumSizeChanged(EventArgs.Empty);
			if (IsHandleCreated)
			{
				XplatUI.SetWindowMinMax(Handle, maximized_bounds, minimum_size, maximum_size);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Modal => is_modal;

	[DefaultValue(1.0)]
	[MWFCategory("Window Style")]
	[TypeConverter(typeof(OpacityConverter))]
	public double Opacity
	{
		get
		{
			if (IsHandleCreated && (XplatUI.SupportsTransparency() & TransparencySupport.Get) != 0)
			{
				return XplatUI.GetWindowTransparency(Handle);
			}
			return opacity;
		}
		set
		{
			opacity = value;
			if (opacity < 0.0)
			{
				opacity = 0.0;
			}
			if (opacity > 1.0)
			{
				opacity = 1.0;
			}
			AllowTransparency = true;
			if (IsHandleCreated)
			{
				UpdateStyles();
				if ((XplatUI.SupportsTransparency() & TransparencySupport.Set) != 0)
				{
					XplatUI.SetWindowTransparency(Handle, opacity, TransparencyKey);
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Form[] OwnedForms
	{
		get
		{
			Form[] array = new Form[owned_forms.Count];
			for (int i = 0; i < owned_forms.Count; i++)
			{
				array[i] = (Form)owned_forms[i];
			}
			return array;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Form Owner
	{
		get
		{
			return owner;
		}
		set
		{
			if (owner == value)
			{
				return;
			}
			if (owner != null)
			{
				owner.RemoveOwnedForm(this);
			}
			owner = value;
			if (owner != null)
			{
				owner.AddOwnedForm(this);
			}
			if (IsHandleCreated)
			{
				if (owner != null && owner.IsHandleCreated)
				{
					XplatUI.SetOwner(window.Handle, owner.window.Handle);
				}
				else
				{
					XplatUI.SetOwner(window.Handle, IntPtr.Zero);
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Rectangle RestoreBounds => restore_bounds;

	[Localizable(true)]
	[DefaultValue(false)]
	public virtual bool RightToLeftLayout
	{
		get
		{
			return right_to_left_layout;
		}
		set
		{
			right_to_left_layout = value;
		}
	}

	[DefaultValue(true)]
	public bool ShowIcon
	{
		get
		{
			return show_icon;
		}
		set
		{
			if (show_icon != value)
			{
				show_icon = value;
				UpdateStyles();
				if (IsHandleCreated)
				{
					XplatUI.SetIcon(Handle, value ? Icon : null);
					XplatUI.InvalidateNC(Handle);
				}
			}
		}
	}

	[DefaultValue(true)]
	[MWFCategory("Window Style")]
	public bool ShowInTaskbar
	{
		get
		{
			return show_in_taskbar;
		}
		set
		{
			if (show_in_taskbar != value)
			{
				show_in_taskbar = value;
				if (IsHandleCreated)
				{
					RecreateHandle();
				}
				UpdateStyles();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Localizable(false)]
	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	[MWFCategory("Window Style")]
	[DefaultValue(SizeGripStyle.Auto)]
	public SizeGripStyle SizeGripStyle
	{
		get
		{
			return size_grip_style;
		}
		set
		{
			size_grip_style = value;
			UpdateSizeGripVisible();
		}
	}

	[DefaultValue(FormStartPosition.WindowsDefaultLocation)]
	[Localizable(true)]
	[MWFCategory("Layout")]
	public FormStartPosition StartPosition
	{
		get
		{
			return start_position;
		}
		set
		{
			start_position = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new int TabIndex
	{
		get
		{
			return base.TabIndex;
		}
		set
		{
			base.TabIndex = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DefaultValue(true)]
	[Browsable(false)]
	[DispId(-516)]
	public new bool TabStop
	{
		get
		{
			return base.TabStop;
		}
		set
		{
			base.TabStop = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool TopLevel
	{
		get
		{
			return GetTopLevel();
		}
		set
		{
			if (!value && IsMdiContainer)
			{
				throw new ArgumentException("MDI Container forms must be top level.");
			}
			SetTopLevel(value);
		}
	}

	[MWFCategory("Window Style")]
	[DefaultValue(false)]
	public bool TopMost
	{
		get
		{
			return topmost;
		}
		set
		{
			if (topmost != value)
			{
				topmost = value;
				if (IsHandleCreated)
				{
					XplatUI.SetTopmost(window.Handle, value);
				}
				OnUIATopMostChanged();
			}
		}
	}

	[MWFCategory("Window Style")]
	public Color TransparencyKey
	{
		get
		{
			return transparency_key;
		}
		set
		{
			transparency_key = value;
			AllowTransparency = true;
			UpdateStyles();
			if (IsHandleCreated && (XplatUI.SupportsTransparency() & TransparencySupport.Set) != 0)
			{
				XplatUI.SetWindowTransparency(Handle, Opacity, transparency_key);
			}
		}
	}

	[DefaultValue(FormWindowState.Normal)]
	[MWFCategory("Layout")]
	public FormWindowState WindowState
	{
		get
		{
			if (IsHandleCreated && shown_raised)
			{
				if (window_manager != null)
				{
					return window_manager.GetWindowState();
				}
				FormWindowState windowState = XplatUI.GetWindowState(Handle);
				if (windowState != (FormWindowState)(-1))
				{
					window_state = windowState;
				}
			}
			return window_state;
		}
		set
		{
			FormWindowState formWindowState = window_state;
			window_state = value;
			if (IsHandleCreated && shown_raised)
			{
				if (window_manager != null)
				{
					window_manager.SetWindowState(formWindowState, value);
					return;
				}
				XplatUI.SetWindowState(Handle, value);
			}
			if (formWindowState != window_state)
			{
				OnUIAWindowStateChanged();
			}
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = new CreateParams();
			if (Text != null)
			{
				createParams.Caption = Text.Replace(Environment.NewLine, string.Empty);
			}
			createParams.ClassName = XplatUI.GetDefaultClassName(GetType());
			createParams.ClassStyle = 0;
			createParams.Style = 0;
			createParams.ExStyle = 0;
			createParams.Param = 0;
			createParams.Parent = IntPtr.Zero;
			createParams.menu = ActiveMenu;
			createParams.control = this;
			if ((Parent != null || !TopLevel) && !IsMdiChild)
			{
				createParams.X = Left;
				createParams.Y = Top;
			}
			else
			{
				switch (start_position)
				{
				case FormStartPosition.Manual:
					createParams.X = Left;
					createParams.Y = Top;
					break;
				case FormStartPosition.CenterScreen:
					if (IsMdiChild)
					{
						createParams.X = Math.Max((MdiParent.mdi_container.ClientSize.Width - Width) / 2, 0);
						createParams.Y = Math.Max((MdiParent.mdi_container.ClientSize.Height - Height) / 2, 0);
					}
					else
					{
						createParams.X = Math.Max((Screen.PrimaryScreen.WorkingArea.Width - Width) / 2, 0);
						createParams.Y = Math.Max((Screen.PrimaryScreen.WorkingArea.Height - Height) / 2, 0);
					}
					break;
				case FormStartPosition.WindowsDefaultLocation:
				case FormStartPosition.WindowsDefaultBounds:
				case FormStartPosition.CenterParent:
					createParams.X = int.MinValue;
					createParams.Y = int.MinValue;
					break;
				}
			}
			createParams.Width = Width;
			createParams.Height = Height;
			createParams.Style = 33554432;
			if (!Modal)
			{
				createParams.WindowStyle |= WindowStyles.WS_CLIPSIBLINGS;
			}
			if (Parent != null && Parent.IsHandleCreated)
			{
				createParams.Parent = Parent.Handle;
				createParams.Style |= 1073741824;
			}
			if (IsMdiChild)
			{
				createParams.Style |= 1086324736;
				if (Parent != null)
				{
					createParams.Parent = Parent.Handle;
				}
				createParams.ExStyle |= 320;
				FormBorderStyle formBorderStyle = FormBorderStyle;
				if (formBorderStyle != FormBorderStyle.None)
				{
					if ((uint)(formBorderStyle - 5) <= 1u)
					{
						createParams.ExStyle |= 128;
					}
					createParams.Style |= 13565952;
				}
			}
			else
			{
				switch (FormBorderStyle)
				{
				case FormBorderStyle.Fixed3D:
					createParams.Style |= 12582912;
					createParams.ExStyle |= 512;
					break;
				case FormBorderStyle.FixedDialog:
					createParams.Style |= 12582912;
					createParams.ExStyle |= 65537;
					break;
				case FormBorderStyle.FixedSingle:
					createParams.Style |= 12582912;
					break;
				case FormBorderStyle.FixedToolWindow:
					createParams.Style |= 12582912;
					createParams.ExStyle |= 128;
					break;
				case FormBorderStyle.Sizable:
					createParams.Style |= 12845056;
					break;
				case FormBorderStyle.SizableToolWindow:
					createParams.Style |= 12845056;
					createParams.ExStyle |= 128;
					break;
				}
			}
			switch (window_state)
			{
			case FormWindowState.Maximized:
				createParams.Style |= 16777216;
				break;
			case FormWindowState.Minimized:
				createParams.Style |= 536870912;
				break;
			}
			if (TopMost)
			{
				createParams.ExStyle |= 8;
			}
			if (ShowInTaskbar)
			{
				createParams.ExStyle |= 262144;
			}
			if (MaximizeBox)
			{
				createParams.Style |= 65536;
			}
			if (MinimizeBox)
			{
				createParams.Style |= 131072;
			}
			if (ControlBox)
			{
				createParams.Style |= 524288;
			}
			if (!show_icon)
			{
				createParams.ExStyle |= 1;
			}
			createParams.ExStyle |= 65536;
			if (HelpButton && !MaximizeBox && !MinimizeBox)
			{
				createParams.ExStyle |= 1024;
			}
			int platform = (int)Environment.OSVersion.Platform;
			bool flag = platform == 128 || platform == 4 || platform == 6;
			if ((VisibleInternal && ((is_changing_visible_state == 0) | flag)) || IsRecreating)
			{
				createParams.Style |= 268435456;
			}
			if (opacity < 1.0 || TransparencyKey != Color.Empty)
			{
				createParams.ExStyle |= 524288;
			}
			if (!is_enabled && context == null)
			{
				createParams.Style |= 134217728;
			}
			if (!ControlBox && Text == string.Empty)
			{
				createParams.WindowStyle &= ~WindowStyles.WS_DLGFRAME;
			}
			return createParams;
		}
	}

	protected override ImeMode DefaultImeMode => ImeMode.NoControl;

	protected override Size DefaultSize => new Size(300, 300);

	protected Rectangle MaximizedBounds
	{
		get
		{
			if (maximized_bounds != Rectangle.Empty)
			{
				return maximized_bounds;
			}
			return default_maximized_bounds;
		}
		set
		{
			maximized_bounds = value;
			OnMaximizedBoundsChanged(EventArgs.Empty);
			if (IsHandleCreated)
			{
				XplatUI.SetWindowMinMax(Handle, maximized_bounds, minimum_size, maximum_size);
			}
		}
	}

	[Browsable(false)]
	[MonoTODO("Implemented for Win32, needs X11 implementation")]
	protected virtual bool ShowWithoutActivation => false;

	internal override bool ActivateOnShow => !ShowWithoutActivation;

	[SettingsBindable(true)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	[SettingsBindable(true)]
	public new Point Location
	{
		get
		{
			return base.Location;
		}
		set
		{
			base.Location = value;
		}
	}

	public event EventHandler Activated
	{
		add
		{
			Events.AddHandler(ActivatedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ActivatedEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public event EventHandler Closed
	{
		add
		{
			Events.AddHandler(ClosedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ClosedEvent, value);
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public event CancelEventHandler Closing
	{
		add
		{
			Events.AddHandler(ClosingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ClosingEvent, value);
		}
	}

	public event EventHandler Deactivate
	{
		add
		{
			Events.AddHandler(DeactivateEvent, value);
		}
		remove
		{
			Events.RemoveHandler(DeactivateEvent, value);
		}
	}

	public event InputLanguageChangedEventHandler InputLanguageChanged
	{
		add
		{
			Events.AddHandler(InputLanguageChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(InputLanguageChangedEvent, value);
		}
	}

	public event InputLanguageChangingEventHandler InputLanguageChanging
	{
		add
		{
			Events.AddHandler(InputLanguageChangingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(InputLanguageChangingEvent, value);
		}
	}

	public event EventHandler Load
	{
		add
		{
			Events.AddHandler(LoadEvent, value);
		}
		remove
		{
			Events.RemoveHandler(LoadEvent, value);
		}
	}

	public event EventHandler MaximizedBoundsChanged
	{
		add
		{
			Events.AddHandler(MaximizedBoundsChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(MaximizedBoundsChangedEvent, value);
		}
	}

	public event EventHandler MaximumSizeChanged
	{
		add
		{
			Events.AddHandler(MaximumSizeChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(MaximumSizeChangedEvent, value);
		}
	}

	public event EventHandler MdiChildActivate
	{
		add
		{
			Events.AddHandler(MdiChildActivateEvent, value);
		}
		remove
		{
			Events.RemoveHandler(MdiChildActivateEvent, value);
		}
	}

	[Browsable(false)]
	public event EventHandler MenuComplete
	{
		add
		{
			Events.AddHandler(MenuCompleteEvent, value);
		}
		remove
		{
			Events.RemoveHandler(MenuCompleteEvent, value);
		}
	}

	[Browsable(false)]
	public event EventHandler MenuStart
	{
		add
		{
			Events.AddHandler(MenuStartEvent, value);
		}
		remove
		{
			Events.RemoveHandler(MenuStartEvent, value);
		}
	}

	public event EventHandler MinimumSizeChanged
	{
		add
		{
			Events.AddHandler(MinimumSizeChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(MinimumSizeChangedEvent, value);
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler TabIndexChanged
	{
		add
		{
			base.TabIndexChanged += value;
		}
		remove
		{
			base.TabIndexChanged -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	public new event EventHandler AutoSizeChanged
	{
		add
		{
			base.AutoSizeChanged += value;
		}
		remove
		{
			base.AutoSizeChanged -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	public new event EventHandler AutoValidateChanged
	{
		add
		{
			base.AutoValidateChanged += value;
		}
		remove
		{
			base.AutoValidateChanged -= value;
		}
	}

	public event FormClosingEventHandler FormClosing
	{
		add
		{
			Events.AddHandler(FormClosingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(FormClosingEvent, value);
		}
	}

	public event FormClosedEventHandler FormClosed
	{
		add
		{
			Events.AddHandler(FormClosedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(FormClosedEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	public event CancelEventHandler HelpButtonClicked
	{
		add
		{
			Events.AddHandler(HelpButtonClickedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(HelpButtonClickedEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler MarginChanged
	{
		add
		{
			base.MarginChanged += value;
		}
		remove
		{
			base.MarginChanged -= value;
		}
	}

	public event EventHandler RightToLeftLayoutChanged
	{
		add
		{
			Events.AddHandler(RightToLeftLayoutChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(RightToLeftLayoutChangedEvent, value);
		}
	}

	public event EventHandler ResizeBegin
	{
		add
		{
			Events.AddHandler(ResizeBeginEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ResizeBeginEvent, value);
		}
	}

	public event EventHandler ResizeEnd
	{
		add
		{
			Events.AddHandler(ResizeEndEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ResizeEndEvent, value);
		}
	}

	public event EventHandler Shown
	{
		add
		{
			Events.AddHandler(ShownEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ShownEvent, value);
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler TabStopChanged
	{
		add
		{
			base.TabStopChanged += value;
		}
		remove
		{
			base.TabStopChanged -= value;
		}
	}

	internal event EventHandler UIAMenuChanged
	{
		add
		{
			Events.AddHandler(UIAMenuChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIAMenuChangedEvent, value);
		}
	}

	internal event EventHandler UIATopMostChanged
	{
		add
		{
			Events.AddHandler(UIATopMostChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIATopMostChangedEvent, value);
		}
	}

	internal event EventHandler UIAWindowStateChanged
	{
		add
		{
			Events.AddHandler(UIAWindowStateChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIAWindowStateChangedEvent, value);
		}
	}

	public event DpiChangedEventHandler DpiChanged
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

	static Form()
	{
		modal_dialogs = new ArrayList();
		ActivatedEvent = new object();
		ClosedEvent = new object();
		ClosingEvent = new object();
		DeactivateEvent = new object();
		InputLanguageChangedEvent = new object();
		InputLanguageChangingEvent = new object();
		LoadEvent = new object();
		MaximizedBoundsChangedEvent = new object();
		MaximumSizeChangedEvent = new object();
		MdiChildActivateEvent = new object();
		MenuCompleteEvent = new object();
		MenuStartEvent = new object();
		MinimumSizeChangedEvent = new object();
		FormClosingEvent = new object();
		FormClosedEvent = new object();
		HelpButtonClickedEvent = new object();
		ResizeEndEvent = new object();
		ResizeBeginEvent = new object();
		RightToLeftLayoutChangedEvent = new object();
		ShownEvent = new object();
		UIAMenuChangedEvent = new object();
		UIATopMostChangedEvent = new object();
		UIAWindowStateChangedEvent = new object();
		default_icon = ResourceImageLoader.GetIcon("mono.ico");
	}

	private void ControlAddedHandler(object sender, ControlEventArgs e)
	{
		if (mdi_container != null)
		{
			mdi_container.SendToBack();
		}
	}

	internal bool FireClosingEvents(CloseReason reason, bool cancel)
	{
		CancelEventArgs e = new CancelEventArgs(cancel);
		OnClosing(e);
		FormClosingEventArgs e2 = new FormClosingEventArgs(reason, e.Cancel);
		OnFormClosing(e2);
		return e2.Cancel;
	}

	private void FireClosedEvents(CloseReason reason)
	{
		OnClosed(EventArgs.Empty);
		OnFormClosed(new FormClosedEventArgs(reason));
	}

	internal override Size GetPreferredSizeCore(Size proposedSize)
	{
		Size empty = Size.Empty;
		foreach (Control control in Controls)
		{
			Size size = ((!control.AutoSize) ? control.ExplicitBounds.Size : control.PreferredSize);
			int num = control.Bounds.X + size.Width;
			int num2 = control.Bounds.Y + size.Height;
			if (control.Dock == DockStyle.Fill)
			{
				if (num > empty.Width)
				{
					empty.Width = num;
				}
			}
			else if (control.Dock != DockStyle.Top && control.Dock != DockStyle.Bottom && num > empty.Width)
			{
				empty.Width = num + control.Margin.Right;
			}
			if (control.Dock == DockStyle.Fill)
			{
				if (num2 > empty.Height)
				{
					empty.Height = num2;
				}
			}
			else if (control.Dock != DockStyle.Left && control.Dock != DockStyle.Right && num2 > empty.Height)
			{
				empty.Height = num2 + control.Margin.Bottom;
			}
		}
		if (empty == Size.Empty)
		{
			empty.Height += Padding.Top;
			empty.Width += Padding.Left;
		}
		empty.Height += Padding.Bottom;
		empty.Width += Padding.Right;
		return SizeFromClientSize(empty);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override Rectangle GetScaledBounds(Rectangle bounds, SizeF factor, BoundsSpecified specified)
	{
		if ((specified & BoundsSpecified.Width) == BoundsSpecified.Width)
		{
			int num = Size.Width - ClientSize.Width;
			bounds.Width = (int)Math.Round((float)(bounds.Width - num) * factor.Width) + num;
		}
		if ((specified & BoundsSpecified.Height) == BoundsSpecified.Height)
		{
			int num2 = Size.Height - ClientSize.Height;
			bounds.Height = (int)Math.Round((float)(bounds.Height - num2) * factor.Height) + num2;
		}
		return bounds;
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		return base.ProcessMnemonic(charCode);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void ScaleControl(SizeF factor, BoundsSpecified specified)
	{
		base.ScaleControl(factor, specified);
	}

	internal void OnActivatedInternal()
	{
		OnActivated(EventArgs.Empty);
	}

	internal void OnDeactivateInternal()
	{
		OnDeactivate(EventArgs.Empty);
	}

	internal override void UpdateWindowText()
	{
		if (IsHandleCreated)
		{
			if (shown_raised)
			{
				XplatUI.SetWindowStyle(window.Handle, CreateParams);
			}
			XplatUI.Text(Handle, Text.Replace(Environment.NewLine, string.Empty));
		}
	}

	internal void SelectActiveControl()
	{
		if (IsMdiContainer)
		{
			mdi_container.SendFocusToActiveChild();
		}
		else if (ActiveControl == null)
		{
			bool flag = is_visible;
			is_visible = true;
			if (!SelectNextControl(this, forward: true, tabStopOnly: true, nested: true, wrap: true))
			{
				Select(this);
			}
			is_visible = flag;
		}
		else
		{
			Select(ActiveControl);
		}
	}

	private new void UpdateSizeGripVisible()
	{
		bool flag = false;
		switch (size_grip_style)
		{
		case SizeGripStyle.Auto:
			flag = is_modal && (form_border_style == FormBorderStyle.Sizable || form_border_style == FormBorderStyle.SizableToolWindow);
			break;
		case SizeGripStyle.Hide:
			flag = false;
			break;
		case SizeGripStyle.Show:
			flag = form_border_style == FormBorderStyle.Sizable || form_border_style == FormBorderStyle.SizableToolWindow;
			break;
		}
		if (!flag)
		{
			if (size_grip != null && size_grip.Visible)
			{
				size_grip.Visible = false;
			}
			return;
		}
		if (size_grip == null)
		{
			size_grip = new SizeGrip(this);
			size_grip.Virtual = true;
			size_grip.FillBackground = false;
		}
		size_grip.Visible = true;
	}

	internal void ChangingParent(Control new_parent)
	{
		if (IsMdiChild)
		{
			return;
		}
		bool flag = false;
		if (new_parent == null)
		{
			window_manager = null;
		}
		else if (new_parent is MdiClient)
		{
			window_manager = new MdiWindowManager(this, (MdiClient)new_parent);
		}
		else
		{
			window_manager = new FormWindowManager(this);
			flag = true;
		}
		if (flag)
		{
			if (IsHandleCreated)
			{
				if (new_parent != null && new_parent.IsHandleCreated)
				{
					RecreateHandle();
				}
				else
				{
					DestroyHandle();
				}
			}
		}
		else if (IsHandleCreated)
		{
			IntPtr hParent = IntPtr.Zero;
			if (new_parent != null && new_parent.IsHandleCreated)
			{
				hParent = new_parent.Handle;
			}
			XplatUI.SetParent(Handle, hParent);
		}
		if (window_manager != null)
		{
			window_manager.UpdateWindowState(window_state, window_state, force: true);
		}
	}

	internal override bool FocusInternal(bool skip_check)
	{
		if (IsMdiChild && !IsHandleCreated)
		{
			CreateHandle();
		}
		return base.FocusInternal(skip_check);
	}

	public Form()
	{
		SizeF autoScaleSize = GetAutoScaleSize(Font);
		autoscale = true;
		autoscale_base_size = new Size((int)Math.Round(autoScaleSize.Width), (int)Math.Round(autoScaleSize.Height));
		allow_transparency = false;
		closing = false;
		is_modal = false;
		dialog_result = DialogResult.None;
		start_position = FormStartPosition.WindowsDefaultLocation;
		form_border_style = FormBorderStyle.Sizable;
		window_state = FormWindowState.Normal;
		key_preview = false;
		opacity = 1.0;
		menu = null;
		icon = default_icon;
		minimum_size = Size.Empty;
		maximum_size = Size.Empty;
		clientsize_set = Size.Empty;
		control_box = true;
		minimize_box = true;
		maximize_box = true;
		help_button = false;
		show_in_taskbar = true;
		is_visible = false;
		is_toplevel = true;
		size_grip_style = SizeGripStyle.Auto;
		maximized_bounds = Rectangle.Empty;
		default_maximized_bounds = Rectangle.Empty;
		owned_forms = new ControlCollection(this);
		transparency_key = Color.Empty;
		CreateDockPadding();
		InternalClientSize = new Size(Width - SystemInformation.FrameBorderSize.Width * 2, Height - SystemInformation.FrameBorderSize.Height * 2 - SystemInformation.CaptionHeight);
		restore_bounds = Bounds;
	}

	internal bool ShouldSerializeAutoScroll()
	{
		return AutoScroll;
	}

	internal bool ShouldSerializeAutoSize()
	{
		return AutoSize;
	}

	internal bool ShouldSerializeIcon()
	{
		return Icon != default_icon;
	}

	internal bool ShouldSerializeTransparencyKey()
	{
		return TransparencyKey != Color.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("This method has been deprecated.  Use AutoScaleDimensions instead")]
	public static SizeF GetAutoScaleSize(Font font)
	{
		return XplatUI.GetAutoScaleSize(font);
	}

	public void Activate()
	{
		if (IsHandleCreated)
		{
			if (IsMdiChild)
			{
				MdiParent.ActivateMdiChild(this);
			}
			else if (IsMdiContainer)
			{
				mdi_container.SendFocusToActiveChild();
			}
			else
			{
				XplatUI.Activate(window.Handle);
			}
		}
	}

	public void AddOwnedForm(Form ownedForm)
	{
		if (!owned_forms.Contains(ownedForm))
		{
			owned_forms.Add(ownedForm);
		}
		ownedForm.Owner = this;
	}

	public void Close()
	{
		if (IsDisposed)
		{
			return;
		}
		if (!IsHandleCreated)
		{
			Dispose();
			return;
		}
		if (Menu != null)
		{
			XplatUI.SetMenu(window.Handle, null);
		}
		XplatUI.SendMessage(Handle, Msg.WM_CLOSE, IntPtr.Zero, IntPtr.Zero);
		closed = true;
	}

	public void LayoutMdi(MdiLayout value)
	{
		if (mdi_container != null)
		{
			mdi_container.LayoutMdi(value);
		}
	}

	public void RemoveOwnedForm(Form ownedForm)
	{
		owned_forms.Remove(ownedForm);
	}

	public void SetDesktopBounds(int x, int y, int width, int height)
	{
		DesktopBounds = new Rectangle(x, y, width, height);
	}

	public void SetDesktopLocation(int x, int y)
	{
		DesktopLocation = new Point(x, y);
	}

	public void Show(IWin32Window owner)
	{
		if (owner == null)
		{
			Owner = null;
		}
		else
		{
			Owner = Control.FromHandle(owner.Handle).TopLevelControl as Form;
		}
		if (owner == this)
		{
			throw new InvalidOperationException("The 'owner' cannot be the form being shown.");
		}
		if (TopLevelControl != this)
		{
			throw new InvalidOperationException("Forms that are not top level forms cannot be displayed as a modal dialog. Remove the form from any parent form before calling Show.");
		}
		Show();
	}

	public DialogResult ShowDialog()
	{
		return ShowDialog(null);
	}

	public DialogResult ShowDialog(IWin32Window owner)
	{
		IWin32Window win32Window = owner;
		Form form = null;
		if (owner == null && Application.MWFThread.Current.Context != null)
		{
			IntPtr active = XplatUI.GetActive();
			if (active != IntPtr.Zero)
			{
				owner = Control.FromHandle(active) as Form;
			}
		}
		if (owner != null)
		{
			Control control = Control.FromHandle(owner.Handle);
			if (control != null)
			{
				form = control.TopLevelControl as Form;
			}
		}
		if (form == this)
		{
			if (win32Window != null)
			{
				throw new ArgumentException("Forms cannot own themselves or their owners.", "owner");
			}
			owner = null;
			form = null;
		}
		if (is_modal)
		{
			throw new InvalidOperationException("The form is already displayed as a modal dialog.");
		}
		if (Visible)
		{
			throw new InvalidOperationException("Forms that are already  visible cannot be displayed as a modal dialog. Set the form's visible property to false before calling ShowDialog.");
		}
		if (!Enabled)
		{
			throw new InvalidOperationException("Forms that are not enabled cannot be displayed as a modal dialog. Set the form's enabled property to true before calling ShowDialog.");
		}
		if (TopLevelControl != this)
		{
			throw new InvalidOperationException("Forms that are not top level forms cannot be displayed as a modal dialog. Remove the form from any parent form before calling ShowDialog.");
		}
		if (form != null)
		{
			this.owner = form;
		}
		if (this.owner != null && this.owner.TopMost)
		{
			TopMost = true;
		}
		XplatUI.GrabInfo(out var handle, out var _, out var _);
		if (handle != IntPtr.Zero)
		{
			XplatUI.UngrabWindow(handle);
		}
		List<Form> list = new List<Form>();
		foreach (Form openForm in Application.OpenForms)
		{
			if (openForm.Enabled)
			{
				list.Add(openForm);
			}
		}
		foreach (Form item in list)
		{
			disabled_by_showdialog.Add(item);
			item.Enabled = false;
		}
		modal_dialogs.Add(this);
		Application.RunLoop(Modal: true, new ApplicationContext(this));
		if (this.owner != null)
		{
			XplatUI.Activate(this.owner.window.Handle);
		}
		if (IsHandleCreated)
		{
			DestroyHandle();
		}
		if (DialogResult == DialogResult.None)
		{
			DialogResult = DialogResult.Cancel;
		}
		return DialogResult;
	}

	public override string ToString()
	{
		return GetType().FullName + ", Text: " + Text;
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	public override bool ValidateChildren()
	{
		return base.ValidateChildren();
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	public override bool ValidateChildren(ValidationConstraints validationConstraints)
	{
		return base.ValidateChildren(validationConstraints);
	}

	protected void ActivateMdiChild(Form form)
	{
		if (IsMdiContainer)
		{
			mdi_container.ActivateChild(form);
			OnMdiChildActivate(EventArgs.Empty);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void AdjustFormScrollbars(bool displayScrollbars)
	{
		base.AdjustFormScrollbars(displayScrollbars);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("This method has been deprecated")]
	protected void ApplyAutoScaling()
	{
		SizeF autoScaleSize = GetAutoScaleSize(Font);
		Size size = new Size((int)Math.Round(autoScaleSize.Width), (int)Math.Round(autoScaleSize.Height));
		if (!(size == autoscale_base_size) && !(Environment.GetEnvironmentVariable("MONO_MWF_SCALING") == "disable"))
		{
			float dx = ((size.Width == AutoScaleBaseSize.Width) ? 1f : ((float)size.Width / (float)AutoScaleBaseSize.Width + 0.08f));
			float dy = ((size.Height == AutoScaleBaseSize.Height) ? 1f : ((float)size.Height / (float)AutoScaleBaseSize.Height + 0.08f));
			Scale(dx, dy);
			AutoScaleBaseSize = size;
		}
	}

	protected void CenterToParent()
	{
		if (TopLevel && !IsHandleCreated)
		{
			CreateHandle();
		}
		int num = ((Width <= 0) ? DefaultSize.Width : Width);
		int num2 = ((Height <= 0) ? DefaultSize.Height : Height);
		Control control = null;
		if (Parent != null)
		{
			control = Parent;
		}
		else if (owner != null)
		{
			control = owner;
		}
		if (owner != null)
		{
			Location = new Point(control.Left + control.Width / 2 - num / 2, control.Top + control.Height / 2 - num2 / 2);
		}
	}

	protected void CenterToScreen()
	{
		if (TopLevel && !IsHandleCreated)
		{
			CreateHandle();
		}
		int num = ((Width <= 0) ? DefaultSize.Width : Width);
		int num2 = ((Height <= 0) ? DefaultSize.Height : Height);
		Rectangle rectangle = ((Owner != null) ? Screen.FromControl(Owner).WorkingArea : Screen.FromPoint(Control.MousePosition).WorkingArea);
		Location = new Point(rectangle.Left + rectangle.Width / 2 - num / 2, rectangle.Top + rectangle.Height / 2 - num2 / 2);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override Control.ControlCollection CreateControlsInstance()
	{
		return base.CreateControlsInstance();
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void CreateHandle()
	{
		base.CreateHandle();
		if (!IsHandleCreated)
		{
			return;
		}
		UpdateBounds();
		if ((XplatUI.SupportsTransparency() & TransparencySupport.Set) != 0 && allow_transparency)
		{
			XplatUI.SetWindowTransparency(Handle, opacity, TransparencyKey);
		}
		XplatUI.SetWindowMinMax(window.Handle, maximized_bounds, minimum_size, maximum_size);
		if (show_icon && FormBorderStyle != FormBorderStyle.FixedDialog && icon != null)
		{
			XplatUI.SetIcon(window.Handle, icon);
		}
		if (owner != null && owner.IsHandleCreated)
		{
			XplatUI.SetOwner(window.Handle, owner.window.Handle);
		}
		if (topmost)
		{
			XplatUI.SetTopmost(window.Handle, topmost);
		}
		for (int i = 0; i < owned_forms.Count; i++)
		{
			if (owned_forms[i].IsHandleCreated)
			{
				XplatUI.SetOwner(owned_forms[i].window.Handle, window.Handle);
			}
		}
		if (window_manager == null)
		{
			return;
		}
		if (IsMdiChild && VisibleInternal)
		{
			if (MdiParent != null)
			{
				Form[] mdiChildren = MdiParent.MdiChildren;
				foreach (Form form in mdiChildren)
				{
					if (form.window_manager is MdiWindowManager mdiWindowManager && form != this)
					{
						mdiWindowManager.RaiseDeactivate();
					}
				}
			}
			MdiWindowManager mdiWindowManager2 = window_manager as MdiWindowManager;
			mdiWindowManager2.RaiseActivated();
			if (MdiParent != null)
			{
				Form[] mdiChildren = MdiParent.MdiChildren;
				foreach (Form form2 in mdiChildren)
				{
					if (form2 != this && form2.IsHandleCreated)
					{
						XplatUI.InvalidateNC(form2.Handle);
					}
				}
			}
		}
		if (window_state != FormWindowState.Normal)
		{
			window_manager.SetWindowState((FormWindowState)int.MaxValue, window_state);
		}
		XplatUI.RequestNCRecalc(window.Handle);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void DefWndProc(ref Message m)
	{
		base.DefWndProc(ref m);
	}

	protected override void Dispose(bool disposing)
	{
		if (owned_forms != null)
		{
			for (int i = 0; i < owned_forms.Count; i++)
			{
				((Form)owned_forms[i]).Owner = null;
			}
			owned_forms.Clear();
		}
		Owner = null;
		base.Dispose(disposing);
		Application.RemoveForm(this);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnActivated(EventArgs e)
	{
		((EventHandler)Events[ActivatedEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnClosed(EventArgs e)
	{
		((EventHandler)Events[ClosedEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnClosing(CancelEventArgs e)
	{
		((CancelEventHandler)Events[ClosingEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnCreateControl()
	{
		base.OnCreateControl();
		if (menu != null)
		{
			XplatUI.SetMenu(window.Handle, menu);
		}
		OnLoadInternal(EventArgs.Empty);
		OnLocationChanged(EventArgs.Empty);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnDeactivate(EventArgs e)
	{
		((EventHandler)Events[DeactivateEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		if (!autoscale_base_size_set)
		{
			SizeF autoScaleSize = GetAutoScaleSize(Font);
			autoscale_base_size = new Size((int)Math.Round(autoScaleSize.Width), (int)Math.Round(autoScaleSize.Height));
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnHandleCreated(EventArgs e)
	{
		XplatUI.SetBorderStyle(window.Handle, form_border_style);
		base.OnHandleCreated(e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnHandleDestroyed(EventArgs e)
	{
		Application.RemoveForm(this);
		base.OnHandleDestroyed(e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnInputLanguageChanged(InputLanguageChangedEventArgs e)
	{
		((InputLanguageChangedEventHandler)Events[InputLanguageChangedEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnInputLanguageChanging(InputLanguageChangingEventArgs e)
	{
		((InputLanguageChangingEventHandler)Events[InputLanguageChangingEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnLoad(EventArgs e)
	{
		Application.AddForm(this);
		((EventHandler)Events[LoadEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnMaximizedBoundsChanged(EventArgs e)
	{
		((EventHandler)Events[MaximizedBoundsChangedEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnMaximumSizeChanged(EventArgs e)
	{
		((EventHandler)Events[MaximumSizeChangedEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnMdiChildActivate(EventArgs e)
	{
		((EventHandler)Events[MdiChildActivateEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal virtual void OnMenuComplete(EventArgs e)
	{
		((EventHandler)Events[MenuCompleteEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnMenuStart(EventArgs e)
	{
		((EventHandler)Events[MenuStartEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnMinimumSizeChanged(EventArgs e)
	{
		((EventHandler)Events[MinimumSizeChangedEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (size_grip != null)
		{
			size_grip.HandlePaint(this, e);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnResize(EventArgs e)
	{
		base.OnResize(e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnStyleChanged(EventArgs e)
	{
		base.OnStyleChanged(e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		if (mdi_container != null)
		{
			mdi_container.SetParentText(text_changed: true);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (Visible && window_manager != null)
		{
			if (WindowState == FormWindowState.Normal)
			{
				window_manager.SetWindowState(WindowState, WindowState);
			}
			else
			{
				window_manager.SetWindowState((FormWindowState)(-1), WindowState);
			}
		}
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if (base.ProcessCmdKey(ref msg, keyData))
		{
			return true;
		}
		if ((keyData & Keys.Alt) != 0)
		{
			Control topLevelControl = TopLevelControl;
			if (topLevelControl != null)
			{
				IntPtr wParam = Control.MakeParam(2, 2);
				XplatUI.SendMessage(topLevelControl.Handle, Msg.WM_CHANGEUISTATE, wParam, IntPtr.Zero);
			}
		}
		if (ActiveMenu != null && ActiveMenu.ProcessCmdKey(ref msg, keyData))
		{
			return true;
		}
		if (ActiveTracker != null && ActiveTracker.TopMenu is ContextMenu)
		{
			ContextMenu contextMenu = ActiveTracker.TopMenu as ContextMenu;
			if (contextMenu.SourceControl != this && contextMenu.ProcessCmdKey(ref msg, keyData))
			{
				return true;
			}
		}
		if (IsMdiChild)
		{
			switch (keyData)
			{
			case Keys.F4 | Keys.Control:
			case Keys.F4 | Keys.Shift | Keys.Control:
				Close();
				return true;
			case Keys.Tab | Keys.Control:
			case Keys.F6 | Keys.Control:
				MdiParent.MdiContainer.ActivateNextChild();
				return true;
			case Keys.Tab | Keys.Shift | Keys.Control:
			case Keys.F6 | Keys.Shift | Keys.Control:
				MdiParent.MdiContainer.ActivatePreviousChild();
				return true;
			case Keys.Subtract | Keys.Alt:
			case Keys.OemMinus | Keys.Alt:
				(WindowManager as MdiWindowManager).ShowPopup(Point.Empty);
				return true;
			}
		}
		return false;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override bool ProcessDialogChar(char charCode)
	{
		return base.ProcessDialogChar(charCode);
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		if ((keyData & Keys.Modifiers) == 0)
		{
			switch (keyData)
			{
			case Keys.Return:
			{
				Control control = Control.FromHandle(XplatUI.GetFocus());
				if (control is Button && control.FindForm() == this)
				{
					((Button)control).PerformClick();
					return true;
				}
				if (accept_button != null)
				{
					ActiveControl = accept_button as Control;
					if (ActiveControl == accept_button)
					{
						accept_button.PerformClick();
					}
					return true;
				}
				break;
			}
			case Keys.Escape:
				if (cancel_button != null)
				{
					cancel_button.PerformClick();
					return true;
				}
				break;
			}
		}
		return base.ProcessDialogKey(keyData);
	}

	protected override bool ProcessKeyPreview(ref Message m)
	{
		if (key_preview && ProcessKeyEventArgs(ref m))
		{
			return true;
		}
		return base.ProcessKeyPreview(ref m);
	}

	protected override bool ProcessTabKey(bool forward)
	{
		bool flag = !show_focus_cues;
		show_focus_cues = true;
		bool result = SelectNextControl(ActiveControl, forward, tabStopOnly: true, nested: true, wrap: true);
		if (flag && ActiveControl != null)
		{
			ActiveControl.Invalidate();
		}
		return result;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected override void ScaleCore(float x, float y)
	{
		base.ScaleCore(x, y);
	}

	protected override void Select(bool directed, bool forward)
	{
		if (!IsHandleCreated && !IsHandleCreated)
		{
			CreateHandle();
		}
		if (directed)
		{
			SelectNextControl(null, forward, tabStopOnly: true, nested: true, wrap: true);
		}
		Form parentForm = ParentForm;
		if (parentForm != null)
		{
			parentForm.ActiveControl = this;
		}
		Activate();
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		Size size = ((WindowState == FormWindowState.Minimized) ? SystemInformation.MinimizedWindowSize : (FormBorderStyle switch
		{
			FormBorderStyle.None => XplatUI.MinimumNoBorderWindowSize, 
			FormBorderStyle.FixedToolWindow => XplatUI.MinimumFixedToolWindowSize, 
			FormBorderStyle.SizableToolWindow => XplatUI.MinimumSizeableToolWindowSize, 
			_ => SystemInformation.MinimumWindowSize, 
		}));
		if ((specified & BoundsSpecified.Width) == BoundsSpecified.Width)
		{
			width = Math.Max(width, size.Width);
		}
		if ((specified & BoundsSpecified.Height) == BoundsSpecified.Height)
		{
			height = Math.Max(height, size.Height);
		}
		base.SetBoundsCore(x, y, width, height, specified);
		int x2 = (((specified & BoundsSpecified.X) == BoundsSpecified.X) ? x : restore_bounds.X);
		int y2 = (((specified & BoundsSpecified.Y) == BoundsSpecified.Y) ? y : restore_bounds.Y);
		int width2 = (((specified & BoundsSpecified.Width) == BoundsSpecified.Width) ? width : restore_bounds.Width);
		int height2 = (((specified & BoundsSpecified.Height) == BoundsSpecified.Height) ? height : restore_bounds.Height);
		restore_bounds = new Rectangle(x2, y2, width2, height2);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void SetClientSizeCore(int x, int y)
	{
		if (minimum_size.Width != 0 && x < minimum_size.Width)
		{
			x = minimum_size.Width;
		}
		else if (maximum_size.Width != 0 && x > maximum_size.Width)
		{
			x = maximum_size.Width;
		}
		if (minimum_size.Height != 0 && y < minimum_size.Height)
		{
			y = minimum_size.Height;
		}
		else if (maximum_size.Height != 0 && y > maximum_size.Height)
		{
			y = maximum_size.Height;
		}
		Rectangle ClientRect = new Rectangle(0, 0, x, y);
		CreateParams createParams = CreateParams;
		clientsize_set = new Size(x, y);
		if (XplatUI.CalculateWindowRect(ref ClientRect, createParams, createParams.menu, out var WindowRect))
		{
			SetBounds(bounds.X, bounds.Y, WindowRect.Width, WindowRect.Height, BoundsSpecified.Size);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void SetVisibleCore(bool value)
	{
		if (value)
		{
			close_raised = false;
		}
		if (IsMdiChild && !MdiParent.Visible)
		{
			if (value != Visible)
			{
				((MdiWindowManager)window_manager).IsVisiblePending = value;
				OnVisibleChanged(EventArgs.Empty);
				return;
			}
		}
		else
		{
			is_changing_visible_state++;
			has_been_visible = value || has_been_visible;
			base.SetVisibleCore(value);
			if (value)
			{
				Application.AddForm(this);
			}
			if (value && WindowState != FormWindowState.Normal)
			{
				XplatUI.SendMessage(Handle, Msg.WM_SHOWWINDOW, (IntPtr)1, IntPtr.Zero);
			}
			is_changing_visible_state--;
		}
		if (value && IsMdiContainer)
		{
			Form[] mdiChildren = MdiChildren;
			foreach (Form form in mdiChildren)
			{
				MdiWindowManager mdiWindowManager = (MdiWindowManager)form.window_manager;
				if (!form.IsHandleCreated && mdiWindowManager.IsVisiblePending)
				{
					mdiWindowManager.IsVisiblePending = false;
					form.Visible = true;
				}
			}
		}
		if (value && IsMdiChild)
		{
			PerformLayout();
			ThemeEngine.Current.ManagedWindowSetButtonLocations(window_manager);
		}
		if (value && !shown_raised)
		{
			OnShown(EventArgs.Empty);
			shown_raised = true;
		}
		if (value && !IsMdiChild)
		{
			if (ActiveControl == null)
			{
				SelectNextControl(null, forward: true, tabStopOnly: true, nested: true, wrap: false);
			}
			if (ActiveControl != null)
			{
				SendControlFocus(ActiveControl);
			}
			else
			{
				Focus();
			}
		}
	}

	protected override void UpdateDefaultButton()
	{
		base.UpdateDefaultButton();
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void WndProc(ref Message m)
	{
		if (window_manager == null || !window_manager.WndProc(ref m))
		{
			switch ((Msg)m.Msg)
			{
			case Msg.WM_DESTROY:
				WmDestroy(ref m);
				break;
			case Msg.WM_CLOSE:
				WmClose(ref m);
				break;
			case Msg.WM_WINDOWPOSCHANGED:
				WmWindowPosChanged(ref m);
				break;
			case Msg.WM_SYSCOMMAND:
				WmSysCommand(ref m);
				break;
			case Msg.WM_ACTIVATE:
				WmActivate(ref m);
				break;
			case Msg.WM_KILLFOCUS:
				WmKillFocus(ref m);
				break;
			case Msg.WM_SETFOCUS:
				WmSetFocus(ref m);
				break;
			case Msg.WM_NCHITTEST:
				WmNcHitTest(ref m);
				break;
			case Msg.WM_NCLBUTTONDOWN:
				WmNcLButtonDown(ref m);
				break;
			case Msg.WM_NCLBUTTONUP:
				WmNcLButtonUp(ref m);
				break;
			case Msg.WM_NCMOUSELEAVE:
				WmNcMouseLeave(ref m);
				break;
			case Msg.WM_NCMOUSEMOVE:
				WmNcMouseMove(ref m);
				break;
			case Msg.WM_NCPAINT:
				WmNcPaint(ref m);
				break;
			case Msg.WM_NCCALCSIZE:
				WmNcCalcSize(ref m);
				break;
			case Msg.WM_GETMINMAXINFO:
				WmGetMinMaxInfo(ref m);
				break;
			case Msg.WM_ENTERSIZEMOVE:
				OnResizeBegin(EventArgs.Empty);
				break;
			case Msg.WM_EXITSIZEMOVE:
				OnResizeEnd(EventArgs.Empty);
				break;
			default:
				base.WndProc(ref m);
				break;
			}
		}
	}

	private void WmDestroy(ref Message m)
	{
		if (!RecreatingHandle)
		{
			closing = true;
		}
		base.WndProc(ref m);
	}

	internal bool RaiseCloseEvents(bool last_check, bool cancel)
	{
		if (last_check && Visible)
		{
			Hide();
		}
		if (close_raised || (last_check && closed))
		{
			return false;
		}
		close_raised = true;
		bool flag = FireClosingEvents(CloseReason.UserClosing, cancel);
		if (!flag)
		{
			if (!last_check || DialogResult != DialogResult.None)
			{
				if (mdi_container != null)
				{
					Form[] mdiChildren = mdi_container.MdiChildren;
					for (int i = 0; i < mdiChildren.Length; i++)
					{
						mdiChildren[i].FireClosedEvents(CloseReason.UserClosing);
					}
				}
				FireClosedEvents(CloseReason.UserClosing);
			}
			closing = true;
			shown_raised = false;
		}
		else
		{
			DialogResult = DialogResult.None;
			closing = false;
			close_raised = false;
		}
		return flag;
	}

	private void WmClose(ref Message m)
	{
		if (!Enabled)
		{
			return;
		}
		Form activeForm = ActiveForm;
		if (activeForm != null && activeForm != this && activeForm.Modal)
		{
			Control control = this;
			while (control != null && control.Parent != activeForm)
			{
				control = control.Parent;
			}
			if (control == null || control.Parent != activeForm)
			{
				return;
			}
		}
		bool flag = false;
		if (mdi_container != null)
		{
			Form[] mdiChildren = mdi_container.MdiChildren;
			for (int i = 0; i < mdiChildren.Length; i++)
			{
				flag = mdiChildren[i].FireClosingEvents(CloseReason.MdiFormClosing, flag);
			}
		}
		bool flag2 = false;
		if (!suppress_closing_events)
		{
			flag2 = !ValidateChildren();
		}
		if (suppress_closing_events || !RaiseCloseEvents(last_check: false, flag2 | flag))
		{
			if (is_modal)
			{
				Hide();
			}
			else
			{
				Dispose();
				if (activeForm != null && activeForm != this)
				{
					activeForm.SelectActiveControl();
				}
			}
			mdi_parent = null;
		}
		else
		{
			if (is_modal)
			{
				DialogResult = DialogResult.None;
			}
			closing = false;
		}
	}

	private void WmWindowPosChanged(ref Message m)
	{
		if (window_state != FormWindowState.Minimized && WindowState != FormWindowState.Minimized)
		{
			base.WndProc(ref m);
		}
		else if (!is_minimizing)
		{
			is_minimizing = true;
			OnSizeChanged(EventArgs.Empty);
			is_minimizing = false;
		}
		if (WindowState == FormWindowState.Normal)
		{
			restore_bounds = Bounds;
		}
	}

	private void WmSysCommand(ref Message m)
	{
		if (XplatUI.IsEnabled(Handle))
		{
			ToolStripManager.FireAppClicked();
		}
		base.WndProc(ref m);
	}

	private void WmActivate(ref Message m)
	{
		if (!Enabled && modal_dialogs.Count > 0)
		{
			(modal_dialogs[modal_dialogs.Count - 1] as Form).Activate();
		}
		else if (m.WParam != (IntPtr)0)
		{
			if (is_loaded)
			{
				SelectActiveControl();
				if (ActiveControl != null && !ActiveControl.Focused)
				{
					SendControlFocus(ActiveControl);
				}
			}
			IsActive = true;
		}
		else
		{
			if (XplatUI.IsEnabled(Handle) && XplatUI.GetParent(m.LParam) != Handle)
			{
				ToolStripManager.FireAppFocusChanged(this);
			}
			IsActive = false;
		}
	}

	private void WmKillFocus(ref Message m)
	{
		base.WndProc(ref m);
	}

	private void WmSetFocus(ref Message m)
	{
		if (ActiveControl != null && ActiveControl != this)
		{
			ActiveControl.Focus();
		}
		else if (IsMdiContainer)
		{
			mdi_container.SendFocusToActiveChild();
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	private void WmNcHitTest(ref Message m)
	{
		if (XplatUI.IsEnabled(Handle) && ActiveMenu != null)
		{
			int x = Control.LowOrder(m.LParam.ToInt32());
			int y = Control.HighOrder(m.LParam.ToInt32());
			XplatUI.ScreenToMenu(ActiveMenu.Wnd.window.Handle, ref x, ref y);
			if (x > 0 && y > 0 && x < ActiveMenu.Rect.Width && y < ActiveMenu.Rect.Height)
			{
				m.Result = new IntPtr(5);
				return;
			}
		}
		base.WndProc(ref m);
	}

	private void WmNcLButtonDown(ref Message m)
	{
		if (XplatUI.IsEnabled(Handle) && ActiveMenu != null)
		{
			ActiveMenu.OnMouseDown(this, new MouseEventArgs(Control.FromParamToMouseButtons(m.WParam.ToInt32()), mouse_clicks, Control.MousePosition.X, Control.MousePosition.Y, 0));
		}
		if (ActiveMaximizedMdiChild == null || ActiveMenu == null || !ActiveMaximizedMdiChild.HandleMenuMouseDown(ActiveMenu, Control.LowOrder(m.LParam.ToInt32()), Control.HighOrder(m.LParam.ToInt32())))
		{
			base.WndProc(ref m);
		}
	}

	private void WmNcLButtonUp(ref Message m)
	{
		if (ActiveMaximizedMdiChild != null && ActiveMenu != null)
		{
			ActiveMaximizedMdiChild.HandleMenuMouseUp(ActiveMenu, Control.LowOrder(m.LParam.ToInt32()), Control.HighOrder(m.LParam.ToInt32()));
		}
		base.WndProc(ref m);
	}

	private void WmNcMouseLeave(ref Message m)
	{
		if (ActiveMaximizedMdiChild != null && ActiveMenu != null)
		{
			ActiveMaximizedMdiChild.HandleMenuMouseLeave(ActiveMenu, Control.LowOrder(m.LParam.ToInt32()), Control.HighOrder(m.LParam.ToInt32()));
		}
		base.WndProc(ref m);
	}

	private void WmNcMouseMove(ref Message m)
	{
		if (XplatUI.IsEnabled(Handle) && ActiveMenu != null)
		{
			ActiveMenu.OnMouseMove(this, new MouseEventArgs(Control.FromParamToMouseButtons(m.WParam.ToInt32()), mouse_clicks, Control.LowOrder(m.LParam.ToInt32()), Control.HighOrder(m.LParam.ToInt32()), 0));
		}
		if (ActiveMaximizedMdiChild != null && ActiveMenu != null)
		{
			XplatUI.RequestAdditionalWM_NCMessages(Handle, hover: false, leave: true);
			ActiveMaximizedMdiChild.HandleMenuMouseMove(ActiveMenu, Control.LowOrder(m.LParam.ToInt32()), Control.HighOrder(m.LParam.ToInt32()));
		}
		base.WndProc(ref m);
	}

	private void WmNcPaint(ref Message m)
	{
		if (ActiveMenu != null)
		{
			PaintEventArgs e = XplatUI.PaintEventStart(ref m, Handle, client: false);
			Point menuOrigin = XplatUI.GetMenuOrigin(window.Handle);
			Rectangle a = new Rectangle(menuOrigin.X, menuOrigin.Y, ClientSize.Width, 0);
			a = Rectangle.Union(a, e.ClipRectangle);
			e.SetClip(a);
			e.Graphics.SetClip(a);
			ActiveMenu.Draw(e, new Rectangle(menuOrigin.X, menuOrigin.Y, ClientSize.Width, 0));
			if (ActiveMaximizedMdiChild != null)
			{
				ActiveMaximizedMdiChild.DrawMaximizedButtons(ActiveMenu, e);
			}
			XplatUI.PaintEventEnd(ref m, Handle, client: false);
		}
		base.WndProc(ref m);
	}

	private void WmNcCalcSize(ref Message m)
	{
		if (ActiveMenu != null && m.WParam == (IntPtr)1)
		{
			XplatUIWin32.NCCALCSIZE_PARAMS structure = (XplatUIWin32.NCCALCSIZE_PARAMS)Marshal.PtrToStructure(m.LParam, typeof(XplatUIWin32.NCCALCSIZE_PARAMS));
			structure.rgrc1.top += ThemeEngine.Current.CalcMenuBarSize(DeviceContext, ActiveMenu, ClientSize.Width);
			Marshal.StructureToPtr(structure, m.LParam, fDeleteOld: true);
		}
		DefWndProc(ref m);
	}

	private void WmGetMinMaxInfo(ref Message m)
	{
		if (m.LParam != IntPtr.Zero)
		{
			MINMAXINFO structure = (MINMAXINFO)Marshal.PtrToStructure(m.LParam, typeof(MINMAXINFO));
			default_maximized_bounds = new Rectangle(structure.ptMaxPosition.x, structure.ptMaxPosition.y, structure.ptMaxSize.x, structure.ptMaxSize.y);
			if (maximized_bounds != Rectangle.Empty)
			{
				structure.ptMaxPosition.x = maximized_bounds.Left;
				structure.ptMaxPosition.y = maximized_bounds.Top;
				structure.ptMaxSize.x = maximized_bounds.Width;
				structure.ptMaxSize.y = maximized_bounds.Height;
			}
			if (minimum_size != Size.Empty)
			{
				structure.ptMinTrackSize.x = minimum_size.Width;
				structure.ptMinTrackSize.y = minimum_size.Height;
			}
			if (maximum_size != Size.Empty)
			{
				structure.ptMaxTrackSize.x = maximum_size.Width;
				structure.ptMaxTrackSize.y = maximum_size.Height;
			}
			Marshal.StructureToPtr(structure, m.LParam, fDeleteOld: false);
		}
	}

	internal void ActivateFocusCues()
	{
		bool flag = !show_focus_cues;
		show_focus_cues = true;
		if (flag)
		{
			ActiveControl.Invalidate();
		}
	}

	internal override void FireEnter()
	{
	}

	internal override void FireLeave()
	{
	}

	internal void RemoveWindowManager()
	{
		window_manager = null;
	}

	internal override void CheckAcceptButton()
	{
		if (accept_button == null)
		{
			return;
		}
		Button button = accept_button as Button;
		if (ActiveControl != button && button != null)
		{
			if (ActiveControl is Button)
			{
				button.paint_as_acceptbutton = false;
			}
			else
			{
				button.paint_as_acceptbutton = true;
			}
			button.Invalidate();
		}
	}

	private void OnLoadInternal(EventArgs e)
	{
		if (AutoScale)
		{
			ApplyAutoScaling();
			AutoScale = false;
		}
		if (!IsDisposed)
		{
			OnSizeInitializedOrChanged();
			try
			{
				OnLoad(e);
			}
			catch (Exception t)
			{
				Application.OnThreadException(t);
			}
			if (!IsDisposed)
			{
				is_visible = true;
			}
		}
		if (!IsMdiChild && !IsDisposed)
		{
			switch (StartPosition)
			{
			case FormStartPosition.CenterScreen:
				CenterToScreen();
				break;
			case FormStartPosition.CenterParent:
				CenterToParent();
				break;
			case FormStartPosition.Manual:
				Left = CreateParams.X;
				Top = CreateParams.Y;
				break;
			}
		}
		is_loaded = true;
	}

	protected override void OnBackgroundImageChanged(EventArgs e)
	{
		base.OnBackgroundImageChanged(e);
	}

	protected override void OnBackgroundImageLayoutChanged(EventArgs e)
	{
		base.OnBackgroundImageLayoutChanged(e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnEnabledChanged(EventArgs e)
	{
		base.OnEnabledChanged(e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnEnter(EventArgs e)
	{
		base.OnEnter(e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnFormClosed(FormClosedEventArgs e)
	{
		Application.RemoveForm(this);
		((FormClosedEventHandler)Events[FormClosedEvent])?.Invoke(this, e);
		foreach (Form item in disabled_by_showdialog)
		{
			item.Enabled = true;
		}
		disabled_by_showdialog.Clear();
		if (modal_dialogs.Contains(this))
		{
			modal_dialogs.Remove(this);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnFormClosing(FormClosingEventArgs e)
	{
		((FormClosingEventHandler)Events[FormClosingEvent])?.Invoke(this, e);
	}

	[MonoTODO("Will never be called")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnHelpButtonClicked(CancelEventArgs e)
	{
		((CancelEventHandler)Events[HelpButtonClickedEvent])?.Invoke(this, e);
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		base.OnLayout(levent);
		if (AutoSize)
		{
			Size preferredSizeCore = GetPreferredSizeCore(Size.Empty);
			if (AutoSizeMode == AutoSizeMode.GrowOnly)
			{
				preferredSizeCore.Width = Math.Max(preferredSizeCore.Width, Width);
				preferredSizeCore.Height = Math.Max(preferredSizeCore.Height, Height);
			}
			if (!(preferredSizeCore == Size))
			{
				SetBoundsInternal(bounds.X, bounds.Y, preferredSizeCore.Width, preferredSizeCore.Height, BoundsSpecified.None);
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnResizeBegin(EventArgs e)
	{
		((EventHandler)Events[ResizeBeginEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnResizeEnd(EventArgs e)
	{
		((EventHandler)Events[ResizeEndEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnRightToLeftLayoutChanged(EventArgs e)
	{
		((EventHandler)Events[RightToLeftLayoutChangedEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void OnShown(EventArgs e)
	{
		((EventHandler)Events[ShownEvent])?.Invoke(this, e);
	}

	internal void OnUIAMenuChanged(EventArgs e)
	{
		((EventHandler)Events[UIAMenuChangedEvent])?.Invoke(this, e);
	}

	internal void OnUIATopMostChanged()
	{
		((EventHandler)Events[UIATopMostChangedEvent])?.Invoke(this, EventArgs.Empty);
	}

	internal void OnUIAWindowStateChanged()
	{
		((EventHandler)Events[UIAWindowStateChangedEvent])?.Invoke(this, EventArgs.Empty);
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	protected virtual void OnDpiChanged(DpiChangedEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[Browsable(true)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual bool OnGetDpiScaledSize(int deviceDpiOld, int deviceDpiNew, ref Size desiredSize)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
