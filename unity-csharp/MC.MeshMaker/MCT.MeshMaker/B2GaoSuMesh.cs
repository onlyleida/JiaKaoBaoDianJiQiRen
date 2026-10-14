using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2GaoSuMesh : B2Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	private Vector3 point5;

	private Vector3 point6;

	private Vector3 point7;

	private Vector3 point8;

	private Vector3 point9;

	private Vector3 point10;

	private List<Vector3> leftPoints;

	private List<Vector3> rightPoints;

	private List<Vector3> middlePoints;

	public Vector3 line0Gps1;

	public Vector3 line0Gps2;

	public Vector3 line50Gps1;

	public Vector3 line50Gps2;

	public Vector3 line100Gps1;

	public Vector3 line100Gps2;

	public Vector3 line150Gps1;

	public Vector3 line150Gps2;

	public Vector3 line200Gps1;

	public Vector3 line200Gps2;

	public B2GaoSuMesh Create(B2GaoSu data)
	{
		Create(data.gps1, data, "GS");
		List<Vector3> posList = MeshMaker.cutPoints(gpsToVector3(data.leftPoints));
		List<Vector3> posList2 = MeshMaker.cutPoints(gpsToVector3(data.rightPoints));
		List<Vector3> posList3 = MeshMaker.cutPoints(gpsToVector3(data.middlePoints));
		leftPoints = MoveLeft(MeshMaker.trimQua(posList));
		rightPoints = MoveRight(MeshMaker.trimQua(posList2));
		middlePoints = MoveRight(MeshMaker.trimQua(posList3));
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gps3);
		point4 = gpsToVector3(data.gps4);
		point5 = gpsToVector3(data.gps5);
		point6 = gpsToVector3(data.gps6);
		point7 = gpsToVector3(data.gps7);
		point8 = gpsToVector3(data.gps8);
		point9 = gpsToVector3(data.gps9);
		point10 = gpsToVector3(data.gps10);
		line0Gps1 = gpsToVector3(data.line0Gps1);
		line0Gps2 = gpsToVector3(data.line0Gps2);
		line50Gps1 = gpsToVector3(data.line50Gps1);
		line50Gps2 = gpsToVector3(data.line50Gps2);
		line100Gps1 = gpsToVector3(data.line100Gps1);
		line100Gps2 = gpsToVector3(data.line100Gps2);
		line150Gps1 = gpsToVector3(data.line150Gps1);
		line150Gps2 = gpsToVector3(data.line150Gps2);
		line200Gps1 = gpsToVector3(data.line200Gps1);
		line200Gps2 = gpsToVector3(data.line200Gps2);
		CreateLeft(data);
		CreateRight(data);
		CreateMiddle(data);
		CreateStartEnd(data);
		CreateLine(Point1(), Point2(), isReal: false, b2Data.lineWidth, "GS-Line-1-2");
		if (point3 != Vector3.zero && point4 != Vector3.zero)
		{
			CreateLine(Point3(), Point4(), isReal: false, b2Data.lineWidth, "GS-Line-3-4");
		}
		if (point4 != Vector3.zero && point5 != Vector3.zero)
		{
			CreateLine(Point4(), Point5(), isReal: true, b2Data.lineWidth, "GS-Line-4-5");
		}
		if (point5 != Vector3.zero && point6 != Vector3.zero)
		{
			CreateLine(Point5(), Point6(), isReal: true, b2Data.lineWidth, "GS-Line-5-6");
		}
		if (point6 != Vector3.zero && point7 != Vector3.zero)
		{
			CreateLine(Point6(), Point7(), isReal: true, b2Data.lineWidth, "GS-Line-6-7");
		}
		if (point7 != Vector3.zero && point8 != Vector3.zero)
		{
			CreateLine(Point7(), Point8(), isReal: false, b2Data.lineWidth, "GS-Line-7-8");
		}
		CreateLine(Point9(), Point10(), isReal: false, b2Data.lineWidth, "GS-Line-9-10");
		if (line0Gps1 != Vector3.zero)
		{
			CreateCylinder("line0Gps1  ", line0Gps1, 0.3f, 5f);
		}
		if (line0Gps2 != Vector3.zero)
		{
			CreateCylinder("line0Gps2  ", line0Gps2, 0.3f, 5f);
		}
		if (line50Gps1 != Vector3.zero)
		{
			CreateCylinder("line50Gps1 ", line50Gps1, 0.3f, 5f);
		}
		if (line50Gps2 != Vector3.zero)
		{
			CreateCylinder("line50Gps2 ", line50Gps2, 0.3f, 5f);
		}
		if (line100Gps1 != Vector3.zero)
		{
			CreateCylinder("line100Gps1", line100Gps1, 0.3f, 5f);
		}
		if (line100Gps2 != Vector3.zero)
		{
			CreateCylinder("line100Gps2", line100Gps2, 0.3f, 5f);
		}
		if (line150Gps1 != Vector3.zero)
		{
			CreateCylinder("line150Gps1", line150Gps1, 0.3f, 5f);
		}
		if (line150Gps2 != Vector3.zero)
		{
			CreateCylinder("line150Gps2", line150Gps2, 0.3f, 5f);
		}
		if (line200Gps1 != Vector3.zero)
		{
			CreateCylinder("line200Gps1", line200Gps1, 0.3f, 5f);
		}
		return this;
	}

	public override Vector3 CenterPoint()
	{
		B2GaoSu b2GaoSu = (B2GaoSu)b2Data;
		return (gpsToVector3(b2GaoSu.rightPoints[0]) + gpsToVector3(b2GaoSu.leftPoints[0])) / 2f;
	}

	protected void CreateLeft(B2GaoSu data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = leftPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("GS-Line-1");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.leftPoints[0]) + gpsToVector3(data.leftPoints[data.leftPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateRight(B2GaoSu data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = rightPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("GS-Line-2");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.rightPoints[0]) + gpsToVector3(data.rightPoints[data.rightPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateMiddle(B2GaoSu data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = middlePoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("GS-Line-3");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.middlePoints[0]) + gpsToVector3(data.middlePoints[data.middlePoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(dashedMaterial);
	}

	protected void CreateStartEnd(B2GaoSu data)
	{
		Gps gps = data.leftPoints[0];
		Gps gps2 = data.rightPoints[0];
		Gps gps3 = data.leftPoints[data.leftPoints.Count - 1];
		Gps gps4 = data.rightPoints[data.rightPoints.Count - 1];
		CreateLine(gpsToVector3(gps), gpsToVector3(gps2), isReal: false, data.lineWidth, "GS-Start", -1);
		CreateLine(gpsToVector3(gps3), gpsToVector3(gps4), isReal: false, data.lineWidth, "GS-End", -1);
		CreateObjectName((gpsToVector3(gps) + gpsToVector3(gps2)) / 2f, Quaternion.AngleAxis(90f, Vector3.up) * (gpsToVector3(gps) - gpsToVector3(gps2)), "高速", -0.5f);
	}

	public List<Vector3> MoveLeft(List<Vector3> points)
	{
		for (int i = 0; i < points.Count - 1; i++)
		{
			Vector3 vector = points[i + 1] - points[i];
			Vector3 normalized = (Quaternion.AngleAxis(90f, Vector3.up) * vector).normalized;
			points[i] -= normalized.normalized * b2Data.lineWidth / 100f / 2f;
			if (i == points.Count - 2)
			{
				points[i + 1] -= normalized.normalized * b2Data.lineWidth / 100f / 2f;
			}
		}
		return points;
	}

	public List<Vector3> MoveRight(List<Vector3> points)
	{
		for (int i = 0; i < points.Count - 1; i++)
		{
			Vector3 vector = points[i + 1] - points[i];
			Vector3 normalized = (Quaternion.AngleAxis(90f, Vector3.up) * vector).normalized;
			points[i] += normalized.normalized * b2Data.lineWidth / 100f / 2f;
			if (i == points.Count - 2)
			{
				points[i + 1] += normalized.normalized * b2Data.lineWidth / 100f / 2f;
			}
		}
		return points;
	}

	public Vector3 Point1()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point1;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point1;
	}

	public Vector3 Point2()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point4 - point2;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point2;
	}

	public Vector3 Point3()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point1 - point3;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point3;
	}

	public Vector3 Point4()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point2 - point4;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point4;
	}

	public Vector3 Point5()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point5 - point6;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point5;
	}

	public Vector3 Point6()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point6 - point5;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point6;
	}

	public Vector3 Point7()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point7 - point4;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point7;
	}

	public Vector3 Point8()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point8 - point3;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point8;
	}

	public Vector3 Point9()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point9 - point8;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point9;
	}

	public Vector3 Point10()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point10 - point7;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point10;
	}
}
