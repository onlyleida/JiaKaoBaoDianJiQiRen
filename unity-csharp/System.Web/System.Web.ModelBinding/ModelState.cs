namespace System.Web.ModelBinding;

[Serializable]
public class ModelState
{
	private ModelErrorCollection _errors = new ModelErrorCollection();

	public ValueProviderResult Value { get; set; }

	public ModelErrorCollection Errors => _errors;
}
