namespace System.Web.Management;

public interface IWebEventCustomEvaluator
{
	bool CanFire(WebBaseEvent raisedEvent, RuleFiringRecord record);
}
