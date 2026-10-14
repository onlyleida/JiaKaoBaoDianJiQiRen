using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace MCT.MeshMaker;

public class K2Mesh : MeshMaker
{
	public Material realMaterial;

	public Material dottedMaterial;

	public K2Data k2Data;

	private static Font defaultFont;

	private static GameObject canvas;

	public void Create(Gps pos, K2Data data, string objectName)
	{
		Create(gpsToVector3(pos), objectName + "-" + MeshMakerManager.Instance.GetObjectCount(data.stepId));
		k2Data = data;
		if (data.realLineMat == 0)
		{
			data.realLineMat = 11;
		}
		if (data.dottedLineMat == 0)
		{
			data.dottedLineMat = 10;
		}
		realMaterial = MeshMakerManager.Instance.GetMaterial(data.realLineMat);
		dottedMaterial = MeshMakerManager.Instance.GetMaterial(data.dottedLineMat);
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
			end + addlen * normalized * k2Data.lineWidth / 100f
		};
		dTxBaseData.height = height;
		dTxBaseData.width = width / 100f;
		GameObject gameObject = new GameObject(name);
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (start + end) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		Material material = (isReal ? realMaterial : dottedMaterial);
		if (!isStartLine)
		{
			baseMesh.SetMaterial(material);
		}
		baseMesh.transform.position = start - addlen * normalized * k2Data.lineWidth / 200f;
		return baseMesh;
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
		Sprite sprite = MeshMakerManager.Instance.GetSprite(1);
		if (sprite != null)
		{
			image.sprite = sprite;
		}
		image.gameObject.SetActive(sprite != null);
	}

	public override Vector3 gpsToVector3(Gps gps)
	{
		Vector3 result = MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
		result.y = 0f;
		return result;
	}

	public override List<Vector3> gpsToVector3(List<Gps> gps)
	{
		List<Vector3> list = MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
		for (int i = 0; i < list.Count; i++)
		{
			Vector3 value = list[i];
			value.y = 0f;
			list[i] = value;
		}
		return list;
	}

	public CircleData GetCenter(List<Vector3> points)
	{
		CircleData circleData = new CircleData();
		if (points.Count < 3)
		{
			return circleData;
		}
		double num = 0.0;
		double num2 = 0.0;
		double num3 = 0.0;
		double num4 = 0.0;
		double num5 = 0.0;
		double num6 = 0.0;
		double num7 = 0.0;
		double num8 = 0.0;
		double num9 = 0.0;
		int count = points.Count;
		for (int i = 0; i < count; i++)
		{
			double num10 = points[i].x;
			double num11 = points[i].z;
			double num12 = num10 * num10;
			double num13 = num11 * num11;
			num += num10;
			num2 += num11;
			num3 += num12;
			num4 += num13;
			num5 += num12 * num10;
			num6 += num13 * num11;
			num7 += num10 * num11;
			num8 += num10 * num13;
			num9 += num12 * num11;
		}
		double num14 = (double)count * num3 - num * num;
		double num15 = (double)count * num7 - num * num2;
		double num16 = (double)count * num5 + (double)count * num8 - (num3 + num4) * num;
		double num17 = (double)count * num4 - num2 * num2;
		double num18 = (double)count * num9 + (double)count * num6 - (num3 + num4) * num2;
		double num19 = (num18 * num15 - num16 * num17) / (num14 * num17 - num15 * num15);
		double num20 = (num18 * num14 - num16 * num15) / (num15 * num15 - num17 * num14);
		double num21 = (0.0 - (num19 * num + num20 * num2 + num3 + num4)) / (double)count;
		double num22 = num19 / -2.0;
		double num23 = num20 / -2.0;
		circleData.radius = (float)Math.Sqrt(num19 * num19 + num20 * num20 - 4.0 * num21) / 2f;
		circleData.center = new Vector3((float)num22, 0f, (float)num23);
		return circleData;
	}
}
