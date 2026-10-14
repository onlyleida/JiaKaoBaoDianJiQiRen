namespace System.Web;

public enum HttpCacheability
{
	NoCache = 1,
	Private = 2,
	Server = 3,
	Public = 4,
	ServerAndPrivate = 5,
	ServerAndNoCache = Server
}
