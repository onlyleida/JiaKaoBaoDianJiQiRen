using System.ComponentModel;

namespace System.Web.UI.Design;

public abstract class ExpressionEditorSheet
{
	private IServiceProvider serviceProvider;

	[Browsable(false)]
	public virtual bool IsValid
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[Browsable(false)]
	public IServiceProvider ServiceProvider => serviceProvider;

	protected ExpressionEditorSheet(IServiceProvider serviceProvider)
	{
		this.serviceProvider = serviceProvider;
	}

	public abstract string GetExpression();
}
