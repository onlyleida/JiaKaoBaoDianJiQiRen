namespace System.ComponentModel.Design;

public sealed class DesignerActionPropertyItem : DesignerActionItem
{
	private string member_name;

	private IComponent related_component;

	public string MemberName => member_name;

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

	public DesignerActionPropertyItem(string memberName, string displayName)
		: this(memberName, displayName, null)
	{
	}

	public DesignerActionPropertyItem(string memberName, string displayName, string category)
		: this(memberName, displayName, category, null)
	{
	}

	public DesignerActionPropertyItem(string memberName, string displayName, string category, string description)
		: base(displayName, category, description)
	{
		member_name = memberName;
	}
}
