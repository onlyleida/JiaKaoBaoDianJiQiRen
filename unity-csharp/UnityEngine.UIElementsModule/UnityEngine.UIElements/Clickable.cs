using System;

namespace UnityEngine.UIElements;

public class Clickable : MouseManipulator
{
	private readonly long m_Delay;

	private readonly long m_Interval;

	private IVisualElementScheduledItem m_Repeater;

	protected bool active { get; set; }

	public Vector2 lastMousePosition { get; private set; }

	public event Action<EventBase> clickedWithEventInfo;

	public event Action clicked;

	public Clickable(Action handler, long delay, long interval)
		: this(handler)
	{
		m_Delay = delay;
		m_Interval = interval;
		active = false;
	}

	public Clickable(Action<EventBase> handler)
	{
		clickedWithEventInfo = handler;
		activators.Add(new ManipulatorActivationFilter
		{
			button = MouseButton.LeftMouse
		});
	}

	public Clickable(Action handler)
	{
		clicked = handler;
		activators.Add(new ManipulatorActivationFilter
		{
			button = MouseButton.LeftMouse
		});
		active = false;
	}

	private void OnTimer(TimerState timerState)
	{
		if ((clicked != null || clickedWithEventInfo != null) && IsRepeatable())
		{
			if (target.ContainsPoint(lastMousePosition))
			{
				Invoke(null);
				target.pseudoStates |= PseudoStates.Active;
			}
			else
			{
				target.pseudoStates &= ~PseudoStates.Active;
			}
		}
	}

	private bool IsRepeatable()
	{
		return m_Delay > 0 || m_Interval > 0;
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

	private void Invoke(EventBase evt)
	{
		if (clicked != null)
		{
			clicked();
		}
		clickedWithEventInfo?.Invoke(evt);
	}

	protected void OnMouseDown(MouseDownEvent evt)
	{
		if (evt == null || !CanStartManipulation(evt))
		{
			return;
		}
		active = true;
		target.CaptureMouse();
		lastMousePosition = evt.localMousePosition;
		if (IsRepeatable())
		{
			if (target.ContainsPoint(evt.localMousePosition))
			{
				Invoke(evt);
			}
			if (m_Repeater == null)
			{
				m_Repeater = target.schedule.Execute(OnTimer).Every(m_Interval).StartingIn(m_Delay);
			}
			else
			{
				m_Repeater.ExecuteLater(m_Delay);
			}
		}
		target.pseudoStates |= PseudoStates.Active;
		evt.StopImmediatePropagation();
	}

	protected void OnMouseMove(MouseMoveEvent evt)
	{
		if (evt != null && active)
		{
			lastMousePosition = evt.localMousePosition;
			if (target.ContainsPoint(evt.localMousePosition))
			{
				target.pseudoStates |= PseudoStates.Active;
			}
			else
			{
				target.pseudoStates &= ~PseudoStates.Active;
			}
			evt.StopPropagation();
		}
	}

	protected void OnMouseUp(MouseUpEvent evt)
	{
		if (evt == null || !active || !CanStopManipulation(evt))
		{
			return;
		}
		active = false;
		target.ReleaseMouse();
		target.pseudoStates &= ~PseudoStates.Active;
		if (IsRepeatable())
		{
			if (m_Repeater != null)
			{
				m_Repeater.Pause();
			}
		}
		else if (target.ContainsPoint(evt.localMousePosition))
		{
			Invoke(evt);
		}
		evt.StopPropagation();
	}
}
