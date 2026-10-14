using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

namespace MCT.HttpManage;

public class HttpManager : MonoBehaviour
{
	public delegate void LoadBack(object obj);

	public delegate void ProgressBack(float obj);

	public static HttpManager Instance;

	private void Awake()
	{
		Instance = this;
	}

	public void LoadUrlRes(HMxDownloadType type, string path, LoadBack func, ProgressBack progressback = null)
	{
		if (!string.IsNullOrEmpty(path))
		{
			StartCoroutine(ILoadRes(type, path, func, progressback));
		}
	}

	private IEnumerator ILoadRes(HMxDownloadType type, string path, LoadBack func, ProgressBack progressback = null)
	{
		switch (type)
		{
		case HMxDownloadType.bundle:
		{
			UnityWebRequest req = UnityWebRequestAssetBundle.GetAssetBundle(path);
			UnityWebRequestAsyncOperation async = req.SendWebRequest();
			if (progressback != null)
			{
				while (!async.isDone)
				{
					progressback(req.downloadProgress);
					yield return null;
				}
				progressback(1f);
			}
			else
			{
				yield return async;
			}
			func?.Invoke((req.downloadHandler as DownloadHandlerAssetBundle).assetBundle);
			req.Dispose();
			break;
		}
		case HMxDownloadType.texture:
		{
			UnityWebRequest req = UnityWebRequestTexture.GetTexture(path);
			UnityWebRequestAsyncOperation async = req.SendWebRequest();
			if (progressback != null)
			{
				while (!async.isDone)
				{
					progressback(req.downloadProgress);
					yield return null;
				}
				progressback(1f);
			}
			else
			{
				yield return async;
			}
			Texture2D texture = (req.downloadHandler as DownloadHandlerTexture).texture;
			func?.Invoke(texture);
			req.Dispose();
			break;
		}
		case HMxDownloadType.text:
		{
			UnityWebRequest req = UnityWebRequest.Get(path);
			UnityWebRequestAsyncOperation async = req.SendWebRequest();
			if (progressback != null)
			{
				while (!async.isDone)
				{
					progressback(req.downloadProgress);
					yield return null;
				}
				progressback(1f);
			}
			else
			{
				yield return async;
			}
			func?.Invoke(req.downloadHandler.text);
			req.Dispose();
			break;
		}
		case HMxDownloadType.bytes:
		{
			UnityWebRequest req = UnityWebRequest.Get(path);
			UnityWebRequestAsyncOperation async = req.SendWebRequest();
			if (progressback != null)
			{
				while (!async.isDone)
				{
					progressback(req.downloadProgress);
					yield return null;
				}
				progressback(1f);
			}
			else
			{
				yield return async;
			}
			func?.Invoke(req.downloadHandler.data);
			req.Dispose();
			break;
		}
		}
		Resources.UnloadUnusedAssets();
	}
}
