using System;

namespace UnityEngine.UIElements;

public abstract class ImmediateModeElement : VisualElement
{
	public ImmediateModeElement()
	{
		generateVisualContent = (Action<MeshGenerationContext>)Delegate.Combine(generateVisualContent, new Action<MeshGenerationContext>(OnGenerateVisualContent));
	}

	private void OnGenerateVisualContent(MeshGenerationContext mgc)
	{
		mgc.painter.DrawImmediate(ImmediateRepaint);
	}

	protected abstract void ImmediateRepaint();
}
