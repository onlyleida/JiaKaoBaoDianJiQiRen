namespace System.Web;

public interface ISubscriptionToken
{
	bool IsActive { get; }

	void Unsubscribe();
}
