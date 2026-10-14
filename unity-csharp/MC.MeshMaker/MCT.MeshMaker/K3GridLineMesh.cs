using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3GridLineMesh : K3Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	public K3GridLineMesh Create(K3GridLine data)
	{
		string name = GetName(data.id, data.type);
		Create(data, data.p1, name);
		point1 = gpsToVector3(data.p1);
		point2 = gpsToVector3(data.p2);
		point3 = gpsToVector3(data.p3);
		point4 = gpsToVector3(data.p4);
		CreateLine(point1, point2, data.lineWidth, "Grid_0");
		CreateLine(point2, point3, data.lineWidth, "Grid_1");
		CreateLine(point3, point4, data.lineWidth, "Grid_2");
		CreateLine(point4, point1, data.lineWidth, "Grid_3");
		CreateObjectName((point1 + point2) / 2f, point3 - point2, "网状线", 0f);
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
