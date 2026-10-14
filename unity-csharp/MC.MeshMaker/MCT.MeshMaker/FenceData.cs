using System.Collections.Generic;

namespace MCT.MeshMaker;

public class FenceData : BuildingData
{
	public float width;

	public float height;

	public List<Gps> points = new List<Gps>();

	public int material;
}
