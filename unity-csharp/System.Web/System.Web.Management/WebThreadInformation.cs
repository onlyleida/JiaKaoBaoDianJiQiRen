using Unity;

namespace System.Web.Management;

public sealed class WebThreadInformation
{
	public bool IsImpersonating
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string StackTrace
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string ThreadAccountName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int ThreadID
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal WebThreadInformation()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void FormatToString(WebEventFormatter formatter)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
