using UnityEngine;

namespace MCT.MeshMaker;

public class K3CrossRoadMarkMesh : K3Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	public K3CrossRoadMarkMesh Create(K3CrossRoadMark data)
	{
		string name = GetName(data.id, data.type, data.enterType);
		Create(data, data.gps1, name);
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		CreateLine(point1, point2, data.lineWidth, "Cross_0");
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
