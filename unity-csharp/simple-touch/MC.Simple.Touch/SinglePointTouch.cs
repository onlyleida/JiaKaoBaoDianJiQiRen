using UnityEngine;

namespace MC.Simple.Touch;

public class SinglePointTouch
{
	public Vector2 axis = Vector2.zero;

	public TouchState state;

	public void Update()
	{
		if (Input.touchCount == 1 && Input.touches[0].phase == TouchPhase.Moved)
		{
			float num = Input.GetAxis("Mouse X");
			float num2 = Input.GetAxis("Mouse Y");
			if (Mathf.Abs(num) >= 0.2f || Mathf.Abs(num2) >= 0.2f)
			{
				if (Mathf.Abs(num) > 20f || Mathf.Abs(num2) > 20f)
				{
					axis = Vector2.zero;
				}
				else
				{
					axis.x = num;
					axis.y = num2;
				}
			}
			else
			{
				axis = Vector2.zero;
			}
		}
		else
		{
			axis = Vector2.zero;
		}
		if (axis == Vector2.zero)
		{
			state = TouchState.none;
		}
		else
		{
			state = TouchState.single_move;
		}
	}
}
