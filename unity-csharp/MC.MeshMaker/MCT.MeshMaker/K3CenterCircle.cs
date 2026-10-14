using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3CenterCircle : K3Data
{
	public Gps p1;

	public Gps p2;

	public Gps p3;

	public Gps p4;

	public int shape;

	public int outLineWidth = 15;

	public int inLineWidth = 15;

	public int inLineInterval = 30;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps> { p1, p2, p3, p4 };
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
