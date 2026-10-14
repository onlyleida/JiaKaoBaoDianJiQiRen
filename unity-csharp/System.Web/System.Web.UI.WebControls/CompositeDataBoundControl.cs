using System.Collections;
using Unity;

namespace System.Web.UI.WebControls;

public abstract class CompositeDataBoundControl : DataBoundControl, INamingContainer
{
	public override ControlCollection Controls
	{
		get
		{
			EnsureChildControls();
			return base.Controls;
		}
	}

	protected internal string DeleteMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	protected internal string InsertMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	protected override bool IsUsingModelBinders
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected internal string UpdateMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	protected internal override void CreateChildControls()
	{
		Controls.Clear();
		object obj = ViewState["_!ItemCount"];
		if (obj != null)
		{
			object[] array = new object[(int)obj];
			CreateChildControls(array, dataBinding: false);
		}
		else if (RequiresDataBinding)
		{
			EnsureDataBound();
		}
	}

	protected internal override void PerformDataBinding(IEnumerable data)
	{
		base.PerformDataBinding(data);
		Controls.Clear();
		ViewState["_!ItemCount"] = CreateChildControls(data, dataBinding: true);
	}

	protected abstract int CreateChildControls(IEnumerable dataSource, bool dataBinding);
}
