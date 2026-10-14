using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace MCT.MeshMaker;

public class K3Mesh : MeshMaker
{
	public Material mainMaterial;

	public K3Data k3Data;

	private static Font defaultFont;

	private static GameObject canvas;

	public void Create(K3Data data, Gps gps, string name)
	{
		Vector3 position = gpsToVector3(gps);
		position.y = 0f;
		Create(position, name);
		k3Data = data;
		SetMat();
	}

	public virtual float GetDistance(Vector3 point)
	{
		return 100f;
	}

	public float GetDistance(Vector3 point, List<Vector3> list, bool seal)
	{
		float num = 100f;
		if (list.Count < 2)
		{
			return num;
		}
		for (int i = 1; i < list.Count; i++)
		{
			float distance = GetDistance(point, list[i - 1], list[i]);
			if (distance < num)
			{
				num = distance;
			}
			if (seal && i == list.Count - 1)
			{
				float distance2 = GetDistance(point, list[i], list[0]);
				if (distance2 < num)
				{
					num = distance2;
				}
			}
		}
		return num;
	}

	public float GetDistance(Vector3 p, Vector3 start, Vector3 end)
	{
		if (!gameObject.activeSelf)
		{
			return 100f;
		}
		p.y = 0f;
		start.y = 0f;
		end.y = 0f;
		Vector3 vector = p - start;
		Vector3 onNormal = end - start;
		Vector3 vector2 = Vector3.Project(vector, onNormal);
		Vector3 vector3 = vector2 + start;
		float num = Vector3.Distance(p, vector3);
		Vector3 vector4 = vector3 - start;
		Vector3 to = vector3 - end;
		if (Vector3.Angle(vector4, to) < 90f || num > 5f)
		{
			return 100f;
		}
		DebugHelper.DrawLine(start, end, 10f, Color.cyan);
		DebugHelper.DrawLine(p, vector3, 10f, Color.blue);
		return num;
	}

	protected BaseMesh CreateLine(Vector3 start, Vector3 end, float width, string name)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 206;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = new List<Vector3> { start, end };
		dTxBaseData.height = height;
		dTxBaseData.width = width / 100f;
		GameObject gameObject = new GameObject(name);
		gameObject.transform.SetParent(transform);
		gameObject.transform.localPosition = Vector3.zero;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.SetMaterial(mainMaterial);
		baseMesh.transform.position = start - GetHeight() * Vector3.up;
		AddCollider(baseMesh.gameObject);
		return baseMesh;
	}

	protected void CreateObjectName(Vector3 pos, Vector3 dir, string tex, float moveLen, int fontSize = 130)
	{
		if (canvas == null)
		{
			canvas = new GameObject("ObjectName");
			canvas.transform.SetParent(GameObject.Find("Meshes").transform);
			canvas.AddComponent<Canvas>().renderMode = RenderMode.WorldSpace;
			canvas.transform.localScale = Vector3.one * 0.01f;
			canvas.AddComponent<CanvasScaler>();
			canvas.AddComponent<GraphicRaycaster>();
			canvas.GetComponent<RectTransform>().sizeDelta = new Vector2(200f, 200f);
			canvas.transform.forward = -Vector3.up;
			canvas.transform.SetSiblingIndex(0);
		}
		if (defaultFont == null)
		{
			defaultFont = Resources.GetBuiltinResource<Font>("Arial.ttf");
		}
		GameObject gameObject = new GameObject("Text");
		Text text = gameObject.AddComponent<Text>();
		gameObject.transform.SetParent(canvas.transform);
		gameObject.GetComponent<RectTransform>().sizeDelta = new Vector2(150f, 612f);
		gameObject.transform.position = pos - GetHeight() * Vector3.up;
		gameObject.transform.localScale = Vector3.one;
		gameObject.transform.forward = dir;
		gameObject.transform.Rotate(gameObject.transform.right, 90f, Space.World);
		gameObject.transform.position += gameObject.transform.up * moveLen + Vector3.up * 0.02f;
		nameText = gameObject;
		text.font = defaultFont;
		text.text = tex;
		text.fontSize = fontSize;
		text.alignment = TextAnchor.MiddleCenter;
		text.fontStyle = FontStyle.Bold;
	}

	public virtual void SetMat()
	{
		if (k3Data.mainMat == 0)
		{
			k3Data.mainMat = 14;
		}
		mainMaterial = MeshMakerManager.Instance.GetMaterial(k3Data.mainMat);
	}

	public string GetName(int id, int type, int shape = -1)
	{
		type -= 500;
		if (shape == -1)
		{
			return "type" + type + "-id" + id;
		}
		return "type" + type + "-shap" + shape + "-id" + id;
	}

	public override Vector3 gpsToVector3(Gps gps)
	{
		Vector3 result = MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
		if (!MeshMakerManager.allowAltitude)
		{
			result.y = 0f;
		}
		return result;
	}

	public override List<Vector3> gpsToVector3(List<Gps> gps)
	{
		List<Vector3> list = MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
		for (int i = 0; i < list.Count; i++)
		{
			Vector3 value = list[i];
			if (!MeshMakerManager.allowAltitude)
			{
				value.y = 0f;
			}
			list[i] = value;
		}
		return list;
	}

	public float GetHeight()
	{
		if (!MeshMakerManager.allowAltitude)
		{
			return -0.01f;
		}
		return DefaultConverter.GetHeight();
	}

	public void AddCollider(GameObject go)
	{
	}
}
