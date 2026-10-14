namespace UnityEngine.UIElements;

public class BlurEvent : FocusEventBase<BlurEvent>
{
	protected internal override void PreDispatch(IPanel panel)
	{
		base.PreDispatch(panel);
		if (relatedTarget == null)
		{
			focusController.DoFocusChange(null);
		}
	}
}
