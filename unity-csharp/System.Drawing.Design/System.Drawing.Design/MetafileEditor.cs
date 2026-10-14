using System.Drawing.Imaging;
using System.IO;

namespace System.Drawing.Design;

public class MetafileEditor : ImageEditor
{
	protected override string[] GetExtensions()
	{
		return new string[2] { "*.emf", "*.wmf" };
	}

	protected override string GetFileDialogDescription()
	{
		return Locale.GetText("All metafile files");
	}

	protected override Image LoadFromStream(Stream stream)
	{
		return new Metafile(stream);
	}
}
