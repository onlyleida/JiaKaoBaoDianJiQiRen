using UnityEngine;

namespace MCT.MeshMaker;

public class B2ZhangAiMesh : B2Mesh
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

	public B2ZhangAiMesh Create(B2ZhangAi data)
	{
		Create(data.gps1, data, "ZA");
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gpsY3);
		point4 = gpsToVector3(data.gpsY4);
		point5 = gpsToVector3(data.gpsY5);
		point6 = gpsToVector3(data.gpsY6);
		point7 = gpsToVector3(data.gpsY7);
		point8 = gpsToVector3(data.gpsY8);
		point9 = gpsToVector3(data.gps9);
		point10 = gpsToVector3(data.gps10);
		CreateLine(Point1(), Point10(), isReal: true, data.lineWidth, "ZA-Line-1-10");
		CreateLine(Point2(), Point9(), isReal: true, data.lineWidth, "ZA-Line-2-9");
		CreateObjectName((Point1() + Point2()) / 2f, Point10() - Point1(), "障碍");
		return this;
	}

	public override Vector3 CenterPoint()
	{
		B2ZhangAi b2ZhangAi = (B2ZhangAi)b2Data;
		return (gpsToVector3(b2ZhangAi.gps1) + gpsToVector3(b2ZhangAi.gps2)) / 2f;
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
