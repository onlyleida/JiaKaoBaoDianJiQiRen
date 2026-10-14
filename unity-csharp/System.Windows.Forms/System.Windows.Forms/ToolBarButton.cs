using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;

namespace System.Windows.Forms;

[DesignTimeVisible(false)]
[ToolboxItem(false)]
[Designer("System.Windows.Forms.Design.ToolBarButtonDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultProperty("Text")]
public class ToolBarButton : Component
{
	private bool enabled = true;

	private int image_index = -1;

	private ContextMenu menu;

	private ToolBar parent;

	private bool partial_push;

	private bool pushed;

	private ToolBarButtonStyle style = ToolBarButtonStyle.PushButton;

	private object tag;

	private string text = "";

	private string tooltip = "";

	private bool visible = true;

	private string image_key = string.Empty;

	private string name;

	private bool uiaHasFocus;

	private static object UIAGotFocusEvent = new object();

	private static object UIALostFocusEvent = new object();

	private static object UIATextChangedEvent = new object();

	private static object UIAEnabledChangedEvent = new object();

	private static object UIADropDownMenuChangedEvent = new object();

	private static object UIAStyleChangedEvent = new object();

	internal Image Image
	{
		get
		{
			if (Parent == null || Parent.ImageList == null)
			{
				return null;
			}
			ImageList imageList = Parent.ImageList;
			if (ImageIndex > -1 && ImageIndex < imageList.Images.Count)
			{
				return imageList.Images[ImageIndex];
			}
			if (!string.IsNullOrEmpty(image_key))
			{
				return imageList.Images[image_key];
			}
			return null;
		}
	}

	[DefaultValue(null)]
	[TypeConverter(typeof(ReferenceConverter))]
	public Menu DropDownMenu
	{
		get
		{
			return menu;
		}
		set
		{
			if (value is ContextMenu)
			{
				menu = (ContextMenu)value;
				OnUIADropDownMenuChanged(EventArgs.Empty);
				return;
			}
			throw new ArgumentException("DropDownMenu must be of type ContextMenu.");
		}
	}

	[DefaultValue(true)]
	[Localizable(true)]
	public bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			if (value != enabled)
			{
				enabled = value;
				Invalidate();
				OnUIAEnabledChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(-1)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[TypeConverter(typeof(ImageIndexConverter))]
	[Localizable(true)]
	[Editor("System.Windows.Forms.Design.ImageIndexEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public int ImageIndex
	{
		get
		{
			return image_index;
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentException("ImageIndex value must be above or equal to -1.");
			}
			if (value != image_index)
			{
				bool num = Parent != null && (value == -1 || image_index == -1);
				image_index = value;
				image_key = string.Empty;
				if (num)
				{
					Parent.Redraw(recalculate: true);
				}
				else
				{
					Invalidate();
				}
			}
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	[Editor("System.Windows.Forms.Design.ImageIndexEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[RefreshProperties(RefreshProperties.Repaint)]
	[TypeConverter(typeof(ImageKeyConverter))]
	public string ImageKey
	{
		get
		{
			return image_key;
		}
		set
		{
			if (!(image_key == value))
			{
				bool num = Parent != null && (value == string.Empty || image_key == string.Empty);
				image_index = -1;
				image_key = value;
				if (num)
				{
					Parent.Redraw(recalculate: true);
				}
				else
				{
					Invalidate();
				}
			}
		}
	}

	[Browsable(false)]
	public string Name
	{
		get
		{
			if (name == null)
			{
				return string.Empty;
			}
			return name;
		}
		set
		{
			name = value;
		}
	}

	[Browsable(false)]
	public ToolBar Parent => parent;

	[DefaultValue(false)]
	public bool PartialPush
	{
		get
		{
			return partial_push;
		}
		set
		{
			if (value != partial_push)
			{
				partial_push = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	public bool Pushed
	{
		get
		{
			return pushed;
		}
		set
		{
			if (value != pushed)
			{
				pushed = value;
				Invalidate();
			}
		}
	}

	public Rectangle Rectangle
	{
		get
		{
			if (Visible && Parent != null && Parent.items != null)
			{
				ToolBarItem[] items = Parent.items;
				foreach (ToolBarItem toolBarItem in items)
				{
					if (toolBarItem.Button == this)
					{
						return toolBarItem.Rectangle;
					}
				}
			}
			return Rectangle.Empty;
		}
	}

	[DefaultValue(ToolBarButtonStyle.PushButton)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public ToolBarButtonStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			if (value != style)
			{
				style = value;
				if (parent != null)
				{
					parent.Redraw(recalculate: true);
				}
				OnUIAStyleChanged(EventArgs.Empty);
			}
		}
	}

	[Bindable(true)]
	[DefaultValue(null)]
	[Localizable(false)]
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

	[DefaultValue("")]
	[Localizable(true)]
	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			if (value == null)
			{
				value = "";
			}
			if (!(value == text))
			{
				text = value;
				OnUIATextChanged(EventArgs.Empty);
				if (Parent != null)
				{
					Parent.Redraw(recalculate: true);
				}
			}
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public string ToolTipText
	{
		get
		{
			return tooltip;
		}
		set
		{
			if (value == null)
			{
				value = "";
			}
			tooltip = value;
		}
	}

	[DefaultValue(true)]
	[Localizable(true)]
	public bool Visible
	{
		get
		{
			return visible;
		}
		set
		{
			if (value != visible)
			{
				visible = value;
				if (Parent != null)
				{
					Parent.Redraw(recalculate: true);
				}
			}
		}
	}

	internal bool UIAHasFocus
	{
		get
		{
			return uiaHasFocus;
		}
		set
		{
			uiaHasFocus = value;
			((EventHandler)(value ? Events[UIAGotFocusEvent] : Events[UIALostFocusEvent]))?.Invoke(this, EventArgs.Empty);
		}
	}

	internal event EventHandler UIAGotFocus
	{
		add
		{
			Events.AddHandler(UIAGotFocusEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIAGotFocusEvent, value);
		}
	}

	internal event EventHandler UIALostFocus
	{
		add
		{
			Events.AddHandler(UIALostFocusEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIALostFocusEvent, value);
		}
	}

	internal event EventHandler UIATextChanged
	{
		add
		{
			Events.AddHandler(UIATextChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIATextChangedEvent, value);
		}
	}

	internal event EventHandler UIAEnabledChanged
	{
		add
		{
			Events.AddHandler(UIAEnabledChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIAEnabledChangedEvent, value);
		}
	}

	internal event EventHandler UIADropDownMenuChanged
	{
		add
		{
			Events.AddHandler(UIADropDownMenuChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIADropDownMenuChangedEvent, value);
		}
	}

	internal event EventHandler UIAStyleChanged
	{
		add
		{
			Events.AddHandler(UIAStyleChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UIAStyleChangedEvent, value);
		}
	}

	public ToolBarButton()
	{
	}

	public ToolBarButton(string text)
	{
		this.text = text;
	}

	internal void SetParent(ToolBar parent)
	{
		if (Parent != parent)
		{
			if (Parent != null)
			{
				Parent.Buttons.Remove(this);
			}
			this.parent = parent;
		}
	}

	internal void Invalidate()
	{
		if (Parent != null)
		{
			Parent.Invalidate(Rectangle);
		}
	}

	private void OnUIATextChanged(EventArgs e)
	{
		((EventHandler)Events[UIATextChangedEvent])?.Invoke(this, e);
	}

	private void OnUIAEnabledChanged(EventArgs e)
	{
		((EventHandler)Events[UIAEnabledChangedEvent])?.Invoke(this, e);
	}

	private void OnUIADropDownMenuChanged(EventArgs e)
	{
		((EventHandler)Events[UIADropDownMenuChangedEvent])?.Invoke(this, e);
	}

	private void OnUIAStyleChanged(EventArgs e)
	{
		((EventHandler)Events[UIAStyleChangedEvent])?.Invoke(this, e);
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	public override string ToString()
	{
		return $"ToolBarButton: {text}, Style: {style}";
	}
}
