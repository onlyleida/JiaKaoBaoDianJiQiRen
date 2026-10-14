using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace MCT.MeshMaker;

public class B2Mesh : MeshMaker
{
	public Material realMaterial;

	public Material dashedMaterial;

	public B2Data b2Data;

	private static Font defaultFont;

	private static GameObject canvas;

	public void Create(Gps pos, B2Data data, string objectName)
	{
		Create(gpsToVector3(pos), objectName + "-" + MeshMakerManager.Instance.GetObjectCount(data.stepId));
		b2Data = data;
		if (data.realLineMat == 0)
		{
			data.realLineMat = 11;
		}
		if (data.dottedLineMat == 0)
		{
			data.dottedLineMat = 10;
		}
		realMaterial = MeshMakerManager.Instance.GetMaterial(data.realLineMat);
		dashedMaterial = MeshMakerManager.Instance.GetMaterial(data.dottedLineMat);
		Vector3 vector = gpsToVector3(data.start1);
		Vector3 vector2 = gpsToVector3(data.start2);
		if (vector != Vector3.zero && vector2 != Vector3.zero && Vector3.Distance(vector, vector2) > 0.1f)
		{
			CreateLine(vector, vector2, isReal: false, data.lineWidth, objectName + "-Reader", 0, isStartLine: true).gameObject.SetActive(MeshMakerManager.isShowStartLine);
		}
	}

	protected BaseMesh CreateLine(Vector3 start, Vector3 end, bool isReal, float width, string name, int addlen = 0, bool isStartLine = false)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		Vector3 normalized = (end - start).normalized;
		dTxBaseData.points = new List<Vector3>
		{
			start,
			end + addlen * normalized * b2Data.lineWidth / 100f
		};
		dTxBaseData.height = height;
		dTxBaseData.width = width / 100f;
		GameObject gameObject = new GameObject(name);
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (start + end) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		Material material = (isReal ? realMaterial : dashedMaterial);
		if (!isStartLine)
		{
			baseMesh.SetMaterial(material);
		}
		baseMesh.transform.position = start - addlen * normalized * b2Data.lineWidth / 200f;
		return baseMesh;
	}

	protected void CreateCylinder(string name, Vector3 pos, float size, float height)
	{
		GameObject gameObject = GameObject.CreatePrimitive(PrimitiveType.Cylinder);
		gameObject.transform.SetParent(transform);
		gameObject.gameObject.name = name;
		gameObject.transform.localScale = new Vector3(size, height / 2f, size);
		gameObject.transform.position = pos + Vector3.up * height / 2f;
		gameObject.GetComponent<MeshRenderer>().material = realMaterial;
		gameObject.GetComponent<MeshRenderer>().material.SetTextureScale("_MainTex", new Vector2(1f, height * 2f));
		gameObject.GetComponent<CapsuleCollider>().enabled = false;
	}

	protected void CreateObjectName(Vector3 pos, Vector3 dir, string tex, float moveLen = 0.5f, float width = 300f, float height = 100f, int fontSize = 60)
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
		gameObject.GetComponent<RectTransform>().sizeDelta = new Vector2(width, height);
		gameObject.transform.position = pos;
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
		GameObject gameObject2 = new GameObject("Image");
		Image image = gameObject2.AddComponent<Image>();
		image.transform.SetParent(gameObject.transform);
		image.GetComponent<RectTransform>().sizeDelta = new Vector2(300f, 300f);
		image.transform.localPosition = Vector3.up * 150f;
		image.transform.localScale = Vector3.one;
		image.transform.localEulerAngles = new Vector3(0f, 0f, 90f);
		image.sprite = MeshMakerManager.Instance.GetSprite(1);
	}

	public override Vector3 gpsToVector3(Gps gps)
	{
		Vector3 result = MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
		result.y = 0f;
		return result;
	}

	public override List<Vector3> gpsToVector3(List<Gps> gps)
	{
		if (gps == null || gps.Count == 0)
		{
			return null;
		}
		List<Vector3> list = MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
		for (int i = 0; i < list.Count; i++)
		{
			Vector3 value = list[i];
			value.y = 0f;
			list[i] = value;
		}
		return list;
	}
}
