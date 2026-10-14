using System.Web.UI.WebControls;
using Unity;

namespace System.Web.UI.Design.WebControls;

public abstract class DataControlFieldDesigner
{
	public abstract string DefaultNodeText { get; }

	protected IServiceProvider ServiceProvider
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public abstract bool UsesSchema { get; }

	protected DataControlFieldDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract DataControlField CreateField();

	public abstract DataControlField CreateField(IDataSourceFieldSchema fieldSchema);

	public abstract TemplateField CreateTemplateField(DataControlField dataControlField, DataBoundControl dataBoundControl);

	protected string GetNewDataSourceName(Type controlType, DataBoundControlMode mode)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public abstract string GetNodeText(DataControlField dataControlField);

	protected object GetService(Type serviceType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected ITemplate GetTemplate(DataBoundControl control, string templateContent)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected TemplateField GetTemplateField(DataControlField dataControlField, DataBoundControl dataBoundControl)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public abstract bool IsEnabled(DataBoundControl parent);
}
