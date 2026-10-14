using System.ComponentModel;

namespace System.Web.UI.WebControls;

[Themeable(true)]
[PersistChildren(false)]
[ParseChildren(true)]
[ToolboxItem(false)]
[ControlBuilder(typeof(WizardStepControlBuilder))]
[Bindable(false)]
public class TemplatedWizardStep : WizardStepBase
{
	private ITemplate _contentTemplate;

	private Control _contentTemplateContainer;

	private ITemplate _customNavigationTemplate;

	private Control _customNavigationTemplateContainer;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[TemplateContainer(typeof(Wizard))]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate ContentTemplate
	{
		get
		{
			return _contentTemplate;
		}
		set
		{
			_contentTemplate = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Control ContentTemplateContainer
	{
		get
		{
			return _contentTemplateContainer;
		}
		internal set
		{
			_contentTemplateContainer = value;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(Wizard))]
	[Browsable(false)]
	public virtual ITemplate CustomNavigationTemplate
	{
		get
		{
			return _customNavigationTemplate;
		}
		set
		{
			_customNavigationTemplate = value;
		}
	}

	[Browsable(false)]
	[Bindable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Control CustomNavigationTemplateContainer
	{
		get
		{
			return _customNavigationTemplateContainer;
		}
		internal set
		{
			_customNavigationTemplateContainer = value;
		}
	}

	[Browsable(true)]
	[MonoTODO("Why override?")]
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
}
