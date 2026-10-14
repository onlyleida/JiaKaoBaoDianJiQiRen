using System.IO;
using System.Runtime.CompilerServices;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class HttpPostedFileWrapper : HttpPostedFileBase
{
	private HttpPostedFile _file;

	public override int ContentLength => _file.ContentLength;

	public override string ContentType => _file.ContentType;

	public override string FileName => _file.FileName;

	public override Stream InputStream => _file.InputStream;

	public HttpPostedFileWrapper(HttpPostedFile httpPostedFile)
	{
		if (httpPostedFile == null)
		{
			throw new ArgumentNullException("httpPostedFile");
		}
		_file = httpPostedFile;
	}

	public override void SaveAs(string filename)
	{
		_file.SaveAs(filename);
	}
}
