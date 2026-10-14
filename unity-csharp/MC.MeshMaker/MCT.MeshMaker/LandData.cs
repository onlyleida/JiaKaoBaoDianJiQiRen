using System.Collections.Generic;

namespace MCT.MeshMaker;

public class LandData : BuildingData
{
	public List<Gps> points = new List<Gps>();

	public int material;
}
