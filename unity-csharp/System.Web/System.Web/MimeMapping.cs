namespace System.Web;

public static class MimeMapping
{
	public static string GetMimeMapping(string fileName)
	{
		return MimeTypes.GetMimeType(fileName);
	}
}
