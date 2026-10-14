using System.ComponentModel;

namespace System.Web.UI.WebControls;

public sealed class EmbeddedMailObject
{
	[NotifyParentProperty(true)]
	[DefaultValue("")]
	public string Name { get; set; }

	[DefaultValue("")]
	[NotifyParentProperty(true)]
	[UrlProperty]
	[Editor("System.Web.UI.Design.MailFileEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string Path { get; set; }

	public EmbeddedMailObject()
	{
	}

	public EmbeddedMailObject(string name, string path)
	{
		Name = name;
		Path = path;
	}
}
