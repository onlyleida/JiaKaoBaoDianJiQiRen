using System.Collections;
using System.Reflection;
using System.Web.Services.Configuration;
using System.Web.Services.Protocols;
using System.Xml;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

internal class SoapProtocolReflector : ProtocolReflector
{
	private ArrayList mappings = new ArrayList();

	private SoapExtensionReflector[] extensions;

	private SoapReflectedMethod soapMethod;

	internal override WsiProfiles ConformsTo => WsiProfiles.BasicProfile1_1;

	public override string ProtocolName => "Soap";

	internal SoapReflectedMethod SoapMethod => soapMethod;

	internal SoapReflectionImporter SoapImporter
	{
		get
		{
			SoapReflectionImporter soapReflectionImporter = ReflectionContext[typeof(SoapReflectionImporter)] as SoapReflectionImporter;
			if (soapReflectionImporter == null)
			{
				soapReflectionImporter = SoapReflector.CreateSoapImporter(DefaultNamespace, SoapReflector.ServiceDefaultIsEncoded(ServiceType));
				ReflectionContext[typeof(SoapReflectionImporter)] = soapReflectionImporter;
			}
			return soapReflectionImporter;
		}
	}

	internal SoapSchemaExporter SoapExporter
	{
		get
		{
			SoapSchemaExporter soapSchemaExporter = ReflectionContext[typeof(SoapSchemaExporter)] as SoapSchemaExporter;
			if (soapSchemaExporter == null)
			{
				soapSchemaExporter = new SoapSchemaExporter(ServiceDescription.Types.Schemas);
				ReflectionContext[typeof(SoapSchemaExporter)] = soapSchemaExporter;
			}
			return soapSchemaExporter;
		}
	}

	protected override bool ReflectMethod()
	{
		soapMethod = ReflectionContext[Method] as SoapReflectedMethod;
		if (soapMethod == null)
		{
			soapMethod = SoapReflector.ReflectMethod(Method, client: false, ReflectionImporter, SoapImporter, DefaultNamespace);
			ReflectionContext[Method] = soapMethod;
			soapMethod.portType = ((Binding != null) ? Binding.Type : null);
		}
		_ = Method.MethodAttribute;
		OperationBinding.Extensions.Add(CreateSoapOperationBinding((!soapMethod.rpc) ? SoapBindingStyle.Document : SoapBindingStyle.Rpc, soapMethod.action));
		CreateMessage(soapMethod.rpc, soapMethod.use, soapMethod.paramStyle, InputMessage, OperationBinding.Input, soapMethod.requestMappings);
		if (!soapMethod.oneWay)
		{
			CreateMessage(soapMethod.rpc, soapMethod.use, soapMethod.paramStyle, OutputMessage, OperationBinding.Output, soapMethod.responseMappings);
		}
		CreateHeaderMessages(soapMethod.name, soapMethod.use, soapMethod.inHeaderMappings, soapMethod.outHeaderMappings, soapMethod.headers, soapMethod.rpc);
		if (soapMethod.rpc && soapMethod.use == SoapBindingUse.Encoded && soapMethod.methodInfo.OutParameters.Length != 0)
		{
			Operation.ParameterOrder = GetParameterOrder(soapMethod.methodInfo);
		}
		AllowExtensionsToReflectMethod();
		return true;
	}

	protected override void ReflectDescription()
	{
		AllowExtensionsToReflectDescription();
	}

	private void CreateHeaderMessages(string methodName, SoapBindingUse use, XmlMembersMapping inHeaderMappings, XmlMembersMapping outHeaderMappings, SoapReflectedHeader[] headers, bool rpc)
	{
		if (use == SoapBindingUse.Encoded)
		{
			SoapExporter.ExportMembersMapping(inHeaderMappings, exportEnclosingType: false);
			if (outHeaderMappings != null)
			{
				SoapExporter.ExportMembersMapping(outHeaderMappings, exportEnclosingType: false);
			}
		}
		else
		{
			SchemaExporter.ExportMembersMapping(inHeaderMappings);
			if (outHeaderMappings != null)
			{
				SchemaExporter.ExportMembersMapping(outHeaderMappings);
			}
		}
		CodeIdentifiers codeIdentifiers = new CodeIdentifiers();
		int num = 0;
		int num2 = 0;
		foreach (SoapReflectedHeader soapReflectedHeader in headers)
		{
			if (!soapReflectedHeader.custom)
			{
				continue;
			}
			XmlMemberMapping xmlMemberMapping;
			if ((soapReflectedHeader.direction & SoapHeaderDirection.In) != 0)
			{
				xmlMemberMapping = inHeaderMappings[num++];
				if (soapReflectedHeader.direction != SoapHeaderDirection.In)
				{
					num2++;
				}
			}
			else
			{
				xmlMemberMapping = outHeaderMappings[num2++];
			}
			MessagePart messagePart = new MessagePart();
			messagePart.Name = xmlMemberMapping.XsdElementName;
			if (use == SoapBindingUse.Encoded)
			{
				messagePart.Type = new XmlQualifiedName(xmlMemberMapping.TypeName, xmlMemberMapping.TypeNamespace);
			}
			else
			{
				messagePart.Element = new XmlQualifiedName(xmlMemberMapping.XsdElementName, xmlMemberMapping.Namespace);
			}
			Message message = new Message();
			message.Name = codeIdentifiers.AddUnique(methodName + messagePart.Name, message);
			message.Parts.Add(messagePart);
			HeaderMessages.Add(message);
			ServiceDescriptionFormatExtension extension = CreateSoapHeaderBinding(new XmlQualifiedName(message.Name, Binding.ServiceDescription.TargetNamespace), messagePart.Name, rpc ? xmlMemberMapping.Namespace : null, use);
			if ((soapReflectedHeader.direction & SoapHeaderDirection.In) != 0)
			{
				OperationBinding.Input.Extensions.Add(extension);
			}
			if ((soapReflectedHeader.direction & SoapHeaderDirection.Out) != 0)
			{
				OperationBinding.Output.Extensions.Add(extension);
			}
			if ((soapReflectedHeader.direction & SoapHeaderDirection.Fault) != 0)
			{
				if (soapMethod.IsClaimsConformance)
				{
					throw new InvalidOperationException(Res.GetString("BPConformanceHeaderFault", soapMethod.methodInfo.ToString(), soapMethod.methodInfo.DeclaringType.FullName, "Direction", typeof(SoapHeaderDirection).Name, SoapHeaderDirection.Fault.ToString()));
				}
				OperationBinding.Output.Extensions.Add(extension);
			}
		}
	}

