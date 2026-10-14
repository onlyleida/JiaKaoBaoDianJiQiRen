public class Gps
{
	public double latitude;

	public double longitude;

	public double altitude;

	public Gps()
	{
	}

	public Gps(double latitude, double longitude)
	{
		this.latitude = latitude;
		this.longitude = longitude;
		altitude = 0.0;
	}

	public Gps(double latitude, double longitude, double altitude)
	{
		this.latitude = latitude;
		this.longitude = longitude;
		this.altitude = altitude;
	}

	public Gps(Gps gps)
	{
		latitude = gps.latitude;
		longitude = gps.longitude;
		altitude = gps.altitude;
	}

	public Gps(string latitude, string longitude, string altitude)
	{
		if (!string.IsNullOrEmpty(latitude))
		{
			this.latitude = double.Parse(latitude);
		}
		else
		{
			this.latitude = 0.0;
		}
		if (!string.IsNullOrEmpty(longitude))
		{
			this.longitude = double.Parse(longitude);
		}
		else
		{
			this.longitude = 0.0;
		}
		if (!string.IsNullOrEmpty(altitude))
		{
			this.altitude = double.Parse(altitude);
		}
		else
		{
			this.altitude = 0.0;
		}
	}

	public void setGps(Gps gps)
	{
		latitude = gps.latitude;
		longitude = gps.longitude;
		altitude = gps.altitude;
	}

	public void setGps(double latitude, double longitude, double altitude)
	{
		this.latitude = latitude;
		this.longitude = longitude;
		this.altitude = altitude;
	}

	public string toString()
	{
		return "Gps{latitude=" + latitude + ", longitude=" + longitude + ", altitude=" + altitude + "}";
	}
}
