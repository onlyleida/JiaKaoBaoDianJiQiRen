namespace System.Web.UI;

public interface IStateFormatter
{
	object Deserialize(string serializedState);

	string Serialize(object state);
}
