namespace System.Web.UI;

public class EventEntry
{
	private Type _handlerType;

	private string _handlerMethodName;

	private string _name;

	public string HandlerMethodName
	{
		get
		{
			return _handlerMethodName;
		}
		set
		{
			_handlerMethodName = value;
		}
	}

	public Type HandlerType
	{
		get
		{
			return _handlerType;
		}
		set
		{
			_handlerType = value;
		}
	}

	public string Name
	{
		get
		{
			return _name;
		}
		set
		{
			_name = value;
		}
	}
}
