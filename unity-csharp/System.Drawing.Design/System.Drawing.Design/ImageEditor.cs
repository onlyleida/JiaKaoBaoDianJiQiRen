using System.ComponentModel;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace System.Drawing.Design;

public class ImageEditor : UITypeEditor
{
	private OpenFileDialog openDialog;

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

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		Graphics graphics = e.Graphics;
		if (e.Value != null)
		{
			Image image = (Image)e.Value;
			graphics.DrawImage(image, e.Bounds);
		}
		graphics.DrawRectangle(Pens.Black, e.Bounds);
	}

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

	protected static string CreateFilterEntry(ImageEditor e)
	{
		StringBuilder stringBuilder = new StringBuilder();
		string text = CreateExtensionsString(e.GetExtensions(), ";");
		stringBuilder.Append(e.GetFileDialogDescription());
		stringBuilder.Append(" (" + text + ")|");
		stringBuilder.Append(text);
		return stringBuilder.ToString();
	}

	protected virtual string[] GetExtensions()
	{
		return new string[8] { "*.bmp", "*.gif", "*.jpg", "*.jpeg", "*.png", "*.ico", "*.emf", "*.wmf" };
	}

	protected virtual string GetFileDialogDescription()
	{
		return Locale.GetText("All image files");
	}

	protected virtual Image LoadFromStream(Stream stream)
	{
		return new Bitmap(stream);
	}

	[MonoTODO]
	protected virtual Type[] GetImageExtenders()
	{
		throw new NotImplementedException();
	}
}
