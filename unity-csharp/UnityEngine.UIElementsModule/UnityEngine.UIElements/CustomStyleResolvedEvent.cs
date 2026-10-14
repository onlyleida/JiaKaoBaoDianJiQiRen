namespace UnityEngine.UIElements;

public class CustomStyleResolvedEvent : EventBase<CustomStyleResolvedEvent>
{
	public ICustomStyle customStyle => (target as VisualElement)?.customStyle;
}
