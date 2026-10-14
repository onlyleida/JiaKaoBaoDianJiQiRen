namespace System.Web.Compilation;

[AttributeUsage(AttributeTargets.Class)]
public sealed class DesignTimeResourceProviderFactoryAttribute : Attribute
{
	private string _factoryTypeName;

	public string FactoryTypeName => _factoryTypeName;

	public DesignTimeResourceProviderFactoryAttribute(Type factoryType)
	{
		_factoryTypeName = factoryType.AssemblyQualifiedName;
	}

	public DesignTimeResourceProviderFactoryAttribute(string factoryTypeName)
	{
		_factoryTypeName = factoryTypeName;
	}

	public override bool IsDefaultAttribute()
	{
		return _factoryTypeName == null;
	}
}
