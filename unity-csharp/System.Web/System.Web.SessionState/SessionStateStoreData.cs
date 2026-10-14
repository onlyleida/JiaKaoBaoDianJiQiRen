namespace System.Web.SessionState;

public class SessionStateStoreData
{
	private ISessionStateItemCollection sessionItems;

	private HttpStaticObjectsCollection staticObjects;

	private int timeout;

	public virtual ISessionStateItemCollection Items => sessionItems;

	public virtual HttpStaticObjectsCollection StaticObjects => staticObjects;

	public virtual int Timeout
	{
		get
		{
			return timeout;
		}
		set
		{
			timeout = value;
		}
	}

	public SessionStateStoreData(ISessionStateItemCollection sessionItems, HttpStaticObjectsCollection staticObjects, int timeout)
	{
		this.sessionItems = sessionItems;
		this.staticObjects = staticObjects;
		this.timeout = timeout;
	}
}
