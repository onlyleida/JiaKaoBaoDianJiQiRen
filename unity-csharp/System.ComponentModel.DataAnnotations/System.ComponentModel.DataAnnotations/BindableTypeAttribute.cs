namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Enum, AllowMultiple = false, Inherited = true)]
public sealed class BindableTypeAttribute : Attribute
{
	public bool IsBindable { get; set; }

	public BindableTypeAttribute()
	{
		IsBindable = true;
	}
}
