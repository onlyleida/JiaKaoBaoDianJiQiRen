using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Web.UI.WebControls;

namespace System.Web.UI.Design.WebControls;

public class ListControlDesigner : DataBoundControlDesigner
{
	private string data_key_field;

	private string data_text_field;

	private string data_value_field;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected override bool UseDataSourcePickerActionList
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string DataKeyField
	{
		get
		{
			return data_key_field;
		}
		set
		{
			data_key_field = value;
		}
	}

	public string DataTextField
	{
		get
		{
			return data_text_field;
		}
		set
		{
			data_text_field = value;
		}
	}

	public string DataValueField
	{
		get
		{
			return data_value_field;
		}
		set
		{
			data_value_field = value;
		}
	}

	protected override void DataBind(BaseDataBoundControl dataBoundControl)
	{
		throw new NotImplementedException();
	}

	public override void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}

	public override string GetDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	public virtual IEnumerable GetResolvedSelectedDataSource()
	{
		throw new NotImplementedException();
	}

	public virtual object GetSelectedDataSource()
	{
		throw new NotImplementedException();
	}

	public override void OnComponentChanged(object sender, ComponentChangedEventArgs e)
	{
		throw new NotImplementedException();
	}

	protected internal virtual void OnDataSourceChanged()
	{
		throw new NotImplementedException();
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}
}
