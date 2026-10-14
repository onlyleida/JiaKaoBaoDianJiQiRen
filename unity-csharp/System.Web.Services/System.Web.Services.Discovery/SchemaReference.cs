using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;
using System.Web.Services.Diagnostics;
using System.Web.Services.Protocols;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace System.Web.Services.Discovery;

[XmlRoot("schemaRef", Namespace = "http://schemas.xmlsoap.org/disco/schema/")]
public sealed class SchemaReference : DiscoveryReference
{
	public const string Namespace = "http://schemas.xmlsoap.org/disco/schema/";

	private string reference;

	private string targetNamespace;

	[XmlAttribute("ref")]
	public string Ref
	{
		get
		{
			if (reference != null)
			{
				return reference;
			}
			return "";
		}
		set
		{
			reference = value;
		}
	}

	[XmlAttribute("targetNamespace")]
	[DefaultValue(null)]
	public string TargetNamespace
	{
		get
		{
			return targetNamespace;
		}
		set
		{
			targetNamespace = value;
		}
	}

	[XmlIgnore]
	public override string Url
	{
		get
		{
			return Ref;
		}
		set
		{
			Ref = value;
		}
	}

	[XmlIgnore]
	public override string DefaultFilename
	{
		get
		{
			string text = DiscoveryReference.MakeValidFilename(Schema.Id);
			if (text == null || text.Length == 0)
			{
				text = DiscoveryReference.FilenameFromUrl(Url);
			}
			return Path.ChangeExtension(text, ".xsd");
		}
	}

	[XmlIgnore]
	public XmlSchema Schema
	{
		get
		{
			if (ClientProtocol == null)
			{
				throw new InvalidOperationException(Res.GetString("WebMissingClientProtocol"));
			}
			object obj = ClientProtocol.InlinedSchemas[Url];
			if (obj == null)
			{
				obj = ClientProtocol.Documents[Url];
			}
			if (obj == null)
			{
				Resolve();
				obj = ClientProtocol.Documents[Url];
			}
			if (!(obj is XmlSchema result))
			{
				throw new InvalidOperationException(Res.GetString("WebInvalidDocType", typeof(XmlSchema).FullName, (obj == null) ? string.Empty : obj.GetType().FullName, Url));
			}
			return result;
		}
	}

	public SchemaReference()
	{
	}

	public SchemaReference(string url)
	{
		Ref = url;
	}

	internal XmlSchema GetSchema()
	{
		try
		{
			return Schema;
		}
		catch (Exception ex)
		{
			if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
			{
				throw;
			}
			ClientProtocol.Errors[Url] = ex;
			if (Tracing.On)
			{
				Tracing.ExceptionCatch(TraceEventType.Warning, this, "GetSchema", ex);
			}
		}
		return null;
	}

	internal override void LoadExternals(Hashtable loadedExternals)
	{
		LoadExternals(GetSchema(), Url, ClientProtocol, loadedExternals);
	}

	internal static void LoadExternals(XmlSchema schema, string url, DiscoveryClientProtocol client, Hashtable loadedExternals)
	{
		if (schema == null)
		{
			return;
		}
		foreach (XmlSchemaExternal include in schema.Includes)
		{
			if (include.SchemaLocation == null || include.SchemaLocation.Length == 0 || include.Schema != null || (!(include is XmlSchemaInclude) && !(include is XmlSchemaRedefine)))
			{
				continue;
			}
			string text = DiscoveryReference.UriToString(url, include.SchemaLocation);
			if (client.References[text] is SchemaReference)
			{
				SchemaReference schemaReference = (SchemaReference)client.References[text];
				include.Schema = schemaReference.GetSchema();
				if (include.Schema != null)
				{
					loadedExternals[text] = include.Schema;
				}
				schemaReference.LoadExternals(loadedExternals);
			}
		}
	}

	public override void WriteDocument(object document, Stream stream)
	{
		((XmlSchema)document).Write(new StreamWriter(stream, new UTF8Encoding(encoderShouldEmitUTF8Identifier: false)));
	}

	public override object ReadDocument(Stream stream)
	{
		return XmlSchema.Read(new XmlTextReader(Url, stream)
		{
			XmlResolver = null
		}, null);
	}

	protected internal override void Resolve(string contentType, Stream stream)
	{
		if (ContentType.IsHtml(contentType))
		{
			ClientProtocol.Errors[Url] = new InvalidContentTypeException(Res.GetString("WebInvalidContentType", contentType), contentType);
		}
		XmlSchema xmlSchema = ClientProtocol.Documents[Url] as XmlSchema;
		if (xmlSchema == null)
		{
			if (ClientProtocol.Errors[Url] != null)
			{
				throw ClientProtocol.Errors[Url];
			}
			xmlSchema = (XmlSchema)ReadDocument(stream);
			ClientProtocol.Documents[Url] = xmlSchema;
		}
		if (ClientProtocol.References[Url] != this)
		{
			ClientProtocol.References[Url] = this;
		}
		foreach (XmlSchemaExternal include in xmlSchema.Includes)
		{
			string text = null;
			try
			{
				if (include.SchemaLocation != null && include.SchemaLocation.Length > 0)
				{
					text = DiscoveryReference.UriToString(Url, include.SchemaLocation);
					SchemaReference schemaReference = new SchemaReference(text);
					schemaReference.ClientProtocol = ClientProtocol;
					ClientProtocol.References[text] = schemaReference;
					schemaReference.Resolve();
				}
			}
			catch (Exception ex)
			{
				if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
				{
					throw;
				}
				throw new InvalidDocumentContentsException(Res.GetString("TheSchemaDocumentContainsLinksThatCouldNotBeResolved", text), ex);
			}
		}
	}
}
