using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2ZhaiLu : K2Data
{
	public Gps gps1;

	public Gps gps2;

	public Gps gps3;

	public Gps gps4;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps> { gps1, gps2, gps3, gps4 };
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
