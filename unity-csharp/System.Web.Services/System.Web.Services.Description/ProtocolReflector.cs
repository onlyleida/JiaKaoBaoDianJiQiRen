using System.Collections;
using System.Collections.Generic;
using System.Security.Permissions;
using System.Web.Services.Protocols;
using System.Xml;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public abstract class ProtocolReflector
{
	private class ReflectedBinding
	{
		public WebServiceBindingAttribute bindingAttr;

		public ArrayList methodList;

		internal ReflectedBinding()
		{
		}

		internal ReflectedBinding(WebServiceBindingAttribute bindingAttr)
		{
			this.bindingAttr = bindingAttr;
		}
	}

	private ServiceDescriptionReflector reflector;

	private LogicalMethodInfo method;

	private Operation operation;

	private OperationBinding operationBinding;

	private Port port;

	private PortType portType;

	private Binding binding;

	private WebMethodAttribute methodAttr;

	private Message inputMessage;

	private Message outputMessage;

	private MessageCollection headerMessages;

	private ServiceDescription bindingServiceDescription;

	private CodeIdentifiers portNames;

	private bool emptyBinding;

	internal bool IsEmptyBinding => emptyBinding;

	public Service Service => reflector.Service;

	public ServiceDescription ServiceDescription => reflector.ServiceDescription;

	public ServiceDescriptionCollection ServiceDescriptions => reflector.ServiceDescriptions;

	internal List<Action<Uri>> UriFixups => reflector.UriFixups;

	public XmlSchemas Schemas => reflector.Schemas;

	public XmlSchemaExporter SchemaExporter => reflector.SchemaExporter;

	public XmlReflectionImporter ReflectionImporter => reflector.ReflectionImporter;

	public string DefaultNamespace => reflector.ServiceAttribute.Namespace;

	public string ServiceUrl => reflector.ServiceUrl;

	public Type ServiceType => reflector.ServiceType;

	public LogicalMethodInfo Method => method;

	public Binding Binding => binding;

	public PortType PortType => portType;

	public Port Port => port;

	public Operation Operation => operation;

	public OperationBinding OperationBinding => operationBinding;

	public WebMethodAttribute MethodAttribute => methodAttr;

	public LogicalMethodInfo[] Methods => reflector.Methods;

	internal Hashtable ReflectionContext => reflector.ReflectionContext;

	public Message InputMessage
	{
		get
		{
			if (inputMessage == null)
			{
				string text = XmlConvert.EncodeLocalName((methodAttr.MessageName.Length == 0) ? Method.Name : methodAttr.MessageName);
				bool flag = text != Method.Name;
				inputMessage = new Message();
				inputMessage.Name = text + ProtocolName + "In";
				OperationInput operationInput = new OperationInput();
				if (flag)
				{
					operationInput.Name = text;
				}
				operationInput.Message = new XmlQualifiedName(inputMessage.Name, bindingServiceDescription.TargetNamespace);
				operation.Messages.Add(operationInput);
				OperationBinding.Input = new InputBinding();
				if (flag)
				{
					OperationBinding.Input.Name = text;
				}
			}
			return inputMessage;
		}
	}

	public Message OutputMessage
	{
		get
		{
			if (outputMessage == null)
			{
				string text = XmlConvert.EncodeLocalName((methodAttr.MessageName.Length == 0) ? Method.Name : methodAttr.MessageName);
				bool flag = text != Method.Name;
				outputMessage = new Message();
				outputMessage.Name = text + ProtocolName + "Out";
				OperationOutput operationOutput = new OperationOutput();
				if (flag)
				{
					operationOutput.Name = text;
				}
				operationOutput.Message = new XmlQualifiedName(outputMessage.Name, bindingServiceDescription.TargetNamespace);
				operation.Messages.Add(operationOutput);
				OperationBinding.Output = new OutputBinding();
				if (flag)
				{
					OperationBinding.Output.Name = text;
				}
			}
			return outputMessage;
		}
	}

	public MessageCollection HeaderMessages
	{
		get
		{
			if (headerMessages == null)
			{
				headerMessages = new MessageCollection(bindingServiceDescription);
			}
			return headerMessages;
		}
	}

	internal virtual WsiProfiles ConformsTo => WsiProfiles.None;

	public abstract string ProtocolName { get; }

	internal void Initialize(ServiceDescriptionReflector reflector)
	{
		this.reflector = reflector;
	}

	private void MoveToMethod(LogicalMethodInfo method)
	{
		this.method = method;
		methodAttr = method.MethodAttribute;
	}

	internal void Reflect()
	{
		emptyBinding = false;
		Hashtable hashtable = new Hashtable();
		Hashtable hashtable2 = new Hashtable();
		for (int i = 0; i < reflector.Methods.Length; i++)
		{
			MoveToMethod(reflector.Methods[i]);
			string text = ReflectMethodBinding();
			if (text == null)
			{
				text = string.Empty;
			}
			ReflectedBinding reflectedBinding = (ReflectedBinding)hashtable2[text];
			if (reflectedBinding == null)
			{
				reflectedBinding = new ReflectedBinding();
				reflectedBinding.bindingAttr = WebServiceBindingReflector.GetAttribute(method, text);
				if (reflectedBinding.bindingAttr == null || (text.Length == 0 && reflectedBinding.bindingAttr.Location.Length > 0))
				{
					reflectedBinding.bindingAttr = new WebServiceBindingAttribute();
				}
				hashtable2.Add(text, reflectedBinding);
			}
			if (reflectedBinding.bindingAttr.Location.Length == 0)
			{
				if (reflectedBinding.methodList == null)
				{
					reflectedBinding.methodList = new ArrayList();
				}
				reflectedBinding.methodList.Add(method);
				hashtable[reflectedBinding.bindingAttr.Name] = method;
			}
			else
			{
				AddImport(reflectedBinding.bindingAttr.Namespace, reflectedBinding.bindingAttr.Location);
			}
		}
		foreach (ReflectedBinding value in hashtable2.Values)
		{
			ReflectBinding(value);
		}
		if (hashtable2.Count == 0)
		{
			emptyBinding = true;
			ReflectedBinding reflectedBinding3 = null;
			object[] customAttributes = ServiceType.GetCustomAttributes(typeof(WebServiceBindingAttribute), inherit: false);
			for (int j = 0; j < customAttributes.Length; j++)
			{
				WebServiceBindingAttribute webServiceBindingAttribute = (WebServiceBindingAttribute)customAttributes[j];
				if (hashtable[webServiceBindingAttribute.Name] == null)
				{
					if (reflectedBinding3 != null)
					{
						reflectedBinding3 = null;
						break;
					}
					reflectedBinding3 = new ReflectedBinding(webServiceBindingAttribute);
				}
			}
			if (reflectedBinding3 != null)
			{
				ReflectBinding(reflectedBinding3);
			}
		}
		Type[] interfaces = ServiceType.GetInterfaces();
		for (int k = 0; k < interfaces.Length; k++)
		{
			object[] customAttributes2 = interfaces[k].GetCustomAttributes(typeof(WebServiceBindingAttribute), inherit: false);
			for (int l = 0; l < customAttributes2.Length; l++)
			{
				WebServiceBindingAttribute webServiceBindingAttribute2 = (WebServiceBindingAttribute)customAttributes2[l];
				if (hashtable[webServiceBindingAttribute2.Name] == null)
				{
					ReflectBinding(new ReflectedBinding(webServiceBindingAttribute2));
				}
			}
		}
		ReflectDescription();
	}

	private void AddImport(string ns, string location)
	{
		foreach (Import import3 in ServiceDescription.Imports)
		{
			if (import3.Namespace == ns && import3.Location == location)
			{
				return;
			}
		}
		Import import2 = new Import();
		import2.Namespace = ns;
		import2.Location = location;
		ServiceDescription.Imports.Add(import2);
	}

	public ServiceDescription GetServiceDescription(string ns)
	{
		ServiceDescription serviceDescription = ServiceDescriptions[ns];
		if (serviceDescription == null)
		{
			serviceDescription = new ServiceDescription();
			serviceDescription.TargetNamespace = ns;
			ServiceDescriptions.Add(serviceDescription);
		}
		return serviceDescription;
	}

	private void ReflectBinding(ReflectedBinding reflectedBinding)
	{
		string text = XmlConvert.EncodeLocalName(reflectedBinding.bindingAttr.Name);
		string text2 = reflectedBinding.bindingAttr.Namespace;
		if (text.Length == 0)
		{
			text = Service.Name + ProtocolName;
		}
		if (text2.Length == 0)
		{
			text2 = ServiceDescription.TargetNamespace;
		}
		WsiProfiles wsiProfiles = WsiProfiles.None;
		if (reflectedBinding.bindingAttr.Location.Length > 0)
		{
			portType = null;
			this.binding = null;
		}
		else
		{
			bindingServiceDescription = GetServiceDescription(text2);
			CodeIdentifiers codeIdentifiers = new CodeIdentifiers();
			foreach (Binding binding in bindingServiceDescription.Bindings)
			{
				codeIdentifiers.AddReserved(binding.Name);
			}
			text = codeIdentifiers.AddUnique(text, this.binding);
			portType = new PortType();
			this.binding = new Binding();
			portType.Name = text;
			this.binding.Name = text;
			this.binding.Type = new XmlQualifiedName(portType.Name, text2);
			wsiProfiles = reflectedBinding.bindingAttr.ConformsTo & ConformsTo;
			if (reflectedBinding.bindingAttr.EmitConformanceClaims && wsiProfiles != WsiProfiles.None)
			{
				ServiceDescription.AddConformanceClaims(this.binding.GetDocumentationElement(), wsiProfiles);
			}
			bindingServiceDescription.Bindings.Add(this.binding);
			bindingServiceDescription.PortTypes.Add(portType);
		}
		if (portNames == null)
		{
			portNames = new CodeIdentifiers();
			foreach (Port port in Service.Ports)
			{
				portNames.AddReserved(port.Name);
			}
		}
		this.port = new Port();
		this.port.Binding = new XmlQualifiedName(text, text2);
		this.port.Name = portNames.AddUnique(text, this.port);
		Service.Ports.Add(this.port);
		BeginClass();
		if (reflectedBinding.methodList != null && reflectedBinding.methodList.Count > 0)
		{
			foreach (LogicalMethodInfo method in reflectedBinding.methodList)
			{
				MoveToMethod(method);
				operation = new Operation();
				operation.Name = XmlConvert.EncodeLocalName(method.Name);
				if (methodAttr.Description != null && methodAttr.Description.Length > 0)
				{
					operation.Documentation = methodAttr.Description;
				}
				operationBinding = new OperationBinding();
				operationBinding.Name = operation.Name;
				inputMessage = null;
				outputMessage = null;
				headerMessages = null;
				if (!ReflectMethod())
				{
					continue;
				}
				if (inputMessage != null)
				{
					bindingServiceDescription.Messages.Add(inputMessage);
				}
				if (outputMessage != null)
				{
					bindingServiceDescription.Messages.Add(outputMessage);
				}
				if (headerMessages != null)
				{
					foreach (Message headerMessage in headerMessages)
					{
						bindingServiceDescription.Messages.Add(headerMessage);
					}
				}
				this.binding.Operations.Add(operationBinding);
				portType.Operations.Add(operation);
			}
		}
		if (this.binding != null && wsiProfiles == WsiProfiles.BasicProfile1_1 && ProtocolName == "Soap")
		{
			BasicProfileViolationCollection basicProfileViolationCollection = new BasicProfileViolationCollection();
			WebServicesInteroperability.AnalyzeBinding(this.binding, bindingServiceDescription, ServiceDescriptions, basicProfileViolationCollection);
			if (basicProfileViolationCollection.Count > 0)
			{
				throw new InvalidOperationException(Res.GetString("WebWsiViolation", ServiceType.FullName, basicProfileViolationCollection.ToString()));
			}
		}
		EndClass();
	}

	protected virtual void BeginClass()
	{
	}

	protected abstract bool ReflectMethod();

	protected virtual string ReflectMethodBinding()
	{
		return string.Empty;
	}

	protected virtual void EndClass()
	{
	}

	protected virtual void ReflectDescription()
	{
	}
}
