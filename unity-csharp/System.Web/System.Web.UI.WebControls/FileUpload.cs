using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[Designer("DesignerBaseTypeNameSystem.ComponentModel.Design.IDesignerDesignerTypeNameSystem.Web.UI.Design.WebControls.PreviewControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[ValidationProperty("FileName")]
[ControlValueProperty("FileBytes")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal, Unrestricted = false)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal, Unrestricted = false)]
public class FileUpload : WebControl
{
	private byte[] cachedBytes;

	[Browsable(false)]
	[Bindable(true, BindingDirection.OneWay)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public byte[] FileBytes
	{
		get
		{
			if (cachedBytes == null)
			{
				cachedBytes = new byte[FileContent.Length];
				FileContent.Read(cachedBytes, 0, cachedBytes.Length);
			}
			return (byte[])cachedBytes.Clone();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Stream FileContent
	{
		get
		{
			if (PostedFile == null)
			{
				return Stream.Null;
			}
			Stream inputStream = PostedFile.InputStream;
			if (inputStream != null)
			{
				inputStream.Position = 0L;
			}
			return inputStream;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string FileName
	{
		get
		{
			if (PostedFile == null)
			{
				return string.Empty;
			}
			return Path.GetFileName(PostedFile.FileName);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasFile
	{
		get
		{
			HttpPostedFile postedFile = PostedFile;
			if (postedFile != null)
			{
				return !string.IsNullOrEmpty(postedFile.FileName);
			}
			return false;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpPostedFile PostedFile
	{
		get
		{
			Page page = Page;
			if (page == null || !page.IsPostBack)
			{
				return null;
			}
			if (Context == null || Context.Request == null)
			{
				return null;
			}
			return Context.Request.Files[UniqueID];
		}
	}

	public virtual bool AllowMultiple
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool HasFiles
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public IList<HttpPostedFile> PostedFiles
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<HttpPostedFile>)0;
		}
	}

	public FileUpload()
		: base(HtmlTextWriterTag.Input)
	{
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		writer.AddAttribute(HtmlTextWriterAttribute.Type, "file", fEncode: false);
		if (!string.IsNullOrEmpty(UniqueID))
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Name, UniqueID);
		}
		base.AddAttributesToRender(writer);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page page = Page;
		if (page != null)
		{
			page.Form.Enctype = "multipart/form-data";
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		Page?.VerifyRenderingInServerForm(this);
		base.Render(writer);
	}

	public void SaveAs(string filename)
	{
		PostedFile?.SaveAs(filename);
	}
}
