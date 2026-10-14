using System.Configuration;
using System.Web.Configuration;
using Unity;

namespace System.Web.Util;

public class RequestValidator
{
	private static RequestValidator current;

	private static Lazy<RequestValidator> lazyLoader;

	public static RequestValidator Current
	{
		get
		{
			if (current == null)
			{
				current = lazyLoader.Value;
			}
			return current;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			current = value;
		}
	}

	static RequestValidator()
	{
		lazyLoader = new Lazy<RequestValidator>(LoadConfiguredValidator);
	}

	protected internal virtual bool IsValidRequestString(HttpContext context, string value, RequestValidationSource requestValidationSource, string collectionKey, out int validationFailureIndex)
	{
		validationFailureIndex = 0;
		return !HttpRequest.IsInvalidString(value, out validationFailureIndex);
	}

	private static void ParseTypeName(string spec, out string typeName, out string assemblyName)
	{
		try
		{
			if (string.IsNullOrEmpty(spec))
			{
				typeName = null;
				assemblyName = null;
				return;
			}
			int num = spec.IndexOf(',');
			if (num == -1)
			{
				typeName = spec;
				assemblyName = null;
			}
			else
			{
				typeName = spec.Substring(0, num).Trim();
				assemblyName = spec.Substring(num + 1).Trim();
			}
		}
		catch
		{
			typeName = spec;
			assemblyName = null;
		}
	}

	private static RequestValidator LoadConfiguredValidator()
	{
		HttpRuntimeSection section = HttpRuntime.Section;
		Type type = null;
		string requestValidationType = section.RequestValidationType;
		try
		{
			type = HttpApplication.LoadType<RequestValidator>(requestValidationType, throwOnMissing: true);
		}
		catch (TypeLoadException inner)
		{
			ParseTypeName(requestValidationType, out var typeName, out var assemblyName);
			throw new ConfigurationErrorsException($"Could not load type '{typeName}' from assembly '{assemblyName}'.", inner);
		}
		return (RequestValidator)Activator.CreateInstance(type);
	}

	public bool InvokeIsValidRequestString(HttpContext context, string value, RequestValidationSource requestValidationSource, string collectionKey, out int validationFailureIndex)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
