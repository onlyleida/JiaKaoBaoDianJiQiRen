using System.Collections.Generic;

namespace MCT.MeshMaker;

public class LineData : BuildingData
{
	public float width;

	public List<Gps> points = new List<Gps>();

	public int material;
}
