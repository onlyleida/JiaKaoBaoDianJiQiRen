namespace System.Web.UI;

public interface IFilterResolutionService
{
	bool EvaluateFilter(string filterName);

	int CompareFilters(string filter1, string filter2);
}
