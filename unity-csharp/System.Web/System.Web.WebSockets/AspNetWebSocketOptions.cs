namespace System.Web.WebSockets;

public sealed class AspNetWebSocketOptions
{
	private string _subProtocol;

	public bool RequireSameOrigin { get; set; }

	public string SubProtocol
	{
		get
		{
			return _subProtocol;
		}
		set
		{
			if (value != null && !SubProtocolUtil.IsValidSubProtocolName(value))
			{
				throw new ArgumentOutOfRangeException("value");
			}
			_subProtocol = value;
		}
	}
}
