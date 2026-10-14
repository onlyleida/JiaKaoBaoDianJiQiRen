using System.Collections.Generic;

namespace MCT.MeshMaker;

public class HalfPoDaoData : BuildingData
{
	public List<Gps> points = new List<Gps>();

	public int material;

	public float height;
}
