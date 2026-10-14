using System;
using System.Reflection;
using LitJson;
using MC.Simple.Json;
using MC.Simple.MessageCenter;
using MCT.PlatformCOM;
using UnityEngine;

public class StartMamager : MonoBehaviour
{
	private static Assembly assembly;

	private string logicKey = "100";

	private string uiKey = "101";

	private void Awake()
	{
		gameObject.AddComponent<PlatformCOMProxy>().Init(new DTxDispense());
		MessagerCenter<string>.Register("ANDROID_MESSAGE", OnAndroidMessage);
		SendReq(100);
	}

	private void Start()
	{
	}

	private void OnAndroidMessage(string content)
	{
		try
		{
			DTxHead dTxHead = SimpleJson.ToObject<DTxHead>(content);
			if (dTxHead.id == 100 && dTxHead.code == 0 && dTxHead.data != null)
			{
				Debug.Log("logic file:" + content);
				DTxInitPath dTxInitPath = SimpleJson.ToObject<DTxInitPath>(dTxHead.data.ToJson());
				if (!dTxInitPath.pathMap.ContainsKey(logicKey))
				{
					Debug.Log("no logic file!");
					SendErrorLog("没有逻辑资源:" + content);
					SendReq(101);
					return;
				}
				if (!dTxInitPath.pathMap.ContainsKey(uiKey))
				{
					Debug.Log("no ui file!");
					SendErrorLog("没有ui资源:" + content);
					SendReq(101);
					return;
				}
				assembly = Assembly.LoadFrom(dTxInitPath.pathMap[logicKey]);
				Type type = assembly.GetType("CTxAppManager");
				gameObject.AddComponent(type);
				type.GetMethod("SetInfo").Invoke(null, new object[2]
				{
					assembly,
					dTxInitPath.pathMap[uiKey]
				});
				MessagerCenter<string>.UnRegister("ANDROID_MESSAGE", OnAndroidMessage);
			}
		}
		catch (Exception ex)
		{
			MessagerCenter<string, float>.Broadcast("loading_panel_progress", "读取逻辑资源失败", 0f);
			Debug.LogException(ex);
			SendErrorLog("读取逻辑资源失败:" + ex.Message + "---" + ex.StackTrace);
			SendReq(101);
		}
	}

	public static void SendReq(int comid, object obj = null)
	{
		DTxHead dTxHead = new DTxHead();
		dTxHead.id = comid;
		if (obj != null)
		{
			string json = SimpleJson.ToJson(obj);
			dTxHead.data = JsonMapper.ToObject(json);
		}
		else
		{
			dTxHead.data = new JsonData();
		}
		AndroidCOM.CallFromUnity(SimpleJson.ToJson(dTxHead));
	}

	public static void SendErrorLog(string log)
	{
		Debug.Log("发送错误日志：" + log);
		SendReq(20011, new DTxErrorLog(log));
	}
}
