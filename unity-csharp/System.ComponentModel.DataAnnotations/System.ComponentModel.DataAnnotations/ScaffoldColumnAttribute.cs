namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false)]
public class ScaffoldColumnAttribute : Attribute
{
	public bool Scaffold { get; private set; }

	public ScaffoldColumnAttribute(bool scaffold)
	{
		Scaffold = scaffold;
	}
}
