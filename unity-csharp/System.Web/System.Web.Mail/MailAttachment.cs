using System.IO;
using System.Security;
using System.Security.Permissions;

namespace System.Web.Mail;

[Obsolete("The recommended alternative is System.Net.Mail.Attachment. http://go.microsoft.com/fwlink/?linkid=14202")]
public class MailAttachment
{
	private string filename;

	private MailEncoding encoding;

	public string Filename => filename;

	public MailEncoding Encoding => encoding;

	public MailAttachment(string filename)
		: this(filename, MailEncoding.Base64)
	{
	}

	public MailAttachment(string filename, MailEncoding encoding)
	{
		if (SecurityManager.SecurityEnabled)
		{
			new FileIOPermission(FileIOPermissionAccess.Read, filename).Demand();
		}
		if (!File.Exists(filename))
		{
			throw new HttpException(string.Format(Locale.GetText("Cannot find file: '{0}'."), filename));
		}
		this.filename = filename;
		this.encoding = encoding;
	}
}
