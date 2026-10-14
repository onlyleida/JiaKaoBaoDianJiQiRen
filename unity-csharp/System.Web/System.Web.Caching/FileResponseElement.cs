using System.Security.Permissions;

namespace System.Web.Caching;

[Serializable]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Unrestricted)]
public class FileResponseElement : ResponseElement
{
	public long Length { get; private set; }

	public long Offset { get; private set; }

	public string Path { get; private set; }

	public FileResponseElement(string path, long offset, long length)
	{
		if (path == null)
		{
			throw new ArgumentNullException("path");
		}
		if (offset < 0)
		{
			throw new ArgumentOutOfRangeException("offset", "is less than zero.");
		}
		if (length < 0)
		{
			throw new ArgumentOutOfRangeException("length", "is less than zero.");
		}
		Length = length;
		Offset = offset;
		Path = path;
	}
}
