using System.Collections;
using System.ComponentModel;

namespace System.Web.UI;

[ControlBuilder(typeof(DataSourceControlBuilder))]
[NonVisualControl]
[Bindable(false)]
[Designer("System.Web.UI.Design.DataSourceDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
public abstract class DataSourceControl : Control, IDataSource, IListSource
{
	private static object dataSourceChanged = new object();

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string ClientID => base.ClientID;

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override ControlCollection Controls => base.Controls;

	[DefaultValue(false)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
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

	[Browsable(false)]
	[DefaultValue("")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string SkinID
	{
		get
		{
			return base.SkinID;
		}
		set
		{
			base.SkinID = value;
		}
	}

	bool IListSource.ContainsListCollection => ListSourceHelper.ContainsListCollection(this);

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DefaultValue(false)]
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

	event EventHandler IDataSource.DataSourceChanged
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

	[EditorBrowsable(EditorBrowsableState.Never)]
	[MonoTODO("Not implemented")]
	public override void ApplyStyleSheetSkin(Page page)
	{
		throw new NotImplementedException();
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	[MonoTODO("why override?")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override Control FindControl(string id)
	{
		return base.FindControl(id);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void Focus()
	{
		throw new NotSupportedException();
	}

	protected abstract DataSourceView GetView(string viewName);

	DataSourceView IDataSource.GetView(string viewName)
	{
		return GetView(viewName);
	}

	protected virtual ICollection GetViewNames()
	{
		return null;
	}

	ICollection IDataSource.GetViewNames()
	{
		return GetViewNames();
	}

	IList IListSource.GetList()
	{
		return ListSourceHelper.GetList(this);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool HasControls()
	{
		return base.HasControls();
	}

	protected virtual void RaiseDataSourceChangedEvent(EventArgs e)
	{
		if (Events[dataSourceChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void RenderControl(HtmlTextWriter writer)
	{
		base.RenderControl(writer);
	}
}
