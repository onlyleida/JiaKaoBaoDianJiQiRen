using Unity;

namespace System.Web.UI.WebControls.WebParts;

[AttributeUsage(AttributeTargets.Method)]
public class ConnectionConsumerAttribute : Attribute
{
	public bool AllowsMultipleConnections
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

	public Type ConnectionPointType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string DisplayName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected string DisplayNameValue
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

	public string ID
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ConnectionConsumerAttribute(string displayName)
	{
	}

	public ConnectionConsumerAttribute(string displayName, string id)
	{
	}

	public ConnectionConsumerAttribute(string displayName, string id, Type connectionPointType)
	{
	}

	public ConnectionConsumerAttribute(string displayName, Type connectionPointType)
	{
	}
}
