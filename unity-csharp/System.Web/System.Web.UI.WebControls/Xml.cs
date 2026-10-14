using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace System.Web.UI.WebControls;

[PersistChildren(true)]
[Designer("System.Web.UI.Design.WebControls.XmlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ControlBuilder(typeof(XmlBuilder))]
[DefaultProperty("DocumentSource")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Xml : Control
{
	private XmlDocument xml_document;

	private XPathNavigator xpath_navigator;

	private string xml_content;

	private string xml_file;

	private XslTransform xsl_transform;

	private XsltArgumentList transform_arguments;

	private string transform_file;

	[MonoTODO("Anything else?")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string ClientID => base.ClientID;

	[MonoTODO("Anything else?")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override ControlCollection Controls => base.Controls;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Obsolete("Use the XPathNavigator property instead by creating an XPathDocument and calling CreateNavigator().")]
	public XmlDocument Document
	{
		get
		{
			return xml_document;
		}
		set
		{
			xml_content = null;
			xml_file = null;
			xml_document = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string DocumentContent
	{
		get
		{
			if (xml_content == null)
			{
				return "";
			}
			return xml_content;
		}
		set
		{
			xml_content = value;
			xml_file = null;
			xml_document = null;
		}
	}

	[MonoLimitation("Absolute path to the file system is not supported; use a relative URI instead.")]
	[WebSysDescription("")]
	[Editor("System.Web.UI.Design.XmlUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	[WebCategory("Behavior")]
	public string DocumentSource
	{
		get
		{
			if (xml_file == null)
			{
				return "";
			}
			return xml_file;
		}
		set
		{
			xml_content = null;
			xml_file = value;
			xml_document = null;
		}
	}

	[Browsable(false)]
	[DefaultValue(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool EnableTheming
	{
		get
		{
			return false;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DefaultValue("")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override string SkinID
	{
		get
		{
			return string.Empty;
		}
		set
		{
			throw new NotSupportedException("SkinID is not supported on Xml control");
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public XslTransform Transform
	{
		get
		{
			return xsl_transform;
		}
		set
		{
			transform_file = null;
			xsl_transform = value;
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public XsltArgumentList TransformArgumentList
	{
		get
		{
			return transform_arguments;
		}
		set
		{
			transform_arguments = value;
		}
	}

	[Editor("System.Web.UI.Design.XslUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[MonoLimitation("Absolute path to the file system is not supported; use a relative URI instead.")]
	[DefaultValue("")]
	public string TransformSource
	{
		get
		{
			if (transform_file == null)
			{
				return "";
			}
			return transform_file;
		}
		set
		{
			transform_file = value;
			xsl_transform = null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public XPathNavigator XPathNavigator
	{
		get
		{
			return xpath_navigator;
		}
		set
		{
			xpath_navigator = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override Control FindControl(string id)
	{
		return null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void Focus()
	{
		throw new NotSupportedException();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool HasControls()
	{
		return false;
	}

	protected internal override void Render(HtmlTextWriter output)
	{
		XmlDocument xmlDocument = null;
		if (xpath_navigator == null)
		{
			if (xml_document != null)
			{
				xmlDocument = xml_document;
			}
			else if (xml_content != null)
			{
				xmlDocument = new XmlDocument();
				xmlDocument.LoadXml(xml_content);
			}
			else
			{
				if (xml_file == null)
				{
					return;
				}
				xmlDocument = new XmlDocument();
				xmlDocument.Load(MapPathSecure(xml_file));
			}
		}
		XslTransform xslTransform = xsl_transform;
		if (transform_file != null)
		{
			xslTransform = new XslTransform();
			xslTransform.Load(MapPathSecure(transform_file));
		}
		if (xslTransform != null)
		{
			if (xpath_navigator != null)
			{
				xslTransform.Transform(xpath_navigator, transform_arguments, output);
			}
			else
			{
				xslTransform.Transform(xmlDocument, transform_arguments, output, null);
			}
			return;
		}
		XmlTextWriter xmlTextWriter = new XmlTextWriter(output);
		xmlTextWriter.Formatting = Formatting.None;
		if (xpath_navigator != null)
		{
			xmlTextWriter.WriteStartDocument();
			xpath_navigator.WriteSubtree(xmlTextWriter);
		}
		else
		{
			xmlDocument.Save(xmlTextWriter);
		}
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (obj is LiteralControl literalControl)
		{
			xml_document = new XmlDocument();
			xml_document.LoadXml(literalControl.Text);
			return;
		}
		throw new HttpException($"Objects of type {obj.GetType()} are not supported as children of the Xml control");
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	[MonoTODO("Always returns null")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override IDictionary GetDesignModeState()
	{
		return null;
	}
}
