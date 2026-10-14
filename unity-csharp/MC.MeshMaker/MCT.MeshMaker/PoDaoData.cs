using System.Collections.Generic;

namespace MCT.MeshMaker;

public class PoDaoData : BuildingData
{
	public List<Gps> landPoint = new List<Gps>();

	public List<Gps> cubePoint = new List<Gps>();

	public List<float> cubeWidth = new List<float>();

	public List<float> cubeHeight = new List<float>();

	public int landMaterial;

	public List<int> cubeMaterial = new List<int>();
}
