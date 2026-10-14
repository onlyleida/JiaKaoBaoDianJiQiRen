public interface Converter
{
	Pos gpsToGauss(Gps gps);

	Gps gaussToGps(Pos pos);
}
