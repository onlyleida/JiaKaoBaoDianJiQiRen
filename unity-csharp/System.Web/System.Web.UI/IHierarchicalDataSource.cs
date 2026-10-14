namespace System.Web.UI;

public interface IHierarchicalDataSource
{
	event EventHandler DataSourceChanged;

	HierarchicalDataSourceView GetHierarchicalView(string viewPath);
}
