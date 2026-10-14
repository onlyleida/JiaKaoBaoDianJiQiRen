using UnityEngine;

namespace MCT.MeshMaker;

public class B2QiFuMesh : B2Mesh
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

	public B2QiFuMesh Create(B2QiFu data)
	{
		Create(data.gps1, data, "QF");
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
		CreateLine(Point1(), Point2(), isReal: false, b2Data.lineWidth, "QF-Line-1-2", -1);
		CreateLine(Point11(), Point12(), isReal: false, b2Data.lineWidth, "QF-Line-11-12", -1);
		CreateLine(Point1(), Point12(), isReal: true, b2Data.lineWidth, "QF-Line-1-12", 1);
		CreateLine(Point2(), Point11(), isReal: true, b2Data.lineWidth, "QF-Line-2-1", 1);
		CreateObjectName((Point1() + Point2()) / 2f, Point12() - Point1(), "起伏路段");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		B2QiFu b2QiFu = (B2QiFu)b2Data;
		return (gpsToVector3(b2QiFu.gps1) + gpsToVector3(b2QiFu.gps2)) / 2f;
	}

	public Vector3 Point1()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point1 - point4;
		Vector3 vector2 = point1 - point2;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point1;
	}

	public Vector3 Point2()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point2 - point3;
		Vector3 vector2 = point2 - point1;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point2;
	}

	public Vector3 Point11()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point11 - point12;
		Vector3 vector2 = point11 - point10;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point11;
	}

	public Vector3 Point12()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point12 - point11;
		Vector3 vector2 = point12 - point9;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point12;
	}
}
