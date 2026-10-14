namespace System.Xml.Serialization;

internal class ElementAccessor : Accessor
{
	private bool nullable;

	private bool isSoap;

	private bool unbounded;

	internal bool IsSoap
	{
		get
		{
			return isSoap;
		}
		set
		{
			isSoap = value;
		}
	}

	internal bool IsNullable
	{
		get
		{
			return nullable;
		}
		set
		{
			nullable = value;
		}
	}

	internal bool IsUnbounded
	{
		get
		{
			return unbounded;
		}
		set
		{
			unbounded = value;
		}
	}

	internal ElementAccessor Clone()
	{
		return new ElementAccessor
		{
			nullable = nullable,
			IsTopLevelInSchema = IsTopLevelInSchema,
			Form = Form,
			isSoap = isSoap,
			Name = Name,
			Default = Default,
			Namespace = Namespace,
			Mapping = Mapping,
			Any = Any
		};
	}
}
