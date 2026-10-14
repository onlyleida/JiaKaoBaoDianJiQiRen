namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Interface, AllowMultiple = false, Inherited = true)]
public sealed class ExtensibleModelBinderAttribute : Attribute
{
	public Type BinderType { get; private set; }

	public bool SuppressPrefixCheck { get; set; }

	public ExtensibleModelBinderAttribute(Type binderType)
	{
		BinderType = binderType;
	}
}
