using System.ComponentModel;

namespace System.Web.UI;

[Bindable(false)]
[ControlBuilder(typeof(DataSourceControlBuilder))]
[Designer("System.Web.UI.Design.HierarchicalDataSourceDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[NonVisualControl]
public abstract class HierarchicalDataSourceControl : Control, IHierarchicalDataSource
{
	private static object dataSourceChanged = new object();

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DefaultValue(false)]
	public override bool EnableTheming
	{
		get
		{
			return false;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DefaultValue("")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string SkinID
	{
		get
		{
			return string.Empty;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DefaultValue(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override bool Visible
	{
		get
		{
			return false;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	event EventHandler IHierarchicalDataSource.DataSourceChanged
	{
		add
		{
			Events.AddHandler(dataSourceChanged, value);
		}
		remove
		{
			Events.RemoveHandler(dataSourceChanged, value);
		}
	}

	protected abstract HierarchicalDataSourceView GetHierarchicalView(string viewPath);

	HierarchicalDataSourceView IHierarchicalDataSource.GetHierarchicalView(string viewPath)
	{
		return GetHierarchicalView(viewPath);
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override Control FindControl(string id)
	{
		if (id == ID)
		{
			return this;
		}
		return null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool HasControls()
	{
		return false;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void Focus()
	{
		throw new NotSupportedException();
	}

	protected virtual void OnDataSourceChanged(EventArgs e)
	{
		if (Events[dataSourceChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void RenderControl(HtmlTextWriter writer)
	{
	}
}
