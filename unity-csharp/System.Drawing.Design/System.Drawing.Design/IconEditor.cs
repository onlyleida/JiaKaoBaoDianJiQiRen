using System.ComponentModel;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace System.Drawing.Design;

public class IconEditor : UITypeEditor
{
	private OpenFileDialog openDialog;

	protected static string CreateExtensionsString(string[] extensions, string sep)
	{
		if (extensions.Length != 0)
		{
			StringBuilder stringBuilder = new StringBuilder();
			stringBuilder.Append(extensions[0]);
			for (int i = 1; i < extensions.Length - 1; i++)
			{
				stringBuilder.Append(sep);
				stringBuilder.Append(extensions[i]);
			}
			return stringBuilder.ToString();
		}
		return string.Empty;
	}

	protected static string CreateFilterEntry(IconEditor e)
	{
		StringBuilder stringBuilder = new StringBuilder();
		string text = CreateExtensionsString(e.GetExtensions(), ";");
		stringBuilder.Append(e.GetFileDialogDescription());
		stringBuilder.Append(" (" + text + ")|");
		stringBuilder.Append(text);
		return stringBuilder.ToString();
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		openDialog = new OpenFileDialog();
		openDialog.Title = Locale.GetText("Open image file");
		openDialog.CheckFileExists = true;
		openDialog.CheckPathExists = true;
		openDialog.Filter = CreateFilterEntry(this);
		openDialog.Multiselect = false;
		if (openDialog.ShowDialog() == DialogResult.OK)
		{
			return LoadFromStream(openDialog.OpenFile());
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}

	protected virtual string[] GetExtensions()
	{
		return new string[1] { "*.ico" };
	}

	protected virtual string GetFileDialogDescription()
	{
		return Locale.GetText("Icon files");
	}

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	protected virtual Icon LoadFromStream(Stream stream)
	{
		return new Icon(stream);
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		Graphics graphics = e.Graphics;
		if (e.Value != null)
		{
			Image image = ((Icon)e.Value).ToBitmap();
			graphics.DrawImage(image, e.Bounds);
			image.Dispose();
		}
		graphics.DrawRectangle(Pens.Black, e.Bounds);
	}
}
