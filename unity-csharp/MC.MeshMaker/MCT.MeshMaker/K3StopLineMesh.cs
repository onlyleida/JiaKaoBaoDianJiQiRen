using UnityEngine;

namespace MCT.MeshMaker;

public class K3StopLineMesh : K3Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	public K3StopLineMesh Create(K3StopLine data)
	{
		string name = GetName(data.id, data.type);
		Create(data, data.lineStart, name);
		point1 = gpsToVector3(data.lineStart);
		point2 = gpsToVector3(data.lineEnd);
		CreateLine(point1, point2, data.lineWidth, "Stop_0");
		return this;
	}

	public override float GetDistance(Vector3 point)
	{
		return GetDistance(point, point1, point2);
	}

	public override Vector3 CenterPoint()
	{
		return point1;
	}
}
