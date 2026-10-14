using UnityEngine;

namespace MCT.MeshMaker;

public class B2XianKuanMesh : B2Mesh
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

	public B2XianKuanMesh Create(B2XianKuan data)
	{
		Create(data.gps1, data, "XK");
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gpsB3);
		point4 = gpsToVector3(data.gpsB4);
		point5 = gpsToVector3(data.gpsB5);
		point6 = gpsToVector3(data.gpsB6);
		point7 = gpsToVector3(data.gpsB7);
		point8 = gpsToVector3(data.gpsB8);
		point9 = gpsToVector3(data.gps9);
		point10 = gpsToVector3(data.gps10);
		CreateLine(Point1(), Point10(), isReal: true, data.lineWidth, "XK-Line-1-10");
		CreateLine(Point2(), Point9(), isReal: true, data.lineWidth, "XK-Line-2-9");
		CreateLine(point3, point4, isReal: false, data.lineWidth, "XK-Line-3-4");
		CreateLine(point5, point6, isReal: false, data.lineWidth, "XK-Line-5-6");
		CreateLine(point7, point8, isReal: false, data.lineWidth, "XK-Line-7-8");
		CreateLine((Point1() + Point2()) / 2f, (Point9() + Point10()) / 2f, isReal: false, data.lineWidth, "XK-Line-mid");
		CreateCylinder("pole3", point3, data.poleRadius / 100f, 5f);
		CreateCylinder("pole4", point4, data.poleRadius / 100f, 5f);
		CreateCylinder("pole5", point5, data.poleRadius / 100f, 5f);
		CreateCylinder("pole6", point6, data.poleRadius / 100f, 5f);
		CreateCylinder("pole7", point7, data.poleRadius / 100f, 5f);
		CreateCylinder("pole8", point8, data.poleRadius / 100f, 5f);
		CreateObjectName(((Point1() + Point2()) / 2f + Point2()) / 2f, Point10() - Point1(), "限宽");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		B2XianKuan b2XianKuan = (B2XianKuan)b2Data;
		return (gpsToVector3(b2XianKuan.gps1) + gpsToVector3(b2XianKuan.gps2)) / 2f;
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
