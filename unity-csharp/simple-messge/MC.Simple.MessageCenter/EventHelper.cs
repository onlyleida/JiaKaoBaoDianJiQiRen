namespace MC.Simple.MessageCenter;

public class EventHelper
{
	public object obj;

	public DelegateDef handler;
}
public class EventHelper<T>
{
	public object obj;

	public DelegateDef<T> handler;
}
public class EventHelper<T, U>
{
	public object obj;

	public DelegateDef<T, U> handler;
}
public class EventHelper<T, U, V>
{
	public object obj;

	public DelegateDef<T, U, V> handler;
}
public class EventHelper<T, U, V, W>
{
	public object obj;

	public DelegateDef<T, U, V, W> handler;
}
