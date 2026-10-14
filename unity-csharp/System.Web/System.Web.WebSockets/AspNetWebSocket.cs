using System.Net.WebSockets;
using System.Threading;
using System.Threading.Tasks;
using Unity;

namespace System.Web.WebSockets;

public sealed class AspNetWebSocket : WebSocket
{
	public override WebSocketCloseStatus? CloseStatus
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string CloseStatusDescription
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override WebSocketState State
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override string SubProtocol
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal AspNetWebSocket()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void Abort()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override Task CloseAsync(WebSocketCloseStatus closeStatus, string statusDescription, CancellationToken cancellationToken)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override Task CloseOutputAsync(WebSocketCloseStatus closeStatus, string statusDescription, CancellationToken cancellationToken)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override Task<WebSocketReceiveResult> ReceiveAsync(ArraySegment<byte> buffer, CancellationToken cancellationToken)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (Task<WebSocketReceiveResult>)0;
	}

	public override Task SendAsync(ArraySegment<byte> buffer, WebSocketMessageType messageType, bool endOfMessage, CancellationToken cancellationToken)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
