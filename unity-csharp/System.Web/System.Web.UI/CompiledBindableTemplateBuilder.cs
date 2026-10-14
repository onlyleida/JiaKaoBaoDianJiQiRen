using System.Collections.Specialized;

namespace System.Web.UI;

public sealed class CompiledBindableTemplateBuilder : IBindableTemplate, ITemplate
{
	private BuildTemplateMethod templateMethod;

	private ExtractTemplateValuesMethod extractMethod;

	public CompiledBindableTemplateBuilder(BuildTemplateMethod buildTemplateMethod, ExtractTemplateValuesMethod extractTemplateValuesMethod)
	{
		templateMethod = buildTemplateMethod;
		extractMethod = extractTemplateValuesMethod;
	}

	public void InstantiateIn(Control container)
	{
		templateMethod(container);
	}

	public IOrderedDictionary ExtractValues(Control container)
	{
		if (extractMethod == null)
		{
			return null;
		}
		return extractMethod(container);
	}
}
