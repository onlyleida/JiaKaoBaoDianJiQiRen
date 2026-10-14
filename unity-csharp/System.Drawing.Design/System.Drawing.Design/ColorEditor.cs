using System.Collections;
using System.ComponentModel;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace System.Drawing.Design;

public class ColorEditor : UITypeEditor
{
	private class ColorListBox : ListBox
	{
		public ColorListBox()
		{
			DrawMode = DrawMode.OwnerDrawFixed;
			Sorted = true;
			ItemHeight = 14;
			BorderStyle = BorderStyle.FixedSingle;
		}

		protected override void OnDrawItem(DrawItemEventArgs e)
		{
			e.DrawBackground();
			Color color = (Color)Items[e.Index];
			using (SolidBrush brush = new SolidBrush(color))
			{
				e.Graphics.FillRectangle(brush, 2, e.Bounds.Top + 2, 21, 9);
			}
			e.Graphics.DrawRectangle(SystemPens.WindowText, 2, e.Bounds.Top + 2, 21, 9);
			e.Graphics.DrawString(color.Name, Font, SystemBrushes.WindowText, 26f, e.Bounds.Top);
			if ((e.State & DrawItemState.Selected) != 0)
			{
				e.DrawFocusRectangle();
			}
			base.OnDrawItem(e);
		}
	}

	private class SystemColorCompare : IComparer
	{
		public int Compare(object x, object y)
		{
			Color color = (Color)x;
			Color color2 = (Color)y;
			return string.Compare(color.Name, color2.Name);
		}
	}

	private class WebColorCompare : IComparer
	{
		public int Compare(object x, object y)
		{
			Color color = (Color)x;
			Color color2 = (Color)y;
			return string.Compare(color.Name, color2.Name);
		}
	}

	private class CustomColorPicker : UserControl
	{
		private Color[,] colors;

		private bool highlighting;

		private int x;

		private int y;

		public event EventHandler ColorChanged;

