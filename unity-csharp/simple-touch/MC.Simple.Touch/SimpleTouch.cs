using UnityEngine;

namespace MC.Simple.Touch;

public class SimpleTouch
{
	private static SimpleTouch _instance;

	private static TouchState _touchState;

	private static Vector2 _singleAxis;

	private static float _doubleAxis;

	private SinglePointTouch singlePointTouch;

	private DoublePointTouch doublePointTouch;

	public static SimpleTouch Instance
	{
		get
		{
			if (_instance == null)
			{
				_instance = new SimpleTouch();
			}
			return _instance;
		}
	}

	public static TouchState touchState => _touchState;

	public static Vector2 singleAxis => _singleAxis;

	public static float doubleAxis => _doubleAxis;

	private SimpleTouch()
	{
		singlePointTouch = new SinglePointTouch();
		doublePointTouch = new DoublePointTouch();
	}

	public void Update()
	{
		singlePointTouch.Update();
		doublePointTouch.Update();
		_singleAxis = singlePointTouch.axis;
		_doubleAxis = doublePointTouch.axis;
		if (Input.touchCount == 0)
		{
			_touchState = TouchState.none;
		}
		else if (Input.touchCount == 1)
		{
			_touchState = singlePointTouch.state;
		}
		else if (Input.touchCount == 2)
		{
			_touchState = doublePointTouch.state;
		}
	}

	public void Clear()
	{
		_touchState = TouchState.none;
		_singleAxis = Vector2.zero;
		_doubleAxis = 0f;
	}
}
