using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2BaZiMesh : K2Mesh
{
	private List<Vector3> leftInnerPoints;

	private List<Vector3> leftOutPoints;

	private List<Vector3> rightInnerPoints;

	private List<Vector3> rightOutPoints;

	private float density = 100f;

	private Vector3 center0;

	private Vector3 center1;

	public K2BaZiMesh Create(K2BaZi data)
	{
		Create(data.leftInnerPoints[0], data, "YQ");
		leftInnerPoints = gpsToVector3(data.leftInnerPoints);
		leftOutPoints = gpsToVector3(data.leftOutPoints);
		rightInnerPoints = gpsToVector3(data.rightInnerPoints);
		rightOutPoints = gpsToVector3(data.rightOutPoints);
		center0 = GetCenter(leftOutPoints).center;
		center1 = GetCenter(rightOutPoints).center;
		DrawCircle(leftInnerPoints, inner: true, data.innerLineType == 0, "BZ-Line-1");
		DrawCircle(leftOutPoints, inner: false, data.outLineType == 0, "BZ-Line-2");
		DrawCircle(rightInnerPoints, inner: true, data.innerLineType == 0, "BZ-Line-3");
		DrawCircle(rightOutPoints, inner: false, data.outLineType == 0, "BZ-Line-4");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		CircleData center = GetCenter(leftInnerPoints);
		return center.center;
	}

	private void DrawCircle(List<Vector3> catchPoints, bool inner, bool isDashed, string name)
	{
		CircleData center = GetCenter(catchPoints);
		Vector3 vector = ((Vector3.Distance(center0, center.center) < 1f) ? center1 : center0);
		Vector3 vector2 = vector - center.center;
		float num = Vector3.Angle(vector2, catchPoints[0] - center.center);
		List<Vector3> list = new List<Vector3>();
		for (int i = 0; (float)i <= density; i++)
		{
			float num2 = 360f / density;
			Vector3 vector3 = Quaternion.AngleAxis(num2 * (float)i, Vector3.up) * vector2.normalized;
			if (inner)
			{
				list.Add(center.center + vector3 * (center.radius - k2Data.lineWidth / 200f));
			}
			else
			{
				list.Add(center.center + vector3 * (center.radius + k2Data.lineWidth / 200f));
			}
		}
		if (!inner)
		{
			for (int num3 = list.Count - 1; num3 >= 0; num3--)
			{
				float num4 = Vector3.Angle(list[num3] - center.center, vector2);
				if (num4 < num)
				{
					list.Remove(list[num3]);
				}
			}
		}
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = list;
		dTxBaseData.height = 0.02f;
		dTxBaseData.width = k2Data.lineWidth / 100f;
		GameObject gameObject = new GameObject(name);
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = center.center;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		if (isDashed)
		{
			baseMesh.SetMaterial(realMaterial);
		}
		else
		{
			baseMesh.SetMaterial(dottedMaterial);
		}
	}
}
