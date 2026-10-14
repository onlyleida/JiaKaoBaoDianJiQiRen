using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3CenterCircleMesh : K3Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	private int shape;

	public K3CenterCircleMesh Create(K3CenterCircle data)
	{
		shape = data.shape;
		if (data.shape == ShapeType.Center_Circle_Rhombus || data.shape == 2)
		{
			return CreateLingXing(data);
		}
		if (data.shape == ShapeType.Center_Circle_Round || data.shape == 1)
		{
			return CreateCircle(data);
		}
		return null;
	}

	public override float GetDistance(Vector3 point)
	{
		if (shape == ShapeType.Center_Circle_Rhombus || shape == 2)
		{
			return GetDistance(point, new List<Vector3> { point1, point2, point3, point4 }, seal: true);
		}
		if (shape == ShapeType.Center_Circle_Round || shape == 1)
		{
			return GetDistance(point, new List<Vector3> { point1, point2, point3 }, seal: true);
		}
		return 100f;
	}

	private K3CenterCircleMesh CreateLingXing(K3CenterCircle data)
	{
		string name = GetName(data.id, data.type, data.shape);
		Create(data, data.p1, name);
		point1 = gpsToVector3(data.p1);
		point2 = gpsToVector3(data.p2);
		point3 = gpsToVector3(data.p3);
		point4 = gpsToVector3(data.p4);
		CreateLine(point1, point2, 20f, "LingXing_0");
		CreateLine(point2, point3, 20f, "LingXing_1");
		CreateLine(point3, point4, 20f, "LingXing_2");
		CreateLine(point4, point1, 20f, "LingXing_3");
		CreateObjectName((point1 + point2) / 2f, point3 - point2, "菱形", 0f);
		return this;
	}

	private K3CenterCircleMesh CreateCircle(K3CenterCircle data)
	{
		string name = GetName(data.id, data.type, data.shape);
		Create(data, data.p1, name);
		point1 = gpsToVector3(data.p1);
		point2 = gpsToVector3(data.p2);
		point3 = gpsToVector3(data.p3);
		CreateLine(point1, point2, 20f, "Circle_0");
		CreateLine(point2, point3, 20f, "Circle_1");
		CreateLine(point3, point1, 20f, "Circle_2");
		CreateObjectName((point1 + point2) / 2f, point3 - point2, "圆", 0f);
		return this;
	}

	private void CreateConvex(K3Common data)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 205;
		dTxBaseData.points = new List<Vector3>(gpsToVector3(data.points));
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.gameObject.AddComponent<MeshCollider>();
		baseMesh.transform.localPosition = Vector3.zero;
		Material material = Resources.Load("base_other/Material/common_mat") as Material;
		if (material != null)
		{
			Color red = Color.red;
			red.a = 0.5f;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material = material;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetColor("_Color", red);
		}
	}

	public override Vector3 CenterPoint()
	{
		return (point1 + point2 + point3) / 3f;
	}
}
