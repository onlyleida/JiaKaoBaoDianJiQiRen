using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3GridLine : K3Data
{
	public Gps p1;

	public Gps p2;

	public Gps p3;

	public Gps p4;

	public int gridLineWidth = 10;

	public int gridLineInterval = 150;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps> { p1, p2, p3, p4 };
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
