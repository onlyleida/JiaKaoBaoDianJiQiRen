using UnityEngine;

public class FMxStatuButton : FMxButtonBase
{
	private GameObject tag0;

	private GameObject tag1;

	public bool state;

	protected override void Awake()
	{
		base.Awake();
		tag0 = transform.GetChild(0).gameObject;
		tag1 = transform.GetChild(1).gameObject;
	}

	public void SetStatu(bool choose)
	{
		if (tag0 != null)
		{
			tag0.SetActive(!choose);
		}
		if (tag1 != null)
		{
			tag1.SetActive(choose);
		}
	}
}
