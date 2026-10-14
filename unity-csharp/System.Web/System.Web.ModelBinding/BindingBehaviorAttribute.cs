namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Property, AllowMultiple = false, Inherited = true)]
public class BindingBehaviorAttribute : Attribute
{
	private static readonly object _typeId = new object();

	public BindingBehavior Behavior { get; private set; }

	public override object TypeId => _typeId;

	public BindingBehaviorAttribute(BindingBehavior behavior)
	{
		Behavior = behavior;
	}
}
