using System.IO;

namespace System.Drawing.Design;

public class BitmapEditor : ImageEditor
{
	protected override string[] GetExtensions()
	{
		return new string[6] { "*.bmp", "*.gif", "*.jpg", "*.jpeg", "*.png", "*.ico" };
	}

	protected override string GetFileDialogDescription()
	{
		return Locale.GetText("All bitmap files");
	}

	protected override Image LoadFromStream(Stream stream)
	{
		return new Bitmap(stream);
	}
}
