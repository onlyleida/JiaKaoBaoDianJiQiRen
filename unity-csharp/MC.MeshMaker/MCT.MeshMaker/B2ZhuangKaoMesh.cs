using UnityEngine;

namespace MCT.MeshMaker;

public class B2ZhuangKaoMesh : B2Mesh
{
	public Vector3 point1;

	public Vector3 point2;

	public Vector3 point3;

	public Vector3 point4;

	public Vector3 point5;

	public Vector3 point6;

	public Vector3 point7;

	public Vector3 point8;

	public Vector3 point9;

	public Vector3 point10;

	public Vector3 pointB3;

	public Vector3 pointB4;

	public Vector3 pointB5;

	public Vector3 pointB6;

	public Vector3 pointB7;

	public Vector3 pointB8;

	public B2ZhuangKaoMesh Create(B2ZhuangKao data)
	{
		Create(data.gps1, data, "ZK");
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
		pointB3 = gpsToVector3(data.gpsB3);
		pointB4 = gpsToVector3(data.gpsB4);
		pointB5 = gpsToVector3(data.gpsB5);
		pointB6 = gpsToVector3(data.gpsB6);
		pointB7 = gpsToVector3(data.gpsB7);
		pointB8 = gpsToVector3(data.gpsB8);
		CreateLine(Point1(), Point2(), isReal: false, data.lineWidth, "ZK-Line-1-2", -1);
		CreateLine(Point9(), Point10(), isReal: false, data.lineWidth, "ZK-Line-9-10", -1);
		CreateLine(Point3(), Point7(), isReal: false, data.lineWidth, "ZK-Line-3-7", -1);
		CreateLine(Point5(), Point6(), isReal: false, data.lineWidth, "ZK-Line-5-6", -1);
		CreateLine(Point1(), Point10(), isReal: true, data.lineWidth, "ZK-Line-1-10", 1);
		CreateLine(Point2(), Point3(), isReal: true, data.lineWidth, "ZK-Line-2-3", 1);
		CreateLine(Point3(), Point4(), isReal: true, data.lineWidth, "ZK-Line-3-4", -1);
		CreateLine(Point4(), Point8(), isReal: true, data.lineWidth, "ZK-Line-4-8", 1);
		CreateLine(Point7(), Point8(), isReal: true, data.lineWidth, "ZK-Line-7-8", -1);
		CreateLine(Point7(), Point9(), isReal: true, data.lineWidth, "ZK-Line-7-9", 1);
		CreateCylinder("pole3", pointB3, data.poleRadius / 100f, 5f);
		CreateCylinder("pole4", pointB4, data.poleRadius / 100f, 5f);
		CreateCylinder("pole5", pointB5, data.poleRadius / 100f, 5f);
		CreateCylinder("pole6", pointB6, data.poleRadius / 100f, 5f);
		CreateCylinder("pole7", pointB7, data.poleRadius / 100f, 5f);
		CreateCylinder("pole8", pointB8, data.poleRadius / 100f, 5f);
		CreateObjectName((Point1() + Point2()) / 2f, Point10() - Point1(), "桩考");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		B2ZhuangKao b2ZhuangKao = (B2ZhuangKao)b2Data;
		return (gpsToVector3(b2ZhuangKao.gps2) + gpsToVector3(b2ZhuangKao.gps9)) / 2f;
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

	public Vector3 Point3()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point6;
		Vector3 vector2 = point3 - point4;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point3;
	}

	public Vector3 Point4()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point4 - point3;
		Vector3 vector2 = point4 - point5;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point4;
	}

	public Vector3 Point5()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point5 - point4;
		Vector3 vector2 = point5 - point6;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point5;
	}

	public Vector3 Point6()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point6 - point5;
		Vector3 vector2 = point6 - point3;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point6;
	}

	public Vector3 Point7()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point7 - point6;
		Vector3 vector2 = point7 - point8;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point7;
	}

	public Vector3 Point8()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point8 - point7;
		Vector3 vector2 = point8 - point5;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point8;
	}

	public Vector3 Point9()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point9 - point10;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point9;
	}

	public Vector3 Point10()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point10 - point9;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point10;
	}
}
