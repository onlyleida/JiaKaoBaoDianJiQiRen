using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2ZhangAi : B2Data
{
	public Gps gps1;

	public Gps gps2;

	public Gps gpsY3;

	public Gps gpsY4;

	public Gps gpsY5;

	public Gps gpsY6;

	public Gps gpsY7;

	public Gps gpsY8;

	public Gps gps9;

	public Gps gps10;

	public float discusRadius = 35f;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps> { gps1, gps2, gpsY3, gpsY4, gpsY5, gpsY6, gpsY7, gpsY8, gps9, gps10 };
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
