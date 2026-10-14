namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Property, AllowMultiple = false, Inherited = true)]
public sealed class BindRequiredAttribute : BindingBehaviorAttribute
{
	public BindRequiredAttribute()
		: base(BindingBehavior.Required)
	{
	}
}
