namespace System.Web.UI.WebControls;

public class DataControlFieldHeaderCell : DataControlFieldCell
{
	private TableHeaderScope scope;

	public virtual TableHeaderScope Scope
	{
		get
		{
			object obj = ViewState["Scope"];
			if (obj != null)
			{
				return (TableHeaderScope)obj;
			}
			return TableHeaderScope.NotSet;
		}
		set
		{
			ViewState["Scope"] = value;
		}
	}

	public virtual string AbbreviatedText
	{
		get
		{
			object obj = ViewState["AbbreviatedText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["AbbreviatedText"] = value;
		}
	}

	public DataControlFieldHeaderCell(DataControlField containingField)
		: base(HtmlTextWriterTag.Th, containingField)
	{
	}

	internal DataControlFieldHeaderCell(DataControlField containerField, TableHeaderScope scope)
		: this(containerField)
	{
		this.scope = scope;
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		switch (scope)
		{
		case TableHeaderScope.Column:
			writer.AddAttribute(HtmlTextWriterAttribute.Scope, "col", fEncode: false);
			break;
		case TableHeaderScope.Row:
			writer.AddAttribute(HtmlTextWriterAttribute.Scope, "row", fEncode: false);
			break;
		}
		if (AbbreviatedText.Length > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Abbr, AbbreviatedText);
		}
	}
}
