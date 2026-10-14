namespace System.Web;

[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
public sealed class PreApplicationStartMethodAttribute : Attribute
{
	private readonly Type _type;

	private readonly string _methodName;

	public Type Type => _type;

	public string MethodName => _methodName;

	public PreApplicationStartMethodAttribute(Type type, string methodName)
	{
		_type = type;
		_methodName = methodName;
	}
}
