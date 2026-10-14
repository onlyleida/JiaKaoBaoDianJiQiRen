using Unity;

namespace System.Web.Management;

public sealed class WebProcessInformation
{
	public string AccountName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int ProcessID
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string ProcessName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal WebProcessInformation()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void FormatToString(WebEventFormatter formatter)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
