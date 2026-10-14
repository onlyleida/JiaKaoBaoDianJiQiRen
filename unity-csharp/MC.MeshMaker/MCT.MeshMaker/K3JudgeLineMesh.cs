using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3JudgeLineMesh : K3Mesh
{
	private List<Vector3> points;

	public K3JudgeLineMesh Create(K3Common data)
	{
		string name = GetName(data.id, data.type, data.shape);
		Create(data, data.points[0], name);
		points = gpsToVector3(data.points);
		CreateLine(points[0], points[1], data.lineWidth, "JudgeLine_0");
		CreateLine(points[2], points[3], data.lineWidth, "JudgeLine_1");
		return this;
	}

	public override float GetDistance(Vector3 point)
	{
		return GetDistance(point, points, seal: true);
	}

	public override Vector3 CenterPoint()
	{
		return points[0];
	}
}
