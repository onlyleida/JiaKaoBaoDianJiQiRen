using System.Security.Permissions;

namespace System.Web.Caching;

[Serializable]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Unrestricted)]
public class MemoryResponseElement : ResponseElement
{
	public byte[] Buffer { get; private set; }

	public long Length { get; private set; }

	public MemoryResponseElement(byte[] buffer, long length)
	{
		if (buffer == null)
		{
			throw new ArgumentNullException("buffer");
		}
		if (length < 0 || length > buffer.Length)
		{
			throw new ArgumentOutOfRangeException("length", "is less than zero or greater than the size of buffer.");
		}
		Buffer = buffer;
		Length = length;
	}
}
