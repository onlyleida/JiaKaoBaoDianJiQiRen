using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2ZhuangKao : B2Data
{
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

	public Gps gpsB3;

	public Gps gpsB4;

	public Gps gpsB5;

	public Gps gpsB6;

	public Gps gpsB7;

	public Gps gpsB8;

	public float poleRadius = 3.5f;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps>
		{
			gps1, gps2, gps3, gps4, gps5, gps6, gps7, gps8, gps9, gps10,
			gpsB3, gpsB4, gpsB5, gpsB6, gpsB7, gpsB8
		};
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
