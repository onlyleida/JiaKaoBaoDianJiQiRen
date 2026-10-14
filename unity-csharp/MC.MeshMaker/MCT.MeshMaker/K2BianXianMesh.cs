using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2BianXianMesh : K2Mesh
{
	private List<Vector3> points;

	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	public K2BianXianMesh Create(K2BianXian data)
	{
		Create(data.gps1, data, "BBLX");
		List<Vector3> list = MoveRight(gpsToVector3(data.points));
		CreateLine(list, data.lineWidth);
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gps3);
		point4 = gpsToVector3(data.gps4);
		CreateLine(point1, point2, isReal: false, data.lineWidth, "BBLX-Line-1-2");
		CreateLine(point3, point4, isReal: false, data.lineWidth, "BBLX-Line-3-4");
		CreateObjectName((point1 + point2) / 2f, list[1] - list[0], "边线练习", 1f, 600f, 130f, 100);
		return this;
	}

	protected void CreateLine(List<Vector3> points, float width)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = points;
		dTxBaseData.height = height;
		dTxBaseData.width = width / 100f;
		GameObject gameObject = new GameObject("BBLX-LineData-0");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = points[0];
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	public List<Vector3> MoveRight(List<Vector3> points)
	{
		for (int i = 0; i < points.Count - 1; i++)
		{
			Vector3 vector = points[i + 1] - points[i];
			Vector3 normalized = (Quaternion.AngleAxis(90f, Vector3.up) * vector).normalized;
			points[i] += normalized.normalized * k2Data.lineWidth / 100f / 2f;
			if (i == points.Count - 2)
			{
				points[i + 1] += normalized.normalized * k2Data.lineWidth / 100f / 2f;
			}
		}
		return points;
	}

	public override Vector3 CenterPoint()
	{
		K2BianXian k2BianXian = (K2BianXian)k2Data;
		return (gpsToVector3(k2BianXian.gps1) + gpsToVector3(k2BianXian.gps2)) / 2f;
	}
}
