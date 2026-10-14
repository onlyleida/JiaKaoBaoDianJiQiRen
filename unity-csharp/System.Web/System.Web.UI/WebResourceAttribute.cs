using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
public sealed class WebResourceAttribute : Attribute
{
	private bool performSubstitution;

	private string webResource;

	private string contentType;

	public string ContentType => contentType;

	public bool PerformSubstitution
	{
		get
		{
			return performSubstitution;
		}
		set
		{
			performSubstitution = value;
		}
	}

	public string WebResource => webResource;

	public string CdnPath
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

	public bool CdnSupportsSecureConnection
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

	public string LoadSuccessExpression
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebResourceAttribute(string webResource, string contentType)
	{
		this.webResource = webResource;
		this.contentType = contentType;
	}
}
