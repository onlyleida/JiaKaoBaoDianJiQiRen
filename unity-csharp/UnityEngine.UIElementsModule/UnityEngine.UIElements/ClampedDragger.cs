using System;

namespace UnityEngine.UIElements;

internal class ClampedDragger<T> : Clickable where T : IComparable<T>
{
	[Flags]
	public enum DragDirection
	{
		None = 0,
		LowToHigh = 1,
		HighToLow = 2,
		Free = 4
	}

	public DragDirection dragDirection { get; set; }

	private BaseSlider<T> slider { get; set; }

	public Vector2 startMousePosition { get; private set; }

	public Vector2 delta => lastMousePosition - startMousePosition;

	public event Action dragging;

	public ClampedDragger(BaseSlider<T> slider, Action clickHandler, Action dragHandler)
		: base(clickHandler, 250L, 30L)
	{
		dragDirection = DragDirection.None;
		this.slider = slider;
		dragging += dragHandler;
	}

	protected override void RegisterCallbacksOnTarget()
	{
		target.RegisterCallback<MouseDownEvent>(OnMouseDown);
		target.RegisterCallback<MouseMoveEvent>(OnMouseMove);
		target.RegisterCallback<MouseUpEvent>(OnMouseUp);
	}

	protected override void UnregisterCallbacksFromTarget()
	{
		target.UnregisterCallback<MouseDownEvent>(OnMouseDown);
		target.UnregisterCallback<MouseMoveEvent>(OnMouseMove);
		target.UnregisterCallback<MouseUpEvent>(OnMouseUp);
	}

	private new void OnMouseDown(MouseDownEvent evt)
	{
		if (CanStartManipulation(evt))
		{
			startMousePosition = evt.localMousePosition;
			dragDirection = DragDirection.None;
			base.OnMouseDown(evt);
		}
	}

	private new void OnMouseMove(MouseMoveEvent evt)
	{
		if (active)
		{
			base.OnMouseMove(evt);
			if (dragDirection == DragDirection.None)
			{
				dragDirection = DragDirection.Free;
			}
			if (dragDirection == DragDirection.Free)
			{
				dragging?.Invoke();
			}
		}
	}
}
