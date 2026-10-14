namespace System.ComponentModel.Design;

public class DesignerActionMethodItem : DesignerActionItem
{
	private string member_name;

	private bool designer_verb;

	private IComponent related_component;

	private DesignerActionList action_list;

	public virtual bool IncludeAsDesignerVerb => designer_verb;

	public virtual string MemberName => member_name;

	public IComponent RelatedComponent
	{
		get
		{
			return related_component;
		}
		set
		{
			related_component = value;
		}
	}

	public DesignerActionMethodItem(DesignerActionList actionList, string memberName, string displayName)
		: this(actionList, memberName, displayName, null, includeAsDesignerVerb: false)
	{
	}

	public DesignerActionMethodItem(DesignerActionList actionList, string memberName, string displayName, bool includeAsDesignerVerb)
		: this(actionList, memberName, displayName, null, includeAsDesignerVerb)
	{
	}

	public DesignerActionMethodItem(DesignerActionList actionList, string memberName, string displayName, string category)
		: this(actionList, memberName, displayName, category, includeAsDesignerVerb: false)
	{
	}

	public DesignerActionMethodItem(DesignerActionList actionList, string memberName, string displayName, string category, bool includeAsDesignerVerb)
		: this(actionList, memberName, displayName, category, null, includeAsDesignerVerb)
	{
	}

	public DesignerActionMethodItem(DesignerActionList actionList, string memberName, string displayName, string category, string description)
		: this(actionList, memberName, displayName, category, description, includeAsDesignerVerb: false)
	{
	}

	public DesignerActionMethodItem(DesignerActionList actionList, string memberName, string displayName, string category, string description, bool includeAsDesignerVerb)
		: base(displayName, category, description)
	{
		action_list = actionList;
		member_name = memberName;
		designer_verb = includeAsDesignerVerb;
	}

	public virtual void Invoke()
	{
		throw new NotImplementedException();
	}
}
