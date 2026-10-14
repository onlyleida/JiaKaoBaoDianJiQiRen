using System.Xml;

namespace System.Web.Services.Description;

public sealed class ServiceDescriptionCollection : ServiceDescriptionBaseCollection
{
	public ServiceDescription this[int index]
	{
		get
		{
			return (ServiceDescription)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public ServiceDescription this[string ns] => (ServiceDescription)Table[ns];

	public ServiceDescriptionCollection()
		: base(null)
	{
	}

	public int Add(ServiceDescription serviceDescription)
	{
		return List.Add(serviceDescription);
	}

	public void Insert(int index, ServiceDescription serviceDescription)
	{
		List.Insert(index, serviceDescription);
	}

	public int IndexOf(ServiceDescription serviceDescription)
	{
		return List.IndexOf(serviceDescription);
	}

	public bool Contains(ServiceDescription serviceDescription)
	{
		return List.Contains(serviceDescription);
	}

	public void Remove(ServiceDescription serviceDescription)
	{
		List.Remove(serviceDescription);
	}

	public void CopyTo(ServiceDescription[] array, int index)
	{
		List.CopyTo(array, index);
	}

	protected override string GetKey(object value)
	{
		string targetNamespace = ((ServiceDescription)value).TargetNamespace;
		if (targetNamespace == null)
		{
			return string.Empty;
		}
		return targetNamespace;
	}

	private Exception ItemNotFound(XmlQualifiedName name, string type)
	{
		return new Exception(Res.GetString("WebDescriptionMissingItem", type, name.Name, name.Namespace));
	}

	public Message GetMessage(XmlQualifiedName name)
	{
		ServiceDescription serviceDescription = GetServiceDescription(name);
		Message message = null;
		while (message == null && serviceDescription != null)
		{
			message = serviceDescription.Messages[name.Name];
			serviceDescription = serviceDescription.Next;
		}
		if (message == null)
		{
			throw ItemNotFound(name, "message");
		}
		return message;
	}

	public PortType GetPortType(XmlQualifiedName name)
	{
		ServiceDescription serviceDescription = GetServiceDescription(name);
		PortType portType = null;
		while (portType == null && serviceDescription != null)
		{
			portType = serviceDescription.PortTypes[name.Name];
			serviceDescription = serviceDescription.Next;
		}
		if (portType == null)
		{
			throw ItemNotFound(name, "message");
		}
		return portType;
	}

	public Service GetService(XmlQualifiedName name)
	{
		ServiceDescription serviceDescription = GetServiceDescription(name);
		Service service = null;
		while (service == null && serviceDescription != null)
		{
			service = serviceDescription.Services[name.Name];
			serviceDescription = serviceDescription.Next;
		}
		if (service == null)
		{
			throw ItemNotFound(name, "service");
		}
		return service;
	}

	public Binding GetBinding(XmlQualifiedName name)
	{
		ServiceDescription serviceDescription = GetServiceDescription(name);
		Binding binding = null;
		while (binding == null && serviceDescription != null)
		{
			binding = serviceDescription.Bindings[name.Name];
			serviceDescription = serviceDescription.Next;
		}
		if (binding == null)
		{
			throw ItemNotFound(name, "binding");
		}
		return binding;
	}

	private ServiceDescription GetServiceDescription(XmlQualifiedName name)
	{
		ServiceDescription serviceDescription = this[name.Namespace];
		if (serviceDescription == null)
		{
			throw new ArgumentException(Res.GetString("WebDescriptionMissing", name.ToString(), name.Namespace), "name");
		}
		return serviceDescription;
	}

	protected override void SetParent(object value, object parent)
	{
		((ServiceDescription)value).SetParent((ServiceDescriptionCollection)parent);
	}

	protected override void OnInsertComplete(int index, object value)
	{
		string key = GetKey(value);
		if (key != null)
		{
			_ = (ServiceDescription)Table[key];
			((ServiceDescription)value).Next = (ServiceDescription)Table[key];
			Table[key] = value;
		}
		SetParent(value, this);
	}
}
