using System.Collections.Generic;
using System.Security.Permissions;
using System.Security.Policy;
using System.Web.Services.Description;
using System.Web.Services.Diagnostics;
using System.Xml.Serialization;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public sealed class SoapServerMethod
{
	internal LogicalMethodInfo methodInfo;

	internal XmlSerializer returnSerializer;

	internal XmlSerializer parameterSerializer;

	internal XmlSerializer inHeaderSerializer;

	internal XmlSerializer outHeaderSerializer;

	internal SoapHeaderMapping[] inHeaderMappings;

	internal SoapHeaderMapping[] outHeaderMappings;

	internal SoapReflectedExtension[] extensions;

	internal object[] extensionInitializers;

	internal string action;

	internal bool oneWay;

	internal bool rpc;

	internal SoapBindingUse use;

	internal SoapParameterStyle paramStyle;

	internal WsiProfiles wsiClaims;

	public LogicalMethodInfo MethodInfo => methodInfo;

	public XmlSerializer ReturnSerializer => returnSerializer;

	public XmlSerializer ParameterSerializer => parameterSerializer;

	public XmlSerializer InHeaderSerializer => inHeaderSerializer;

	public XmlSerializer OutHeaderSerializer => outHeaderSerializer;

	public SoapHeaderMapping[] InHeaderMappings => inHeaderMappings;

	public SoapHeaderMapping[] OutHeaderMappings => outHeaderMappings;

	public string Action => action;

	public bool OneWay => oneWay;

	public bool Rpc => rpc;

	public SoapBindingUse BindingUse => use;

	public SoapParameterStyle ParameterStyle => paramStyle;

	public WsiProfiles WsiClaims => wsiClaims;

	public SoapServerMethod()
	{
	}

	public SoapServerMethod(Type serverType, LogicalMethodInfo methodInfo)
	{
		this.methodInfo = methodInfo;
		string defaultNs = WebServiceReflector.GetAttribute(serverType).Namespace;
		bool serviceDefaultIsEncoded = SoapReflector.ServiceDefaultIsEncoded(serverType);
		SoapReflectionImporter soapReflectionImporter = SoapReflector.CreateSoapImporter(defaultNs, serviceDefaultIsEncoded);
		XmlReflectionImporter xmlReflectionImporter = SoapReflector.CreateXmlImporter(defaultNs, serviceDefaultIsEncoded);
		SoapReflector.IncludeTypes(methodInfo, soapReflectionImporter);
		WebMethodReflector.IncludeTypes(methodInfo, xmlReflectionImporter);
		SoapReflectedMethod soapMethod = SoapReflector.ReflectMethod(methodInfo, client: false, xmlReflectionImporter, soapReflectionImporter, defaultNs);
		ImportReflectedMethod(soapMethod);
		ImportSerializers(soapMethod, GetServerTypeEvidence(serverType));
		ImportHeaderSerializers(soapMethod);
	}

	[SecurityPermission(SecurityAction.Assert, ControlEvidence = true)]
	private Evidence GetServerTypeEvidence(Type type)
	{
		return type.Assembly.Evidence;
	}

	private List<XmlMapping> GetXmlMappingsForMethod(SoapReflectedMethod soapMethod)
	{
		List<XmlMapping> list = new List<XmlMapping>();
		list.Add(soapMethod.requestMappings);
		if (soapMethod.responseMappings != null)
		{
			list.Add(soapMethod.responseMappings);
		}
		list.Add(soapMethod.inHeaderMappings);
		if (soapMethod.outHeaderMappings != null)
		{
			list.Add(soapMethod.outHeaderMappings);
		}
		return list;
	}

	private void ImportReflectedMethod(SoapReflectedMethod soapMethod)
	{
		action = soapMethod.action;
		extensions = soapMethod.extensions;
		extensionInitializers = SoapReflectedExtension.GetInitializers(methodInfo, soapMethod.extensions);
		oneWay = soapMethod.oneWay;
		rpc = soapMethod.rpc;
		use = soapMethod.use;
		paramStyle = soapMethod.paramStyle;
		wsiClaims = ((soapMethod.binding != null) ? soapMethod.binding.ConformsTo : WsiProfiles.None);
	}

	private void ImportHeaderSerializers(SoapReflectedMethod soapMethod)
	{
		List<SoapHeaderMapping> list = new List<SoapHeaderMapping>();
		List<SoapHeaderMapping> list2 = new List<SoapHeaderMapping>();
		for (int i = 0; i < soapMethod.headers.Length; i++)
		{
			SoapHeaderMapping soapHeaderMapping = new SoapHeaderMapping();
			SoapReflectedHeader soapReflectedHeader = soapMethod.headers[i];
			soapHeaderMapping.memberInfo = soapReflectedHeader.memberInfo;
			soapHeaderMapping.repeats = soapReflectedHeader.repeats;
			soapHeaderMapping.custom = soapReflectedHeader.custom;
			soapHeaderMapping.direction = soapReflectedHeader.direction;
			soapHeaderMapping.headerType = soapReflectedHeader.headerType;
			if (soapHeaderMapping.direction == SoapHeaderDirection.In)
			{
				list.Add(soapHeaderMapping);
				continue;
			}
			if (soapHeaderMapping.direction == SoapHeaderDirection.Out)
			{
				list2.Add(soapHeaderMapping);
				continue;
			}
			list.Add(soapHeaderMapping);
			list2.Add(soapHeaderMapping);
		}
		inHeaderMappings = list.ToArray();
		if (outHeaderSerializer != null)
		{
			outHeaderMappings = list2.ToArray();
		}
	}

	private void ImportSerializers(SoapReflectedMethod soapMethod, Evidence serverEvidence)
	{
		XmlMapping[] array = GetXmlMappingsForMethod(soapMethod).ToArray();
		TraceMethod caller = (Tracing.On ? new TraceMethod(this, "ImportSerializers") : null);
		if (Tracing.On)
		{
			Tracing.Enter(Tracing.TraceId("TraceCreateSerializer"), caller, new TraceMethod(typeof(XmlSerializer), "FromMappings", array, serverEvidence));
		}
		XmlSerializer[] array2 = null;
		array2 = ((!AppDomain.CurrentDomain.IsHomogenous) ? XmlSerializer.FromMappings(array, serverEvidence) : XmlSerializer.FromMappings(array));
		if (Tracing.On)
		{
			Tracing.Exit(Tracing.TraceId("TraceCreateSerializer"), caller);
		}
		int num = 0;
		parameterSerializer = array2[num++];
		if (soapMethod.responseMappings != null)
		{
			returnSerializer = array2[num++];
		}
		inHeaderSerializer = array2[num++];
		if (soapMethod.outHeaderMappings != null)
		{
			outHeaderSerializer = array2[num++];
		}
	}
}
