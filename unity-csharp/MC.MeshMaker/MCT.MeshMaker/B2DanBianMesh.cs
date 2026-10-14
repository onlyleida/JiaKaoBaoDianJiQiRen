using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2DanBianMesh : B2Mesh
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

	private Vector3 point11;

	private Vector3 point12;

	public B2DanBianMesh Create(B2DanBian data)
	{
		Create(data.gps1, data, "DBQ");
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
		point11 = gpsToVector3(data.gps11);
		point12 = gpsToVector3(data.gps12);
		CreateLine(Point1(), Point12(), isReal: true, data.lineWidth, "DBQ-Line-1-12");
		CreateLine(Point2(), Point11(), isReal: true, data.lineWidth, "DBQ-Line-2-11");
		CreateLine(Point1(), Point2(), isReal: true, data.lineWidth, "DBQ-Line-1-2", -1);
		CreateLine(Point11(), Point12(), isReal: true, data.lineWidth, "DBQ-Line-11-2", -1);
		CreateBrige(point4, point3, point6, point5);
		CreateBrige(point7, point8, point9, point10);
		CreateObjectName((Point1() + Point2()) / 2f, Point12() - Point1(), "单边桥");
		return this;
	}

	private void CreateBrige(Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3)
	{
		List<Vector3> points = new List<Vector3> { p0, p1, p2, p3 };
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.points = points;
		dTxBaseData.height = 0.1f;
		dTxBaseData.width = 0.65f;
		dTxBaseData.type = 207;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.gameObject.name = "platform";
		baseMesh.SetMaterial(MeshMakerManager.Instance.GetMaterial(8));
		baseMesh.transform.position = p0;
	}

	public override Vector3 CenterPoint()
	{
		B2DanBian b2DanBian = (B2DanBian)b2Data;
		return (gpsToVector3(b2DanBian.gps1) + gpsToVector3(b2DanBian.gps2)) / 2f;
	}

	public Vector3 Point1()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point1 - point2;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point1;
	}

	public Vector3 Point2()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point2 - point1;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point2;
	}

	public Vector3 Point11()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point11 - point12;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point11;
	}

	public Vector3 Point12()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point12 - point11;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point12;
	}
}
