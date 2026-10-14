using System.Web.ModelBinding;
using Unity;

namespace System.Web.UI.WebControls;

public class ModelMethodContext
{
	public static ModelMethodContext Current
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ModelStateDictionary ModelState
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ModelMethodContext(Page page)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual bool TryUpdateModel<TModel>(TModel model)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual bool TryUpdateModel<TModel>(TModel model, IValueProvider valueProvider)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual void UpdateModel<TModel>(TModel model)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void UpdateModel<TModel>(TModel model, IValueProvider valueProvider)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
