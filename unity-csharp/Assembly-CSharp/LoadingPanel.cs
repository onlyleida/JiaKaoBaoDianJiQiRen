using MC.Simple.MessageCenter;
using UnityEngine;
using UnityEngine.UI;

public class LoadingPanel : MonoBehaviour
{
	private GameObject bg;

	private GameObject bar;

	private Text text;

	public float progress;

	public string title = "等待加载资源";

	public bool active = true;

	public float screenWRate;

	public float screenHRate;

	private void Awake()
	{
		title = "等待加载资源";
		bg = transform.Find("bg").gameObject;
		bar = bg.transform.Find("barbg").Find("bar").gameObject;
		text = bg.transform.Find("Text").GetComponent<Text>();
		float num = Screen.currentResolution.width;
		float num2 = Screen.currentResolution.height;
		screenWRate = num / 1920f;
		screenHRate = num2 / 1080f;
		transform.localScale = new Vector3(screenWRate, screenHRate, 1f);
	}

	private void Start()
	{
		MessagerCenter<string, float>.Register("loading_panel_progress", OnProgress);
		MessagerCenter<bool>.Register("loading_panel_active", OnActive);
	}

	private void Update()
	{
		Setbar(progress);
	}

	private void OnProgress(string title, float progress)
	{
		this.progress = progress;
		this.title = title;
		bg.SetActive(value: true);
		Setbar(progress);
	}

	private void OnActive(bool value)
	{
		active = value;
		bg.SetActive(value);
	}

	private void Setbar(float progress)
	{
		bar.GetComponent<Image>().fillAmount = progress;
		if (progress > 0f)
		{
			text.text = title + (int)(progress * 100f) + "%";
		}
		else
		{
			text.text = title;
		}
	}
}
