using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2XianKuan : B2Data
{
	public Gps gps1;

	public Gps gps2;

	public Gps gpsB3;

	public Gps gpsB4;

	public Gps gpsB5;

	public Gps gpsB6;

	public Gps gpsB7;

	public Gps gpsB8;

	public Gps gps9;

	public Gps gps10;

	public float poleRadius = 3.5f;

	public override List<Vector3> GetPointList()
	{
		List<Gps> gps = new List<Gps> { gps1, gps2, gpsB3, gpsB4, gpsB5, gpsB6, gpsB7, gpsB8, gps9, gps10 };
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}
}
