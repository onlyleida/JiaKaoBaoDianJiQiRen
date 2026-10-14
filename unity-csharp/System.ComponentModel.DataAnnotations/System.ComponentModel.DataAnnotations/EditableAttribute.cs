namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false, Inherited = true)]
public sealed class EditableAttribute : Attribute
{
	public bool AllowEdit { get; private set; }

	public bool AllowInitialValue { get; set; }

	public EditableAttribute(bool allowEdit)
	{
		AllowEdit = allowEdit;
		AllowInitialValue = allowEdit;
	}
}
