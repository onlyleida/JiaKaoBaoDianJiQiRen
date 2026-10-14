using System;
using UnityEngine;
using UnityEngine.UI;

public class FMxButtonBase : Button
{
	private float time = 1f;

	private Action<GameObject> fun;

	private bool timeContral;

	public void SetListener(Action<GameObject> click, bool timeContral = true)
	{
		fun = click;
		this.timeContral = timeContral;
	}

	protected override void Awake()
	{
		onClick.AddListener(OnClick);
	}

	private void Update()
	{
		if (timeContral)
		{
			time += Time.deltaTime;
		}
	}

	private void OnClick()
	{
		if (timeContral)
		{
			if (time >= 0.3f && fun != null)
			{
				time = 0f;
				fun(gameObject);
			}
		}
		else if (fun != null)
		{
			fun(gameObject);
		}
	}
}
