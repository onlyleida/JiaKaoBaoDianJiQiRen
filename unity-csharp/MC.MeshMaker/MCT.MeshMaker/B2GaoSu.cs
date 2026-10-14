using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2GaoSu : B2Data
{
	public List<Gps> rightPoints;

	public List<Gps> middlePoints;

	public List<Gps> leftPoints;

	public Gps gps1;

	public Gps gps2;

	public Gps gps3;

	public Gps gps4;

	public Gps gps5;

	public Gps gps6;

	public Gps gps7;

	public Gps gps8;

	public Gps gps9;

	public Gps gps10;

	public Gps line0Gps1;

	public Gps line0Gps2;

	public Gps line50Gps1;

	public Gps line50Gps2;

	public Gps line100Gps1;

	public Gps line100Gps2;

	public Gps line150Gps1;

	public Gps line150Gps2;

	public Gps line200Gps1;

	public Gps line200Gps2;

	public override List<Vector3> GetPointList()
	{
		List<Gps> list = new List<Gps>
		{
			gps1, gps2, gps3, gps4, gps5, gps6, gps7, gps8, gps9, gps10,
			line0Gps1, line0Gps2, line50Gps1, line50Gps2, line100Gps1, line100Gps2, line150Gps1, line150Gps2, line200Gps1, line200Gps2
		};
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
