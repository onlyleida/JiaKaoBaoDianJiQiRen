using System;

namespace MCT.MeshMaker;

public class SurportType : Attribute
{
	private MeshType makerType = MeshType.none;

	public SurportType(MeshType type)
	{
		makerType = type;
	}

	public bool CanUse(MeshType type)
	{
		return makerType == type;
	}
}
