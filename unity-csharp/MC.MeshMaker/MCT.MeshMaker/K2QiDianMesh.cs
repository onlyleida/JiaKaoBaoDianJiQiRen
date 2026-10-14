using UnityEngine;

namespace MCT.MeshMaker;

public class K2QiDianMesh : K2Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	public K2QiDianMesh Create(K2QiDian data)
	{
		Create(data.gps1, data, "QDQY");
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gps3);
		point4 = gpsToVector3(data.gps4);
		CreateLine(Point1(), Point2(), isReal: true, data.lineWidth, "QDQY-Line-1-2", -1);
		CreateLine(Point1(), Point4(), isReal: true, data.lineWidth, "QDQY-Line-1-4", 1);
		CreateLine(Point2(), Point3(), isReal: true, data.lineWidth, "QDQY-Line-2-3", 1);
		CreateLine(Point3(), Point4(), isReal: true, data.lineWidth, "QDQY-Line-3-4", -1);
		CreateObjectName((Point1() + Point2()) / 2f, Point4() - Point1(), "起点区域");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		K2QiDian k2QiDian = (K2QiDian)k2Data;
		return (gpsToVector3(k2QiDian.gps1) + gpsToVector3(k2QiDian.gps2) + gpsToVector3(k2QiDian.gps3) + gpsToVector3(k2QiDian.gps4)) / 4f;
	}

	public Vector3 Point1()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point1 - point2;
		Vector3 vector2 = point1 - point4;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point1;
	}

	public Vector3 Point2()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point2 - point1;
		Vector3 vector2 = point2 - point3;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point2;
	}

	public Vector3 Point3()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point4;
		Vector3 vector2 = point3 - point2;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point3;
	}

	public Vector3 Point4()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point4 - point1;
		Vector3 vector2 = point4 - point3;
		float num = k2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		zero += vector2.normalized * num;
		return zero + point4;
	}
}
