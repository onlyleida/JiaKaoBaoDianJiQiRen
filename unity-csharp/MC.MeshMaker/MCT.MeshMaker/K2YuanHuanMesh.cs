using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2YuanHuanMesh : K2Mesh
{
	private List<Vector3> innerPoints;

	private List<Vector3> outPoints;

	private float density = 100f;

	public K2YuanHuanMesh Create(K2YuanHuan data)
	{
		Create(data.innerPoints[0], data, "YQ");
		innerPoints = gpsToVector3(data.innerPoints);
		outPoints = gpsToVector3(data.outPoints);
		DrawCircle(innerPoints, inner: true, data.innerLineType == 0, "YQ-Line-1");
		DrawCircle(outPoints, inner: false, data.outLineType == 0, "YQ-Line-2");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		CircleData center = GetCenter(innerPoints);
		return center.center;
	}

	private void DrawCircle(List<Vector3> catchPoints, bool inner, bool isDashed, string name)
	{
		CircleData center = GetCenter(catchPoints);
		List<Vector3> list = new List<Vector3>();
		for (int i = 0; (float)i <= density; i++)
		{
			float num = 360f / density;
			Vector3 vector = Quaternion.AngleAxis(num * (float)i, Vector3.up) * Vector3.forward;
			if (inner)
			{
				list.Add(center.center + vector * (center.radius - k2Data.lineWidth / 200f));
			}
			else
			{
				list.Add(center.center + vector * (center.radius + k2Data.lineWidth / 200f));
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
