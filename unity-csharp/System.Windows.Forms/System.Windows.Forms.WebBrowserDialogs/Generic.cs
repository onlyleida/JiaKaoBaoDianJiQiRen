using System.Drawing;

namespace System.Windows.Forms.WebBrowserDialogs;

internal class Generic : Form
{
	private TableLayoutPanel table;

	public Generic(string title)
	{
		SuspendLayout();
		AutoScaleMode = AutoScaleMode.Font;
		AutoSize = true;
		ControlBox = true;
		MinimizeBox = false;
		MaximizeBox = false;
		ShowInTaskbar = Owner == null;
		FormBorderStyle = FormBorderStyle.FixedDialog;
		table = new TableLayoutPanel();
		table.SuspendLayout();
		table.AutoSize = true;
		Controls.Add(table);
		Text = title;
	}

	public new DialogResult Show()
	{
		return RunDialog();
	}

	private void InitSize()
	{
	}

	protected void InitTable(int rows, int cols)
	{
		table.ColumnCount = cols;
		for (int i = 0; i < cols; i++)
		{
			table.ColumnStyles.Add(new ColumnStyle());
		}
		table.RowCount = rows;
		for (int j = 0; j < rows; j++)
		{
			table.RowStyles.Add(new RowStyle());
		}
	}

	protected void AddLabel(int row, int col, int colspan, string text, int width, int height)
	{
		Label label = new Label();
		label.Text = text;
		if (width == -1 && height == -1)
		{
			label.AutoSize = true;
		}
		else
		{
			label.Width = width;
			label.Height = height;
		}
		table.Controls.Add(label, col, row);
		if (colspan > 1)
		{
			table.SetColumnSpan(label, colspan);
		}
	}

	protected void AddButton(int row, int col, int colspan, string text, int width, int height, bool isAccept, bool isCancel, EventHandler onClick)
	{
		Button button = new Button();
		button.Text = text;
		if (width != -1 || height != -1)
		{
			button.Width = width;
			button.Height = height;
		}
		if (onClick != null)
		{
			button.Click += onClick;
		}
		if (isAccept)
		{
			AcceptButton = button;
		}
		if (isCancel)
		{
			CancelButton = button;
		}
		table.Controls.Add(button, col, row);
		if (colspan > 1)
		{
			table.SetColumnSpan(button, colspan);
		}
	}

	protected void AddCheck(int row, int col, int colspan, string text, bool check, int width, int height, EventHandler onCheck)
	{
		CheckBox checkBox = new CheckBox();
		checkBox.Text = text;
		checkBox.Checked = check;
		if (width == -1 && height == -1)
		{
			SizeF sizeF = TextRenderer.MeasureString(text, checkBox.Font);
			checkBox.Width += (int)(sizeF.Width / 62f);
			if (sizeF.Height > (float)checkBox.Height)
			{
				checkBox.Height = (int)sizeF.Height;
			}
		}
		else
		{
			checkBox.Width = width;
			checkBox.Height = height;
		}
		if (onCheck != null)
		{
			checkBox.CheckedChanged += onCheck;
		}
		table.Controls.Add(checkBox, col, row);
		if (colspan > 1)
		{
			table.SetColumnSpan(checkBox, colspan);
		}
	}

	protected void AddText(int row, int col, int colspan, string text, int width, int height, EventHandler onText)
	{
		TextBox textBox = new TextBox();
		textBox.Text = text;
		if (width > -1)
		{
			textBox.Width = width;
		}
		if (height > -1)
		{
			textBox.Height = height;
		}
		if (onText != null)
		{
			textBox.TextChanged += onText;
		}
		table.Controls.Add(textBox, col, row);
		if (colspan > 1)
		{
			table.SetColumnSpan(textBox, colspan);
		}
	}

	protected void AddPassword(int row, int col, int colspan, string text, int width, int height, EventHandler onText)
	{
		TextBox textBox = new TextBox();
		textBox.PasswordChar = '*';
		textBox.Text = text;
		if (width > -1)
		{
			textBox.Width = width;
		}
		if (height > -1)
		{
			textBox.Height = height;
		}
		if (onText != null)
		{
			textBox.TextChanged += onText;
		}
		table.Controls.Add(textBox, col, row);
		if (colspan > 1)
		{
			table.SetColumnSpan(textBox, colspan);
		}
	}

	protected DialogResult RunDialog()
	{
		StartPosition = FormStartPosition.CenterScreen;
		InitSize();
		table.ResumeLayout(performLayout: false);
		table.PerformLayout();
		ResumeLayout(performLayout: false);
		PerformLayout();
		ShowDialog();
		return DialogResult;
	}
}