		public CustomColorPicker()
		{
			colors = new Color[8, 8];
			colors[0, 0] = Color.White;
			colors[1, 0] = Color.FromArgb(224, 224, 224);
			colors[2, 0] = Color.Silver;
			colors[3, 0] = Color.Gray;
			colors[4, 0] = Color.FromArgb(64, 64, 64);
			colors[5, 0] = Color.Black;
			colors[6, 0] = Color.White;
			colors[7, 0] = Color.White;
			colors[0, 1] = Color.FromArgb(255, 192, 192);
			colors[1, 1] = Color.FromArgb(255, 128, 128);
			colors[2, 1] = Color.Red;
			colors[3, 1] = Color.FromArgb(192, 0, 0);
			colors[4, 1] = Color.Maroon;
			colors[5, 1] = Color.FromArgb(64, 0, 0);
			colors[6, 1] = Color.White;
			colors[7, 1] = Color.White;
			colors[0, 2] = Color.FromArgb(255, 224, 192);
			colors[1, 2] = Color.FromArgb(255, 192, 128);
			colors[2, 2] = Color.FromArgb(255, 128, 0);
			colors[3, 2] = Color.FromArgb(192, 64, 0);
			colors[4, 2] = Color.FromArgb(128, 64, 0);
			colors[5, 2] = Color.FromArgb(128, 64, 64);
			colors[6, 2] = Color.White;
			colors[7, 2] = Color.White;
			colors[0, 3] = Color.FromArgb(255, 255, 192);
			colors[1, 3] = Color.FromArgb(255, 255, 128);
			colors[2, 3] = Color.Yellow;
			colors[3, 3] = Color.FromArgb(192, 192, 0);
			colors[4, 3] = Color.Olive;
			colors[5, 3] = Color.FromArgb(64, 64, 0);
			colors[6, 3] = Color.White;
			colors[7, 3] = Color.White;
			colors[0, 4] = Color.FromArgb(192, 255, 192);
			colors[1, 4] = Color.FromArgb(128, 255, 128);
			colors[2, 4] = Color.Lime;
			colors[3, 4] = Color.FromArgb(0, 192, 0);
			colors[4, 4] = Color.Green;
			colors[5, 4] = Color.FromArgb(0, 64, 0);
			colors[6, 4] = Color.White;
			colors[7, 4] = Color.White;
			colors[0, 5] = Color.FromArgb(192, 255, 255);
			colors[1, 5] = Color.FromArgb(128, 255, 255);
			colors[2, 5] = Color.Cyan;
			colors[3, 5] = Color.FromArgb(0, 192, 192);
			colors[4, 5] = Color.Teal;
			colors[5, 5] = Color.FromArgb(0, 64, 64);
			colors[6, 5] = Color.White;
			colors[7, 5] = Color.White;
			colors[0, 6] = Color.FromArgb(192, 192, 255);
			colors[1, 6] = Color.FromArgb(128, 128, 255);
			colors[2, 6] = Color.Blue;
			colors[3, 6] = Color.FromArgb(0, 0, 192);
			colors[4, 6] = Color.Navy;
			colors[5, 6] = Color.FromArgb(0, 0, 64);
			colors[6, 6] = Color.White;
			colors[7, 6] = Color.White;
			colors[0, 7] = Color.FromArgb(255, 192, 255);
			colors[1, 7] = Color.FromArgb(255, 128, 255);
			colors[2, 7] = Color.Fuchsia;
			colors[3, 7] = Color.FromArgb(192, 0, 192);
			colors[4, 7] = Color.Purple;
			colors[5, 7] = Color.FromArgb(64, 0, 64);
			colors[6, 7] = Color.White;
			colors[7, 7] = Color.White;
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			for (int i = 0; i < 8; i++)
			{
				for (int j = 0; j < 8; j++)
				{
					DrawRect(e.Graphics, colors[i, j], j * 24, i * 24);
				}
			}
			if (highlighting)
			{
				int num = x / 24;
				int num2 = y / 24;
				ControlPaint.DrawFocusRectangle(e.Graphics, new Rectangle(num * 24 - 2, num2 * 24 - 2, 24, 24));
			}
			base.OnPaint(e);
		}

		private void DrawRect(Graphics g, Color color, int x, int y)
		{
			using (SolidBrush brush = new SolidBrush(color))
			{
				g.FillRectangle(brush, x, y, 20, 20);
			}
			ControlPaint.DrawBorder3D(g, x, y, 20, 20);
		}

		protected override void OnMouseDown(MouseEventArgs e)
		{
			if (e.X % 24 < 20 && e.Y % 24 < 20)
			{
				x = e.X;
				y = e.Y;
				highlighting = true;
				Invalidate();
			}
			base.OnMouseDown(e);
		}

		protected override void OnMouseUp(MouseEventArgs e)
		{
			if (highlighting && ClientRectangle.Contains(e.X, e.Y))
			{
				if (ColorChanged != null)
				{
					ColorChanged(colors[y / 24, x / 24], EventArgs.Empty);
				}
				highlighting = false;
			}
			base.OnMouseUp(e);
		}

		protected override void OnMouseMove(MouseEventArgs e)
		{
			if (highlighting)
			{
				int num = x;
				int num2 = y;
				x = e.X;
				y = e.Y;
				if ((num / 24 != x / 24 || num2 / 24 != y / 24) && x / 24 < 8 && y / 24 < 8)
				{
					Region region = new Region();
					region.Union(new Rectangle(num - 2, num2 - 2, 24, 24));
					region.Union(new Rectangle(x - 2, y - 2, 24, 24));
					Invalidate(region);
				}
			}
			base.OnMouseMove(e);
		}
	}

	private IWindowsFormsEditorService editorService;

	private Color selected_color;

	private bool color_chosen;

