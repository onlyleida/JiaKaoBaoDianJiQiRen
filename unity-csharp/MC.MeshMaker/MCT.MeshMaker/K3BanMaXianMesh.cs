using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3BanMaXianMesh : K3Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	public K3BanMaXianMesh Create(K3BanMaXian data)
	{
		string name = GetName(data.id, data.type);
		Create(data, data.p1, name);
		point1 = gpsToVector3(data.p1);
		point2 = gpsToVector3(data.p2);
		point3 = gpsToVector3(data.p3);
		point4 = gpsToVector3(data.p4);
		Vector3 vector = point1 - point2;
		Vector3 to = point4 - point3;
		if (Vector3.Angle(vector, to) > 70f)
		{
			Vector3 vector2 = point3;
			point3 = point4;
			point4 = vector2;
		}
		float num = Vector3.Distance(point1, point4);
		int num2 = (int)(num / ((float)data.lineWidth / 100f * 2f));
		Vector3 vector3 = point4 - point1;
		for (int i = 0; i < num2; i++)
		{
			Vector3 start = point1 + i * vector3.normalized * data.lineWidth / 100f * 2f;
			Vector3 end = point2 + i * vector3.normalized * data.lineWidth / 100f * 2f;
			CreateLine(start, end, data.lineWidth, "BMX_" + i);
		}
		return this;
	}

	public override float GetDistance(Vector3 point)
	{
		return GetDistance(point, new List<Vector3> { point1, point2, point3, point4 }, seal: true);
	}

	public override Vector3 CenterPoint()
	{
		return (point1 + point2 + point3 + point4) / 4f;
	}
}
