using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2BianXian : K2Data
{
	public List<Gps> points;

	public Gps gps1;

	public Gps gps2;

	public Gps gps3;

	public Gps gps4;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps> { gps1, gps2, gps3, gps4 };
		if (points != null)
		{
			foreach (Gps point in points)
			{
				list.Add(point);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
