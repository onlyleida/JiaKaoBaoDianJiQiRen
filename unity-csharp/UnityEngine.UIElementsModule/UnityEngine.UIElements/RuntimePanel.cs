namespace UnityEngine.UIElements;

internal class RuntimePanel(ScriptableObject ownerObject, EventDispatcher dispatcher = null) : Panel(ownerObject, ContextType.Player, dispatcher)
{
	internal RenderTexture targetTexture = null;

	public override void Repaint(Event e)
	{
		if (targetTexture == null)
		{
			clearFlags = PanelClearFlags.Depth;
			base.Repaint(e);
			return;
		}
		RenderTexture active = RenderTexture.active;
		RenderTexture.active = targetTexture;
		clearFlags = PanelClearFlags.All;
		base.Repaint(e);
		RenderTexture.active = active;
	}
}