	private void CreateMessage(bool rpc, SoapBindingUse use, SoapParameterStyle paramStyle, Message message, MessageBinding messageBinding, XmlMembersMapping members)
	{
		bool flag = paramStyle != SoapParameterStyle.Bare;
		if (use == SoapBindingUse.Encoded)
		{
			CreateEncodedMessage(message, messageBinding, members, flag && !rpc);
		}
		else
		{
			CreateLiteralMessage(message, messageBinding, members, flag && !rpc, rpc);
		}
	}

	private void CreateEncodedMessage(Message message, MessageBinding messageBinding, XmlMembersMapping members, bool wrapped)
	{
		SoapExporter.ExportMembersMapping(members, wrapped);
		if (wrapped)
		{
			MessagePart messagePart = new MessagePart();
			messagePart.Name = "parameters";
			messagePart.Type = new XmlQualifiedName(members.TypeName, members.TypeNamespace);
			message.Parts.Add(messagePart);
		}
		else
		{
			for (int i = 0; i < members.Count; i++)
			{
				XmlMemberMapping xmlMemberMapping = members[i];
				MessagePart messagePart2 = new MessagePart();
				messagePart2.Name = xmlMemberMapping.XsdElementName;
				messagePart2.Type = new XmlQualifiedName(xmlMemberMapping.TypeName, xmlMemberMapping.TypeNamespace);
				message.Parts.Add(messagePart2);
			}
		}
		messageBinding.Extensions.Add(CreateSoapBodyBinding(SoapBindingUse.Encoded, members.Namespace));
	}

	private void CreateLiteralMessage(Message message, MessageBinding messageBinding, XmlMembersMapping members, bool wrapped, bool rpc)
	{
		if (members.Count == 1 && members[0].Any && members[0].ElementName.Length == 0 && !wrapped)
		{
			string name = SchemaExporter.ExportAnyType(members[0].Namespace);
			MessagePart messagePart = new MessagePart();
			messagePart.Name = members[0].MemberName;
			messagePart.Type = new XmlQualifiedName(name, members[0].Namespace);
			message.Parts.Add(messagePart);
		}
		else
		{
			SchemaExporter.ExportMembersMapping(members, !rpc);
			if (wrapped)
			{
				MessagePart messagePart2 = new MessagePart();
				messagePart2.Name = "parameters";
				messagePart2.Element = new XmlQualifiedName(members.XsdElementName, members.Namespace);
				message.Parts.Add(messagePart2);
			}
			else
			{
				for (int i = 0; i < members.Count; i++)
				{
					XmlMemberMapping xmlMemberMapping = members[i];
					MessagePart messagePart3 = new MessagePart();
					if (rpc)
					{
						if (xmlMemberMapping.TypeName == null || xmlMemberMapping.TypeName.Length == 0)
						{
							throw new InvalidOperationException(Res.GetString("WsdlGenRpcLitAnonimousType", Method.DeclaringType.Name, Method.Name, xmlMemberMapping.MemberName));
						}
						messagePart3.Name = xmlMemberMapping.XsdElementName;
						messagePart3.Type = new XmlQualifiedName(xmlMemberMapping.TypeName, xmlMemberMapping.TypeNamespace);
					}
					else
					{
						messagePart3.Name = XmlConvert.EncodeLocalName(xmlMemberMapping.MemberName);
						messagePart3.Element = new XmlQualifiedName(xmlMemberMapping.XsdElementName, xmlMemberMapping.Namespace);
					}
					message.Parts.Add(messagePart3);
				}
			}
		}
		messageBinding.Extensions.Add(CreateSoapBodyBinding(SoapBindingUse.Literal, rpc ? members.Namespace : null));
	}

