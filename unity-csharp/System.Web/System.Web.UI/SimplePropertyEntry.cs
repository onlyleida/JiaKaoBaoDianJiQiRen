using Unity;

namespace System.Web.UI;

public class SimplePropertyEntry : PropertyEntry
{
	private bool useSetAttribute;

	private object val;

	public bool UseSetAttribute
	{
		get
		{
			return useSetAttribute;
		}
		set
		{
			useSetAttribute = value;
		}
	}

	public object Value
	{
		get
		{
			return val;
		}
		set
		{
			val = value;
		}
	}

	public string PersistedValue
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

	internal SimplePropertyEntry()
	{
	}
}
