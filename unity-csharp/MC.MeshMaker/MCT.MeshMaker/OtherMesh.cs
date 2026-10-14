using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class OtherMesh : MeshMaker
{
	public OtherData otherData;

	public override Vector3 gpsToVector3(Gps gps)
	{
		Vector3 result = MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
		result.y = 0f;
		return result;
	}

	public override List<Vector3> gpsToVector3(List<Gps> gps)
	{
		List<Vector3> list = MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
		for (int i = 0; i < list.Count; i++)
		{
			Vector3 value = list[i];
			value.y = 0f;
			list[i] = value;
		}
		return list;
	}
}
