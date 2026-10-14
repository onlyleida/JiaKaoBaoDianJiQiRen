using UnityEngine;

namespace MC.Simple.Touch;

public class DoublePointTouch
{
	private Vector2 curPositon0;

	private Vector2 curPositon1;

	public float axis;

	public TouchState state;

	public void Update()
	{
		if (Input.touchCount == 2 && (Input.touches[0].phase == TouchPhase.Moved || Input.touches[1].phase == TouchPhase.Moved))
		{
			float num = Vector2.Distance(curPositon0, curPositon1);
			if (Vector2.Distance(curPositon0, Input.GetTouch(0).position) < 5f && Vector2.Distance(curPositon1, Input.GetTouch(1).position) < 5f)
			{
				curPositon0 = Vector2.zero;
				curPositon1 = Vector2.zero;
				axis = 0f;
			}
			curPositon0 = Input.GetTouch(0).position;
			curPositon1 = Input.GetTouch(1).position;
			float num2 = Vector2.Distance(curPositon0, curPositon1);
			if (num == 0f)
			{
				num = num2;
			}
			axis = num2 - num;
			axis /= 50f;
		}
		else
		{
			curPositon0 = Vector2.zero;
			curPositon1 = Vector2.zero;
			axis = 0f;
		}
		if (axis == 0f)
		{
			state = TouchState.none;
		}
		else
		{
			state = TouchState.double_scale;
		}
	}

	public float Axis()
	{
		return axis;
	}
}
