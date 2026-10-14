using UnityEngine;

namespace MCT.MeshMaker;

public class B2CeFangMesh : B2Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	private Vector3 point5;

	private Vector3 point6;

	private Vector3 point7;

	private Vector3 point8;

	public B2CeFangMesh Create(B2CeFang data)
	{
		Create(data.gps1, data, "CFTC");
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gps3);
		point4 = gpsToVector3(data.gps4);
		point5 = gpsToVector3(data.gps5);
		point6 = gpsToVector3(data.gps6);
		point7 = gpsToVector3(data.gps7);
		point8 = gpsToVector3(data.gps8);
		CreateLine(Point1(), Point2(), isReal: false, data.lineWidth, "CFTC-Line-1-2", -1);
		CreateLine(Point2(), Point3(), isReal: true, data.lineWidth, "CFTC-Line-2-3", 1);
		CreateLine(Point3(), Point4(), isReal: true, data.lineWidth, "CFTC-Line-3-4", -1);
		CreateLine(Point4(), Point5(), isReal: true, data.lineWidth, "CFTC-Line-4-5", 1);
		CreateLine(Point5(), Point6(), isReal: true, data.lineWidth, "CFTC-Line-5-6", -1);
		CreateLine(Point6(), Point7(), isReal: true, data.lineWidth, "CFTC-Line-6-7", 1);
		CreateLine(Point7(), Point8(), isReal: false, data.lineWidth, "CFTC-Line-7-8", -1);
		CreateLine(Point8(), Point1(), isReal: true, data.lineWidth, "CFTC-Line-8-1", 1);
		CreateLine(Point3(), Point6(), isReal: false, data.lineWidth, "CFTC-Line-3-6", -1);
		CreateObjectName((Point1() + Point2()) / 2f, Point8() - Point1(), "侧方停车");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		B2CeFang b2CeFang = (B2CeFang)b2Data;
		return (gpsToVector3(b2CeFang.gps1) + gpsToVector3(b2CeFang.gps2) + gpsToVector3(b2CeFang.gps7) + gpsToVector3(b2CeFang.gps8)) / 4f;
	}

	public Vector3 Point1()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point1 - point8;
		Vector3 vector2 = point1 - point2;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point1;
	}

	public Vector3 Point2()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point2 - point7;
		Vector3 vector2 = point2 - point1;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point2;
	}

	public Vector3 Point3()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point4;
		Vector3 vector2 = point3 - point6;
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
		Vector3 vector = point6 - point3;
		Vector3 vector2 = point6 - point5;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point6;
	}

	public Vector3 Point7()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point7 - point2;
		Vector3 vector2 = point7 - point8;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point7;
	}

	public Vector3 Point8()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point8 - point1;
		Vector3 vector2 = point8 - point7;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point8;
	}
}
