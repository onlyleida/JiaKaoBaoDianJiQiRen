namespace System.Web.UI;

public interface IValidator
{
	bool IsValid { get; set; }

	string ErrorMessage { get; set; }

	void Validate();
}
