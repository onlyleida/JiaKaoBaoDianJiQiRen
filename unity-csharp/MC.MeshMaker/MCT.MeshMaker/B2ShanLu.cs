using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2ShanLu : B2Data
{
	public List<Gps> rightPoints;

	public List<Gps> middlePoints;

	public List<Gps> leftPoints;

	public Gps firstHonkReport1;

	public Gps firstHonkReport2;

	public Gps secondHonkReport1;

	public Gps secondHonkReport2;

	public Gps firstHonk1;

	public Gps firstHonk2;

	public Gps secondHonk1;

	public Gps secondHonk2;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps> { firstHonkReport1, firstHonkReport2, secondHonkReport1, secondHonkReport2, firstHonk1, firstHonk2, secondHonk1, secondHonk2 };
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
		if (middlePoints != null)
		{
			foreach (Gps middlePoint in middlePoints)
			{
				list.Add(middlePoint);
			}
		}
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(list);
	}
}
