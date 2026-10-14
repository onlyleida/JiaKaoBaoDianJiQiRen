using Unity;

namespace System.Web.Compilation;

public sealed class ResourceExpressionFields
{
	private string classKey;

	private string resourceKey;

	public string ClassKey => classKey;

	public string ResourceKey => resourceKey;

	internal ResourceExpressionFields(string classKey, string resourceKey)
	{
		this.classKey = classKey;
		this.resourceKey = resourceKey;
	}

	internal ResourceExpressionFields(string resourceKey)
		: this(null, resourceKey)
	{
	}

	internal ResourceExpressionFields()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
