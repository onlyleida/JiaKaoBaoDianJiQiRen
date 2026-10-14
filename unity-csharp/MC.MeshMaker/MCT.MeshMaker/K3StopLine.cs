using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3StopLine : K3Data
{
	public Gps lineStart;

	public Gps lineEnd;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps> { lineEnd, lineStart };
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
