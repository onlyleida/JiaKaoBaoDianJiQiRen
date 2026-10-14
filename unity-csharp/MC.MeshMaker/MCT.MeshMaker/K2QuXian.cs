using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2QuXian : K2Data
{
	public List<Gps> rightPoints;

	public List<Gps> leftPoints;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps>();
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
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