	private static string[] GetParameterOrder(LogicalMethodInfo methodInfo)
	{
		ParameterInfo[] parameters = methodInfo.Parameters;
		string[] array = new string[parameters.Length];
		for (int i = 0; i < parameters.Length; i++)
		{
			array[i] = parameters[i].Name;
		}
		return array;
	}

	protected override string ReflectMethodBinding()
	{
		return SoapReflector.GetSoapMethodBinding(Method);
	}

	protected override void BeginClass()
	{
		if (Binding != null)
		{
			SoapBindingStyle style = ((!(SoapReflector.GetSoapServiceAttribute(ServiceType) is SoapRpcServiceAttribute)) ? SoapBindingStyle.Document : SoapBindingStyle.Rpc);
			Binding.Extensions.Add(CreateSoapBinding(style));
			SoapReflector.IncludeTypes(Methods, SoapImporter);
		}
		Port.Extensions.Add(CreateSoapAddressBinding(ServiceUrl));
	}

	private void AllowExtensionsToReflectMethod()
	{
		if (extensions == null)
		{
			TypeElementCollection soapExtensionReflectorTypes = WebServicesSection.Current.SoapExtensionReflectorTypes;
			extensions = new SoapExtensionReflector[soapExtensionReflectorTypes.Count];
			for (int i = 0; i < extensions.Length; i++)
			{
				SoapExtensionReflector soapExtensionReflector = (SoapExtensionReflector)Activator.CreateInstance(soapExtensionReflectorTypes[i].Type);
				soapExtensionReflector.ReflectionContext = this;
				extensions[i] = soapExtensionReflector;
			}
		}
		SoapExtensionReflector[] array = extensions;
		for (int j = 0; j < array.Length; j++)
		{
			array[j].ReflectMethod();
		}
	}

	private void AllowExtensionsToReflectDescription()
	{
		if (extensions == null)
		{
			TypeElementCollection soapExtensionReflectorTypes = WebServicesSection.Current.SoapExtensionReflectorTypes;
			extensions = new SoapExtensionReflector[soapExtensionReflectorTypes.Count];
			for (int i = 0; i < extensions.Length; i++)
			{
				SoapExtensionReflector soapExtensionReflector = (SoapExtensionReflector)Activator.CreateInstance(soapExtensionReflectorTypes[i].Type);
				soapExtensionReflector.ReflectionContext = this;
				extensions[i] = soapExtensionReflector;
			}
		}
		SoapExtensionReflector[] array = extensions;
		for (int j = 0; j < array.Length; j++)
		{
			array[j].ReflectDescription();
		}
	}

	protected virtual SoapBinding CreateSoapBinding(SoapBindingStyle style)
	{
		return new SoapBinding
		{
			Transport = "http://schemas.xmlsoap.org/soap/http",
			Style = style
		};
	}

	protected virtual SoapAddressBinding CreateSoapAddressBinding(string serviceUrl)
	{
		SoapAddressBinding soapAddress = new SoapAddressBinding();
		soapAddress.Location = serviceUrl;
		if (UriFixups != null)
		{
			UriFixups.Add((Uri current) =>
			{
				soapAddress.Location = DiscoveryServerType.CombineUris(current, soapAddress.Location);
			});
		}
		return soapAddress;
	}

	protected virtual SoapOperationBinding CreateSoapOperationBinding(SoapBindingStyle style, string action)
	{
		return new SoapOperationBinding
		{
			SoapAction = action,
			Style = style
		};
	}

	protected virtual SoapBodyBinding CreateSoapBodyBinding(SoapBindingUse use, string ns)
	{
		SoapBodyBinding soapBodyBinding = new SoapBodyBinding();
		soapBodyBinding.Use = use;
		if (use == SoapBindingUse.Encoded)
		{
			soapBodyBinding.Encoding = "http://schemas.xmlsoap.org/soap/encoding/";
		}
		soapBodyBinding.Namespace = ns;
		return soapBodyBinding;
	}

	protected virtual SoapHeaderBinding CreateSoapHeaderBinding(XmlQualifiedName message, string partName, SoapBindingUse use)
	{
		return CreateSoapHeaderBinding(message, partName, null, use);
	}

	protected virtual SoapHeaderBinding CreateSoapHeaderBinding(XmlQualifiedName message, string partName, string ns, SoapBindingUse use)
	{
		SoapHeaderBinding soapHeaderBinding = new SoapHeaderBinding();
		soapHeaderBinding.Message = message;
		soapHeaderBinding.Part = partName;
		soapHeaderBinding.Use = use;
		if (use == SoapBindingUse.Encoded)
		{
			soapHeaderBinding.Encoding = "http://schemas.xmlsoap.org/soap/encoding/";
			soapHeaderBinding.Namespace = ns;
		}
		return soapHeaderBinding;
	}
}
