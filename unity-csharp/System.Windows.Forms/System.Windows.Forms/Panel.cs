using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;

namespace System.Windows.Forms;

[DefaultProperty("BorderStyle")]
[DefaultEvent("Paint")]
[Designer("System.Windows.Forms.Design.PanelDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ComVisible(true)]
[Docking(DockingBehavior.Ask)]
[ClassInterface(ClassInterfaceType.AutoDispatch)]
public class Panel : ScrollableControl
{
	[Browsable(true)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public override bool AutoSize
	{
		get
		{
			return base.AutoSize;
		}
		set
		{
			base.AutoSize = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(AutoSizeMode.GrowOnly)]
	[Localizable(true)]
	public virtual AutoSizeMode AutoSizeMode
	{
		get
		{
			return GetAutoSizeMode();
		}
		set
		{
			SetAutoSizeMode(value);
		}
	}

	[DispId(-504)]
	[DefaultValue(BorderStyle.None)]
	public BorderStyle BorderStyle
	{
		get
		{
			return InternalBorderStyle;
		}
		set
		{
			InternalBorderStyle = value;
		}
	}

	[DefaultValue(false)]
	public new bool TabStop
	{
		get
		{
			return base.TabStop;
		}
		set
		{
			if (value != TabStop)
			{
				base.TabStop = value;
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Bindable(false)]
	[Browsable(false)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			if (!(value == Text))
			{
				base.Text = value;
				Refresh();
			}
		}
	}

	protected override CreateParams CreateParams => base.CreateParams;

	protected override Size DefaultSize => ThemeEngine.Current.PanelDefaultSize;

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

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event KeyEventHandler KeyDown
	{
		add
		{
			base.KeyDown += value;
		}
		remove
		{
			base.KeyDown -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event KeyPressEventHandler KeyPress
	{
		add
		{
			base.KeyPress += value;
		}
		remove
		{
			base.KeyPress -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event KeyEventHandler KeyUp
	{
		add
		{
			base.KeyUp += value;
		}
		remove
		{
			base.KeyUp -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler TextChanged
	{
		add
		{
			base.TextChanged += value;
		}
		remove
		{
			base.TextChanged -= value;
		}
	}

	public Panel()
	{
		base.TabStop = false;
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: true);
	}

	public override string ToString()
	{
		return base.ToString() + ", BorderStyle: " + BorderStyle;
	}

	protected override void OnResize(EventArgs eventargs)
	{
		base.OnResize(eventargs);
		Invalidate(invalidateChildren: true);
	}

	internal override Size GetPreferredSizeCore(Size proposedSize)
	{
		Size empty = Size.Empty;
		foreach (Control control in Controls)
		{
			if (control.Dock == DockStyle.Fill)
			{
				if (control.Bounds.Right > empty.Width)
				{
					empty.Width = control.Bounds.Right;
				}
			}
			else if (control.Dock != DockStyle.Top && control.Dock != DockStyle.Bottom && (control.Anchor & AnchorStyles.Right) == 0 && control.Bounds.Right + control.Margin.Right > empty.Width)
			{
				empty.Width = control.Bounds.Right + control.Margin.Right;
			}
			if (control.Dock == DockStyle.Fill)
			{
				if (control.Bounds.Bottom > empty.Height)
				{
					empty.Height = control.Bounds.Bottom;
				}
			}
			else if (control.Dock != DockStyle.Left && control.Dock != DockStyle.Right && (control.Anchor & AnchorStyles.Bottom) == 0 && control.Bounds.Bottom + control.Margin.Bottom > empty.Height)
			{
				empty.Height = control.Bounds.Bottom + control.Margin.Bottom;
			}
		}
		return empty;
	}
}
