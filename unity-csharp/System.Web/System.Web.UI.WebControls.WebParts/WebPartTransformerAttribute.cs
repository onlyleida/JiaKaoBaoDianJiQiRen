using Unity;

namespace System.Web.UI.WebControls.WebParts;

[AttributeUsage(AttributeTargets.Class)]
public sealed class WebPartTransformerAttribute : Attribute
{
	public Type ConsumerType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Type ProviderType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartTransformerAttribute(Type consumerType, Type providerType)
	{
	}

	public static Type GetConsumerType(Type transformerType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static Type GetProviderType(Type transformerType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
