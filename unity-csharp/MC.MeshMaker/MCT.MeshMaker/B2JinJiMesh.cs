using UnityEngine;

namespace MCT.MeshMaker;

public class B2JinJiMesh : B2Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	private Vector3 point5;

	private Vector3 point6;

	public B2JinJiMesh Create(B2JinJi data)
	{
		Create(data.gps1, data, "JJQK");
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gps3);
		point4 = gpsToVector3(data.gps4);
		point5 = gpsToVector3(data.gps5);
		point6 = gpsToVector3(data.gps6);
		CreateLine(Point1(), Point2(), isReal: false, data.lineWidth, "JJQK-Line-1-2", -1);
		CreateLine(Point3(), Point4(), isReal: false, data.lineWidth, "JJQK-Line-3-4", -1);
		CreateLine(Point5(), Point6(), isReal: false, data.lineWidth, "JJQK-Line-5-6", -1);
		CreateLine(Point1(), Point5(), isReal: true, data.lineWidth, "JJQK-Line-1-5", 1);
		CreateLine(Point2(), Point6(), isReal: true, data.lineWidth, "JJQK-Line-2-6", 1);
		CreateObjectName((Point1() + Point2()) / 2f, Point6() - Point2(), "紧急情况");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		B2JinJi b2JinJi = (B2JinJi)b2Data;
		return (gpsToVector3(b2JinJi.gps1) + gpsToVector3(b2JinJi.gps2) + gpsToVector3(b2JinJi.gps5) + gpsToVector3(b2JinJi.gps6)) / 4f;
	}

	public Vector3 Point1()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point1 - point2;
		Vector3 vector2 = point1 - point5;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point1;
	}

	public Vector3 Point2()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point2 - point1;
		Vector3 vector2 = point2 - point6;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point2;
	}

	public Vector3 Point3()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point4;
		Vector3 vector2 = point3 - point2;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point3;
	}

	public Vector3 Point4()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point4 - point1;
		Vector3 vector2 = point4 - point3;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point4;
	}

	public Vector3 Point5()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point5 - point1;
		Vector3 vector2 = point5 - point6;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point5;
	}

	public Vector3 Point6()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point6 - point2;
		Vector3 vector2 = point6 - point5;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point6;
	}
}
