using System.Collections.Generic;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false, Inherited = true)]
public sealed class AssociationAttribute : Attribute
{
	private string name;

	private string thisKey;

	private string otherKey;

	private bool isForeignKey;

	public string Name => name;

	public string ThisKey => thisKey;

	public string OtherKey => otherKey;

	public bool IsForeignKey
	{
		get
		{
			return isForeignKey;
		}
		set
		{
			isForeignKey = value;
		}
	}

	public IEnumerable<string> ThisKeyMembers => GetKeyMembers(ThisKey);

	public IEnumerable<string> OtherKeyMembers => GetKeyMembers(OtherKey);

	public AssociationAttribute(string name, string thisKey, string otherKey)
	{
		this.name = name;
		this.thisKey = thisKey;
		this.otherKey = otherKey;
	}

	private static string[] GetKeyMembers(string key)
	{
		return key.Replace(" ", string.Empty).Split(',');
	}
}
