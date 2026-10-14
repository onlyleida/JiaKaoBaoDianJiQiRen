namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Property)]
public sealed class TemplateInstanceAttribute : Attribute
{
	public static readonly TemplateInstanceAttribute Multiple = new TemplateInstanceAttribute(TemplateInstance.Multiple);

	public static readonly TemplateInstanceAttribute Single = new TemplateInstanceAttribute(TemplateInstance.Single);

	public static readonly TemplateInstanceAttribute Default = Multiple;

	private TemplateInstance _instances;

	public TemplateInstance Instances => _instances;

	public TemplateInstanceAttribute(TemplateInstance instances)
	{
		_instances = instances;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is TemplateInstanceAttribute templateInstanceAttribute)
		{
			return templateInstanceAttribute.Instances == Instances;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return _instances.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
