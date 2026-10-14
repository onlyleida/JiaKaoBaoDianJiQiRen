using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3ArrowMark : K3Data
{
	public int arrowType;

	public Gps gps1;

	public Gps gps2;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps> { gps1, gps2 };
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
