using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2SuiDao : K2Data
{
	public List<Gps> rightPoints;

	public List<Gps> leftPoints;

	public List<Gps> centerPoints;

	public Gps gps1;

	public Gps gps2;

	public Gps gps3;

	public Gps gps4;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps> { gps1, gps2, gps3, gps4 };
		if (rightPoints != null)
		{
			foreach (Gps rightPoint in rightPoints)
			{
				list.Add(rightPoint);
			}
		}
		if (leftPoints != null)
		{
			foreach (Gps leftPoint in leftPoints)
			{
				list.Add(leftPoint);
			}
		}
		if (centerPoints != null)
		{
			foreach (Gps centerPoint in centerPoints)
			{
				list.Add(centerPoint);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
