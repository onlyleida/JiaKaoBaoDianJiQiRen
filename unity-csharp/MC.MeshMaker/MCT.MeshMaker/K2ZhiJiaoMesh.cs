using UnityEngine;

namespace MCT.MeshMaker;

public class K2ZhiJiaoMesh : K2Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	private Vector3 point5;

	private Vector3 point6;

	public K2ZhiJiaoMesh Create(K2ZhiJiao data)
	{
		Create(data.gps1, data, "ZJZW");
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gps3);
		point4 = gpsToVector3(data.gps4);
		point5 = gpsToVector3(data.gps5);
		point6 = gpsToVector3(data.gps6);
		CreateLine(Point1(), Point2(), isReal: false, data.lineWidth, "ZJZW-Line-1-2", -1);
		CreateLine(Point2(), Point3(), isReal: true, data.lineWidth, "ZJZW-Line-2-3", 1);
		CreateLine(Point3(), Point4(), isReal: true, data.lineWidth, "ZJZW-Line-3-4", -1);
		CreateLine(Point4(), Point5(), isReal: false, data.lineWidth, "ZJZW-Line-4-5", 1);
		CreateLine(Point5(), Point6(), isReal: true, data.lineWidth, "ZJZW-Line-5-6", -1);
		CreateLine(Point6(), Point1(), isReal: true, data.lineWidth, "ZJZW-Line-6-1", 1);
		CreateObjectName((Point1() + Point2()) / 2f, Point6() - Point1(), "直角转弯");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		K2ZhiJiao k2ZhiJiao = (K2ZhiJiao)k2Data;
		return (gpsToVector3(k2ZhiJiao.gps3) + gpsToVector3(k2ZhiJiao.gps6)) / 2f;
	}

	public Vector3 Point1()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point4;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point1;
	}

	public Vector3 Point2()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point4 - point3;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point2;
	}

	public Vector3 Point3()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point2 - point3;
		Vector3 vector2 = point4 - point3;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point3;
	}

	public Vector3 Point4()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point2 - point3;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point4;
	}

	public Vector3 Point5()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point2;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point5;
	}

	public Vector3 Point6()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point6 - point5;
		Vector3 vector2 = point6 - point1;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point6;
	}
}
