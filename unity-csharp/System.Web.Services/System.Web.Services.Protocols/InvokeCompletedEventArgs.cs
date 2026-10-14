using System.ComponentModel;
using Unity;

namespace System.Web.Services.Protocols;

public class InvokeCompletedEventArgs : AsyncCompletedEventArgs
{
	private object[] results;

	public object[] Results => results;

	internal InvokeCompletedEventArgs(object[] results, Exception exception, bool cancelled, object userState)
		: base(exception, cancelled, userState)
	{
		this.results = results;
	}

	internal InvokeCompletedEventArgs()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
