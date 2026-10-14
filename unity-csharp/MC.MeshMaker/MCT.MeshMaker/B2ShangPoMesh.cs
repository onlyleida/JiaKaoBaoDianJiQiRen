using UnityEngine;

namespace MCT.MeshMaker;

public class B2ShangPoMesh : B2Mesh
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

	public B2ShangPoMesh Create(B2ShangPo data)
	{
		Create(data.gps1, data, "PDTCQB");
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
		CreateLine(Point1(), Point2(), isReal: true, data.lineWidth, "PDTCQB-Line-1-2", -1).gameObject.SetActive(value: false);
		CreateLine(Point2(), Point10(), isReal: true, data.lineWidth, "PDTCQB-Line-2-10", 1);
		CreateLine(Point1(), Point9(), isReal: true, data.lineWidth, "PDTCQB-Line-1-9", 1);
		CreateLine(Point3(), Point4(), isReal: false, data.lineWidth, "PDTCQB-Line-3-4", -1);
		CreateLine(Point9(), Point10(), isReal: false, data.lineWidth, "PDTCQB-Line-9-10", -1);
		Vector3 start = (Point5() + Point8()) / 2f;
		Vector3 end = (Point6() + Point7()) / 2f;
		float num = Vector3.Distance(Point6(), Point7());
		CreateLine(start, end, isReal: true, num * 100f, "PDTCQB-Line-5-6", -1);
		CreateObjectName((Point1() + Point2()) / 2f, Point4() - Point1(), "上坡起步", -4f);
		return this;
	}

	public override Vector3 CenterPoint()
	{
		B2ShangPo b2ShangPo = (B2ShangPo)b2Data;
		return (gpsToVector3(b2ShangPo.gps5) + gpsToVector3(b2ShangPo.gps6)) / 2f;
	}

	public Vector3 Point1()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point4 - point3;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point1;
	}

	public Vector3 Point2()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point4;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point2;
	}

	public Vector3 Point3()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point3 - point6;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point3;
	}

	public Vector3 Point4()
	{
		Vector3 zero = Vector3.zero;
		Vector3 vector = point4 - point5;
		float num = b2Data.lineWidth / 100f / 2f;
		zero += vector.normalized * num;
		return zero + point4;
	}

	public Vector3 Point5()
	{
		return point5;
	}

	public Vector3 Point6()
	{
		return point6;
	}

	public Vector3 Point7()
	{
		return point7;
	}

	public Vector3 Point8()
	{
		return point8;
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
