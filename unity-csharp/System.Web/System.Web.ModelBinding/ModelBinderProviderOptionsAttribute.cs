namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false, Inherited = true)]
public sealed class ModelBinderProviderOptionsAttribute : Attribute
{
	public bool FrontOfList { get; set; }
}
