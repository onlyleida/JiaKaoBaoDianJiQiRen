using System.ComponentModel;

namespace System.Web.UI.WebControls;

[ToolboxItem("")]
[Bindable(false)]
[ControlBuilder(typeof(WizardStepControlBuilder))]
public abstract class WizardStepBase : View
{
	private Wizard wizard;

	[Themeable(false)]
	[Filterable(false)]
	[DefaultValue(true)]
	public virtual bool AllowReturn
	{
		get
		{
			object obj = ViewState["AllowReturn"];
			if (obj == null)
			{
				return true;
			}
			return (bool)obj;
		}
		set
		{
			ViewState["AllowReturn"] = value;
		}
	}

	[Browsable(true)]
	public override bool EnableTheming
	{
		get
		{
			return base.EnableTheming;
		}
		set
		{
			base.EnableTheming = value;
		}
	}

	public override string ID
	{
		get
		{
			return base.ID;
		}
		set
		{
			base.ID = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual string Name
	{
		get
		{
			if (Title != null && Title.Length > 0)
			{
				return Title;
			}
			if (ID != null && ID.Length > 0)
			{
				return ID;
			}
			return null;
		}
	}

	[DefaultValue(WizardStepType.Auto)]
	public virtual WizardStepType StepType
	{
		get
		{
			object obj = ViewState["StepType"];
			if (obj == null)
			{
				return WizardStepType.Auto;
			}
			return (WizardStepType)obj;
		}
		set
		{
			ViewState["StepType"] = value;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public virtual string Title
	{
		get
		{
			object obj = ViewState["Title"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			ViewState["Title"] = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	public Wizard Wizard => wizard;

	protected override void LoadViewState(object savedState)
	{
		base.LoadViewState(savedState);
	}

	protected internal override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
	}

	protected internal override void RenderChildren(HtmlTextWriter writer)
	{
		base.RenderChildren(writer);
	}

	internal void SetWizard(Wizard w)
	{
		wizard = w;
	}
}
