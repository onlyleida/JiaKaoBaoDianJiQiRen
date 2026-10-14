using System.Collections.Generic;

namespace MCT.MeshMaker;

public class FlowerBedData : BuildingData
{
	public List<Gps> points = new List<Gps>();

	public float cubeWidth;

	public float cubeHeight;

	public int cubeMaterial;

	public int landMaterial;
}
