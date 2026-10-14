using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Web.Services.Diagnostics;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public abstract class SoapMessage
{
	private SoapMessageStage stage;

	private SoapHeaderCollection headers = new SoapHeaderCollection();

	private Stream stream;

	private SoapExtensionStream extensionStream;

	private string contentType;

	private string contentEncoding;

	private object[] parameterValues;

	private SoapException exception;

	public abstract bool OneWay { get; }

	public SoapException Exception
	{
		get
		{
			return exception;
		}
		set
		{
			exception = value;
		}
	}

	public abstract LogicalMethodInfo MethodInfo { get; }

	public SoapHeaderCollection Headers => headers;

	public Stream Stream => stream;

	public string ContentType
	{
		get
		{
			EnsureStage((SoapMessageStage)5);
			return contentType;
		}
		set
		{
			EnsureStage((SoapMessageStage)5);
			contentType = value;
		}
	}

	public string ContentEncoding
	{
		get
		{
			EnsureStage((SoapMessageStage)5);
			return contentEncoding;
		}
		set
		{
			EnsureStage((SoapMessageStage)5);
			contentEncoding = value;
		}
	}

	public SoapMessageStage Stage => stage;

	public abstract string Url { get; }

	public abstract string Action { get; }

	[DefaultValue(SoapProtocolVersion.Default)]
	[ComVisible(false)]
	public virtual SoapProtocolVersion SoapVersion => SoapProtocolVersion.Default;

	internal SoapMessage()
	{
	}

	internal void SetParameterValues(object[] parameterValues)
	{
		this.parameterValues = parameterValues;
	}

	internal object[] GetParameterValues()
	{
		return parameterValues;
	}

	public object GetInParameterValue(int index)
	{
		EnsureInStage();
		EnsureNoException();
		if (index < 0 || index >= parameterValues.Length)
		{
			throw new IndexOutOfRangeException(Res.GetString("indexMustBeBetweenAnd0Inclusive", parameterValues.Length));
		}
		return parameterValues[index];
	}

	public object GetOutParameterValue(int index)
	{
		EnsureOutStage();
		EnsureNoException();
		if (!MethodInfo.IsVoid)
		{
			if (index == int.MaxValue)
			{
				throw new IndexOutOfRangeException(Res.GetString("indexMustBeBetweenAnd0Inclusive", parameterValues.Length));
			}
			index++;
		}
		if (index < 0 || index >= parameterValues.Length)
		{
			throw new IndexOutOfRangeException(Res.GetString("indexMustBeBetweenAnd0Inclusive", parameterValues.Length));
		}
		return parameterValues[index];
	}

	public object GetReturnValue()
	{
		EnsureOutStage();
		EnsureNoException();
		if (MethodInfo.IsVoid)
		{
			throw new InvalidOperationException(Res.GetString("WebNoReturnValue"));
		}
		return parameterValues[0];
	}

	protected abstract void EnsureOutStage();

	protected abstract void EnsureInStage();

	private void EnsureNoException()
	{
		if (exception != null)
		{
			throw new InvalidOperationException(Res.GetString("WebCannotAccessValue"), exception);
		}
	}

	protected void EnsureStage(SoapMessageStage stage)
	{
		if ((this.stage & stage) == 0)
		{
			throw new InvalidOperationException(Res.GetString("WebCannotAccessValueStage", this.stage.ToString()));
		}
	}

	internal void SetStream(Stream stream)
	{
		if (extensionStream != null)
		{
			extensionStream.SetInnerStream(stream);
			extensionStream.SetStreamReady();
			extensionStream = null;
		}
		else
		{
			this.stream = stream;
		}
	}

	internal void SetExtensionStream(SoapExtensionStream extensionStream)
	{
		this.extensionStream = extensionStream;
		stream = extensionStream;
	}

	internal void SetStage(SoapMessageStage stage)
	{
		this.stage = stage;
	}

	internal static SoapExtension[] InitializeExtensions(SoapReflectedExtension[] reflectedExtensions, object[] extensionInitializers)
	{
		if (reflectedExtensions == null)
		{
			return null;
		}
		SoapExtension[] array = new SoapExtension[reflectedExtensions.Length];
		for (int i = 0; i < array.Length; i++)
		{
			array[i] = reflectedExtensions[i].CreateInstance(extensionInitializers[i]);
		}
		return array;
	}

	internal void InitExtensionStreamChain(SoapExtension[] extensions)
	{
		if (extensions != null)
		{
			for (int i = 0; i < extensions.Length; i++)
			{
				stream = extensions[i].ChainStream(stream);
			}
		}
	}

	internal void RunExtensions(SoapExtension[] extensions, bool throwOnException)
	{
		if (extensions == null)
		{
			return;
		}
		TraceMethod traceMethod = (Tracing.On ? new TraceMethod(this, "RunExtensions", extensions, throwOnException) : null);
		if ((stage & (SoapMessageStage)0xC) != 0)
		{
			for (int i = 0; i < extensions.Length; i++)
			{
				if (Tracing.On)
				{
					Tracing.Enter("SoapExtension", traceMethod, new TraceMethod(extensions[i], "ProcessMessage", stage));
				}
				extensions[i].ProcessMessage(this);
				if (Tracing.On)
				{
					Tracing.Exit("SoapExtension", traceMethod);
				}
				if (Exception != null)
				{
					if (throwOnException)
					{
						throw Exception;
					}
					if (Tracing.On)
					{
						Tracing.ExceptionIgnore(TraceEventType.Warning, traceMethod, Exception);
					}
				}
			}
			return;
		}
		for (int num = extensions.Length - 1; num >= 0; num--)
		{
			if (Tracing.On)
			{
				Tracing.Enter("SoapExtension", traceMethod, new TraceMethod(extensions[num], "ProcessMessage", stage));
			}
			extensions[num].ProcessMessage(this);
			if (Tracing.On)
			{
				Tracing.Exit("SoapExtension", traceMethod);
			}
			if (Exception != null)
			{
				if (throwOnException)
				{
					throw Exception;
				}
				if (Tracing.On)
				{
					Tracing.ExceptionIgnore(TraceEventType.Warning, traceMethod, Exception);
				}
			}
		}
	}
}
