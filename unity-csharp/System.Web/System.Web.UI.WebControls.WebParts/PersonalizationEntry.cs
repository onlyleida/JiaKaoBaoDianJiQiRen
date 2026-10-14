using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class PersonalizationEntry
{
	public bool IsSensitive
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public PersonalizationScope Scope
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public object Value
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public PersonalizationEntry(object value, PersonalizationScope scope)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public PersonalizationEntry(object value, PersonalizationScope scope, bool isSensitive)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
