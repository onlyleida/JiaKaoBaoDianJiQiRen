namespace System.Web.UI;

public interface IDataBindingsAccessor
{
	DataBindingCollection DataBindings { get; }

	bool HasDataBindings { get; }
}
