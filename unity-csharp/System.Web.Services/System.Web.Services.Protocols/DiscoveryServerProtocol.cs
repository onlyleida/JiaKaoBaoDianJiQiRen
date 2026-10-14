using System.IO;
using System.Text;
using System.Web.Services.Description;
using System.Xml.Schema;

namespace System.Web.Services.Protocols;

internal sealed class DiscoveryServerProtocol : ServerProtocol
{
	private DiscoveryServerType serverType;

	private object syncRoot = new object();

	internal override ServerType ServerType => serverType;

	internal override bool IsOneWay => false;

	internal override LogicalMethodInfo MethodInfo => serverType.MethodInfo;

	internal override bool Initialize()
	{
		if ((serverType = (DiscoveryServerType)GetFromCache(typeof(DiscoveryServerProtocol), Type)) == null && (serverType = (DiscoveryServerType)GetFromCache(typeof(DiscoveryServerProtocol), Type, excludeSchemeHostPort: true)) == null)
		{
			lock (ServerProtocol.InternalSyncObject)
			{
				if ((serverType = (DiscoveryServerType)GetFromCache(typeof(DiscoveryServerProtocol), Type)) == null && (serverType = (DiscoveryServerType)GetFromCache(typeof(DiscoveryServerProtocol), Type, excludeSchemeHostPort: true)) == null)
				{
					bool flag = IsCacheUnderPressure(typeof(DiscoveryServerProtocol), Type);
					string uri = RuntimeUtils.EscapeUri(Request.Url);
					serverType = new DiscoveryServerType(Type, uri, flag);
					AddToCache(typeof(DiscoveryServerProtocol), Type, serverType, flag);
				}
			}
		}
		return true;
	}

	internal override object[] ReadParameters()
	{
		return new object[0];
	}

	internal override void WriteReturns(object[] returnValues, Stream outputStream)
	{
		string text = Request.QueryString["schema"];
		Encoding encoding = new UTF8Encoding(encoderShouldEmitUTF8Identifier: false);
		if (text != null)
		{
			XmlSchema xmlSchema = serverType.GetSchema(text) ?? throw new InvalidOperationException(Res.GetString("WebSchemaNotFound"));
			Response.ContentType = ContentType.Compose("text/xml", encoding);
			xmlSchema.Write(new StreamWriter(outputStream, encoding));
			return;
		}
		text = Request.QueryString["wsdl"];
		if (text != null)
		{
			ServiceDescription serviceDescription = serverType.GetServiceDescription(text);
			if (serviceDescription == null)
			{
				throw new InvalidOperationException(Res.GetString("ServiceDescriptionWasNotFound0"));
			}
			Response.ContentType = ContentType.Compose("text/xml", encoding);
			if (serverType.UriFixups == null)
			{
				serviceDescription.Write(new StreamWriter(outputStream, encoding));
				return;
			}
			lock (syncRoot)
			{
				RunUriFixups();
				serviceDescription.Write(new StreamWriter(outputStream, encoding));
				return;
			}
		}
		string text2 = Request.QueryString[null];
		if (text2 != null && string.Compare(text2, "wsdl", StringComparison.OrdinalIgnoreCase) == 0)
		{
			Response.ContentType = ContentType.Compose("text/xml", encoding);
			if (serverType.UriFixups == null)
			{
				serverType.Description.Write(new StreamWriter(outputStream, encoding));
				return;
			}
			lock (syncRoot)
			{
				RunUriFixups();
				serverType.Description.Write(new StreamWriter(outputStream, encoding));
				return;
			}
		}
		if (text2 != null && string.Compare(text2, "disco", StringComparison.OrdinalIgnoreCase) == 0)
		{
			Response.ContentType = ContentType.Compose("text/xml", encoding);
			if (serverType.UriFixups == null)
			{
				serverType.Disco.Write(new StreamWriter(outputStream, encoding));
				return;
			}
			lock (syncRoot)
			{
				RunUriFixups();
				serverType.Disco.Write(new StreamWriter(outputStream, encoding));
				return;
			}
		}
		throw new InvalidOperationException(Res.GetString("internalError0"));
	}

	internal override bool WriteException(Exception e, Stream outputStream)
	{
		Response.Clear();
		Response.ClearHeaders();
		Response.ContentType = ContentType.Compose("text/plain", Encoding.UTF8);
		Response.StatusCode = 500;
		Response.StatusDescription = HttpWorkerRequest.GetStatusDescription(Response.StatusCode);
		StreamWriter streamWriter = new StreamWriter(outputStream, new UTF8Encoding(encoderShouldEmitUTF8Identifier: false));
		streamWriter.WriteLine(GenerateFaultString(e, htmlEscapeMessage: true));
		streamWriter.Flush();
		return true;
	}

	internal void Discover()
	{
	}

	private void RunUriFixups()
	{
		foreach (Action<Uri> uriFixup in serverType.UriFixups)
		{
			uriFixup(Context.Request.Url);
		}
	}
}
