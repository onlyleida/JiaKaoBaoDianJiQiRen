namespace System.Web;

internal struct DynamicModuleInfo(Type type, string name)
{
	public readonly string Name = name;

	public readonly Type Type = type;
}
