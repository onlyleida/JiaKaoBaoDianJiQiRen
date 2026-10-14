namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
public class ScaffoldTableAttribute : Attribute
{
	public bool Scaffold { get; private set; }

	public ScaffoldTableAttribute(bool scaffold)
	{
		Scaffold = scaffold;
	}
}
