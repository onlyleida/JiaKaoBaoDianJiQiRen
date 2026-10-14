using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;
using System.Web.Services.Description;
using System.Web.Services.Diagnostics;
using System.Web.Services.Protocols;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace System.Web.Services.Discovery;

[XmlRoot("contractRef", Namespace = "http://schemas.xmlsoap.org/disco/scl/")]
public class ContractReference : DiscoveryReference
{
	public const string Namespace = "http://schemas.xmlsoap.org/disco/scl/";

	private string docRef;

	private string reference;

	[XmlAttribute("ref")]
	public string Ref
	{
		get
		{
			return reference;
		}
		set
		{
			reference = value;
		}
	}

	[XmlAttribute("docRef")]
	public string DocRef
	{
		get
		{
			return docRef;
		}
		set
		{
			docRef = value;
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
	public ServiceDescription Contract
	{
		get
		{
			if (ClientProtocol == null)
			{
				throw new InvalidOperationException(Res.GetString("WebMissingClientProtocol"));
			}
			object obj = ClientProtocol.Documents[Url];
			if (obj == null)
			{
				Resolve();
				obj = ClientProtocol.Documents[Url];
			}
			if (!(obj is ServiceDescription result))
			{
				throw new InvalidOperationException(Res.GetString("WebInvalidDocType", typeof(ServiceDescription).FullName, (obj == null) ? string.Empty : obj.GetType().FullName, Url));
			}
			return result;
		}
	}

	[XmlIgnore]
	public override string DefaultFilename
	{
		get
		{
			string text = DiscoveryReference.MakeValidFilename(Contract.Name);
			if (text == null || text.Length == 0)
			{
				text = DiscoveryReference.FilenameFromUrl(Url);
			}
			return Path.ChangeExtension(text, ".wsdl");
		}
	}

	public ContractReference()
	{
	}

	public ContractReference(string href)
	{
		Ref = href;
	}

	public ContractReference(string href, string docRef)
	{
		Ref = href;
		DocRef = docRef;
	}

	internal override void LoadExternals(Hashtable loadedExternals)
	{
		ServiceDescription serviceDescription = null;
		try
		{
			serviceDescription = Contract;
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
				Tracing.ExceptionCatch(TraceEventType.Warning, this, "LoadExternals", ex);
			}
		}
		if (serviceDescription == null)
		{
			return;
		}
		foreach (XmlSchema schema in Contract.Types.Schemas)
		{
			SchemaReference.LoadExternals(schema, Url, ClientProtocol, loadedExternals);
		}
	}

	public override void WriteDocument(object document, Stream stream)
	{
		((ServiceDescription)document).Write(new StreamWriter(stream, new UTF8Encoding(encoderShouldEmitUTF8Identifier: false)));
	}

	public override object ReadDocument(Stream stream)
	{
		return ServiceDescription.Read(stream, validate: true);
	}

	protected internal override void Resolve(string contentType, Stream stream)
	{
		if (ContentType.IsHtml(contentType))
		{
			throw new InvalidContentTypeException(Res.GetString("WebInvalidContentType", contentType), contentType);
		}
		ServiceDescription serviceDescription = ClientProtocol.Documents[Url] as ServiceDescription;
		if (serviceDescription == null)
		{
			serviceDescription = ServiceDescription.Read(stream, validate: true);
			serviceDescription.RetrievalUrl = Url;
			ClientProtocol.Documents[Url] = serviceDescription;
		}
		ClientProtocol.References[Url] = this;
		ArrayList arrayList = new ArrayList();
		foreach (Import import in serviceDescription.Imports)
		{
			if (import.Location != null)
			{
				arrayList.Add(import.Location);
			}
		}
		foreach (XmlSchema schema in serviceDescription.Types.Schemas)
		{
			foreach (XmlSchemaExternal include in schema.Includes)
			{
				if (include.SchemaLocation != null && include.SchemaLocation.Length > 0)
				{
					arrayList.Add(include.SchemaLocation);
				}
			}
		}
		foreach (string item in arrayList)
		{
			string url = DiscoveryReference.UriToString(Url, item);
			if (ClientProtocol.Documents[url] != null)
			{
				continue;
			}
			string url2 = url;
			try
			{
				stream = ClientProtocol.Download(ref url, ref contentType);
				try
				{
					if (ClientProtocol.Documents[url] != null)
					{
						continue;
					}
					XmlTextReader xmlTextReader = new XmlTextReader(new StreamReader(stream, RequestResponseUtils.GetEncoding(contentType)));
					xmlTextReader.WhitespaceHandling = WhitespaceHandling.Significant;
					xmlTextReader.XmlResolver = null;
					xmlTextReader.DtdProcessing = DtdProcessing.Prohibit;
					if (ServiceDescription.CanRead(xmlTextReader))
					{
						ServiceDescription serviceDescription2 = ServiceDescription.Read(xmlTextReader, validate: true);
						serviceDescription2.RetrievalUrl = url;
						ClientProtocol.Documents[url] = serviceDescription2;
						ContractReference contractReference = new ContractReference(url, null);
						contractReference.ClientProtocol = ClientProtocol;
						try
						{
							contractReference.Resolve(contentType, stream);
						}
						catch (Exception ex)
						{
							if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
							{
								throw;
							}
							contractReference.Url = url2;
							if (Tracing.On)
							{
								Tracing.ExceptionCatch(TraceEventType.Warning, this, "Resolve", ex);
							}
						}
					}
					else
					{
						if (!xmlTextReader.IsStartElement("schema", "http://www.w3.org/2001/XMLSchema"))
						{
							continue;
						}
						ClientProtocol.Documents[url] = XmlSchema.Read(xmlTextReader, null);
						SchemaReference schemaReference = new SchemaReference(url);
						schemaReference.ClientProtocol = ClientProtocol;
						try
						{
							schemaReference.Resolve(contentType, stream);
						}
						catch (Exception ex2)
						{
							if (ex2 is ThreadAbortException || ex2 is StackOverflowException || ex2 is OutOfMemoryException)
							{
								throw;
							}
							schemaReference.Url = url2;
							if (Tracing.On)
							{
								Tracing.ExceptionCatch(TraceEventType.Warning, this, "Resolve", ex2);
							}
						}
						continue;
					}
				}
				finally
				{
					stream.Close();
				}
			}
			catch (Exception ex3)
			{
				if (ex3 is ThreadAbortException || ex3 is StackOverflowException || ex3 is OutOfMemoryException)
				{
					throw;
				}
				throw new InvalidDocumentContentsException(Res.GetString("TheWSDLDocumentContainsLinksThatCouldNotBeResolved", url), ex3);
			}
		}
	}
}
