using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2ZhiJiao : K2Data
{
	public Gps gps1;

	public Gps gps2;

	public Gps gps3;

	public Gps gps4;

	public Gps gps5;

	public Gps gps6;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps> { gps1, gps2, gps3, gps4, gps5, gps6 };
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
