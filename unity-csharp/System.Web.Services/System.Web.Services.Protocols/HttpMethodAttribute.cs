namespace System.Web.Services.Protocols;

[AttributeUsage(AttributeTargets.Method)]
public sealed class HttpMethodAttribute : Attribute
{
	private Type returnFormatter;

	private Type parameterFormatter;

	public Type ReturnFormatter
	{
		get
		{
			return returnFormatter;
		}
		set
		{
			returnFormatter = value;
		}
	}

	public Type ParameterFormatter
	{
		get
		{
			return parameterFormatter;
		}
		set
		{
			parameterFormatter = value;
		}
	}

	public HttpMethodAttribute()
	{
		returnFormatter = null;
		parameterFormatter = null;
	}

	public HttpMethodAttribute(Type returnFormatter, Type parameterFormatter)
	{
		this.returnFormatter = returnFormatter;
		this.parameterFormatter = parameterFormatter;
	}
}
