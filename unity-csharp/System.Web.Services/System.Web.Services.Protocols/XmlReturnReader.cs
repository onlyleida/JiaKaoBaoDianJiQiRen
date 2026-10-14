using System.IO;
using System.Net;
using System.Text;
using System.Web.Services.Diagnostics;
using System.Xml.Serialization;

namespace System.Web.Services.Protocols;

public class XmlReturnReader : MimeReturnReader
{
	private XmlSerializer xmlSerializer;

	public override void Initialize(object o)
	{
		xmlSerializer = (XmlSerializer)o;
	}

	public override object[] GetInitializers(LogicalMethodInfo[] methodInfos)
	{
		return XmlReturn.GetInitializers(methodInfos);
	}

	public override object GetInitializer(LogicalMethodInfo methodInfo)
	{
		return XmlReturn.GetInitializer(methodInfo);
	}

	public override object Read(WebResponse response, Stream responseStream)
	{
		try
		{
			if (response == null)
			{
				throw new ArgumentNullException("response");
			}
			if (!ContentType.MatchesBase(response.ContentType, "text/xml"))
			{
				throw new InvalidOperationException(Res.GetString("WebResultNotXml"));
			}
			Encoding encoding = RequestResponseUtils.GetEncoding(response.ContentType);
			StreamReader streamReader = new StreamReader(responseStream, encoding, detectEncodingFromByteOrderMarks: true);
			TraceMethod caller = (Tracing.On ? new TraceMethod(this, "Read") : null);
			if (Tracing.On)
			{
				Tracing.Enter(Tracing.TraceId("TraceReadResponse"), caller, new TraceMethod(xmlSerializer, "Deserialize", streamReader));
			}
			object result = xmlSerializer.Deserialize(streamReader);
			if (Tracing.On)
			{
				Tracing.Exit(Tracing.TraceId("TraceReadResponse"), caller);
			}
			return result;
		}
		finally
		{
			response.Close();
		}
	}
}
