using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TemplateBuilder : ControlBuilder, ITemplate
{
	private string text;

	private TemplateContainerAttribute containerAttribute;

	private TemplateInstanceAttribute instanceAttribute;

	private List<TemplateBinding> bindings;

	public virtual string Text
	{
		get
		{
			return text;
		}
		set
		{
			text = value;
		}
	}

	internal Type ContainerType
	{
		get
		{
			if (containerAttribute == null)
			{
				return null;
			}
			return containerAttribute.ContainerType;
		}
	}

	internal TemplateInstance? TemplateInstance
	{
		get
		{
			if (instanceAttribute == null)
			{
				return null;
			}
			return instanceAttribute.Instances;
		}
	}

	internal BindingDirection BindingDirection
	{
		get
		{
			if (containerAttribute == null)
			{
				return BindingDirection.TwoWay;
			}
			return containerAttribute.BindingDirection;
		}
	}

	internal ICollection Bindings => bindings;

	public TemplateBuilder()
	{
	}

	internal TemplateBuilder(ICustomAttributeProvider prov)
	{
		object[] customAttributes = prov.GetCustomAttributes(typeof(TemplateContainerAttribute), inherit: true);
		if (customAttributes.Length != 0)
		{
			containerAttribute = (TemplateContainerAttribute)customAttributes[0];
		}
		customAttributes = prov.GetCustomAttributes(typeof(TemplateInstanceAttribute), inherit: true);
		if (customAttributes.Length != 0)
		{
			instanceAttribute = (TemplateInstanceAttribute)customAttributes[0];
		}
	}

	internal void RegisterBoundProperty(Type controlType, string controlProperty, string controlId, string fieldName)
	{
		if (bindings == null)
		{
			bindings = new List<TemplateBinding>();
		}
		bindings.Add(new TemplateBinding(controlType, controlProperty, controlId, fieldName));
	}

	public override object BuildObject()
	{
		return base.BuildObject();
	}

	public override void Init(TemplateParser parser, ControlBuilder parentBuilder, Type type, string tagName, string ID, IDictionary attribs)
	{
		if (parser != null)
		{
			FileName = parser.InputFile;
		}
		base.Init(parser, parentBuilder, type, tagName, ID, attribs);
	}

	public virtual void InstantiateIn(Control container)
	{
		CreateChildren(container);
	}

	public override bool NeedsTagInnerText()
	{
		return false;
	}

	public override void SetTagInnerText(string text)
	{
		this.text = text;
	}
}