	private Control editor_control;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && provider != null)
		{
			editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (editorService != null)
			{
				if (editor_control == null)
				{
					editor_control = GetEditorControl(value);
				}
				editorService.DropDownControl(editor_control);
				if (color_chosen)
				{
					return selected_color;
				}
				return null;
			}
		}
		return base.EditValue(context, provider, value);
	}

	private Control GetEditorControl(object value)
	{
		TabControl tabControl = new TabControl();
		tabControl.Dock = DockStyle.Fill;
		TabPage tabPage = new TabPage("Custom");
		TabPage tabPage2 = new TabPage("Web");
		TabPage tabPage3 = new TabPage("System");
		ColorListBox colorListBox = new ColorListBox();
		ColorListBox colorListBox2 = new ColorListBox();
		colorListBox.Dock = DockStyle.Fill;
		colorListBox2.Dock = DockStyle.Fill;
		tabPage2.Controls.Add(colorListBox);
		tabPage3.Controls.Add(colorListBox2);
		SystemColorCompare comparer = new SystemColorCompare();
		ArrayList arrayList = new ArrayList();
		PropertyInfo[] properties = typeof(SystemColors).GetProperties(BindingFlags.Static | BindingFlags.Public);
		for (int i = 0; i < properties.Length; i++)
		{
			Color color = (Color)properties[i].GetValue(null, null);
			arrayList.Add(color);
		}
		arrayList.Sort(comparer);
		colorListBox2.Items.AddRange(arrayList.ToArray());
		colorListBox2.MouseUp += HandleMouseUp;
		colorListBox2.SelectedValueChanged += HandleChange;
		WebColorCompare comparer2 = new WebColorCompare();
		arrayList = new ArrayList();
		foreach (KnownColor value2 in Enum.GetValues(typeof(KnownColor)))
		{
			Color color2 = Color.FromKnownColor(value2);
			if (!color2.IsSystemColor)
			{
				arrayList.Add(color2);
			}
		}
		arrayList.Sort(comparer2);
		colorListBox.Items.AddRange(arrayList.ToArray());
		colorListBox.MouseUp += HandleMouseUp;
		colorListBox.SelectedValueChanged += HandleChange;
		CustomColorPicker customColorPicker = new CustomColorPicker();
		customColorPicker.Dock = DockStyle.Fill;
		customColorPicker.ColorChanged += CustomColorPicked;
		tabPage.Controls.Add(customColorPicker);
		tabControl.TabPages.Add(tabPage);
		tabControl.TabPages.Add(tabPage2);
		tabControl.TabPages.Add(tabPage3);
		if (value != null)
		{
			Color color3 = (Color)value;
			if (color3.IsSystemColor)
			{
				colorListBox2.SelectedValue = color3;
				tabControl.SelectedTab = tabPage3;
			}
			else if (color3.IsKnownColor)
			{
				colorListBox.SelectedValue = color3;
				tabControl.SelectedTab = tabPage2;
			}
			selected_color = color3;
			color_chosen = true;
		}
		tabControl.Height = 216;
		return tabControl;
	}

	private void HandleChange(object sender, EventArgs e)
	{
		selected_color = (Color)((ColorListBox)sender).Items[((ColorListBox)sender).SelectedIndex];
		color_chosen = true;
	}

	private void CustomColorPicked(object sender, EventArgs e)
	{
		selected_color = (Color)sender;
		color_chosen = true;
		if (editorService != null)
		{
			editorService.CloseDropDown();
		}
	}

	private void HandleMouseUp(object sender, MouseEventArgs e)
	{
		if (editorService != null)
		{
			editorService.CloseDropDown();
		}
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		Graphics graphics = e.Graphics;
		if (e.Value != null)
		{
			using (SolidBrush brush = new SolidBrush((Color)e.Value))
			{
				graphics.FillRectangle(brush, e.Bounds);
			}
		}
	}
}
