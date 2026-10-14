namespace System.Web.UI;

public interface IUserControlTypeResolutionService
{
	Type GetType(string tagPrefix, string tagName);
}
