using System;
using UnityEngine;

namespace MCT.PlatformCOM;

public class AndroidCOM : MonoBehaviour
{
	public static bool test = true;

	private static AndroidJavaClass android = null;

	private static AndroidJavaObject activity = null;

	public static string CallFromUnity(string content)
	{
		if (!test)
		{
			return "";
		}
		try
		{
			_ = Time.realtimeSinceStartup;
			if (android == null)
			{
				android = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
				activity = android.GetStatic<AndroidJavaObject>("currentActivity");
			}
			string text = activity.Call<string>("CallFromUnity", new object[1] { content });
			if (string.IsNullOrEmpty(text))
			{
				return "";
			}
			PlatformCOMProxy.Instance.SendMessage2Unity(text);
			return text;
		}
		catch (Exception ex)
		{
			Debug.Log("android return data error :" + ex.Message);
			return "";
		}
	}

	public void CallFromNative(string content)
	{
		if (test && !string.IsNullOrEmpty(content))
		{
			PlatformCOMProxy.Instance.SendMessage2Unity(content);
		}
	}

	private void OnDestroy()
	{
		android = null;
		activity = null;
	}
}
