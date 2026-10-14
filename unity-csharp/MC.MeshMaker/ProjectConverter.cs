using System;

public class ProjectConverter
{
	public const string TAG = "ProjectConverter";

	private double a;

	private double b;

	private double f;

	private double e;

	private double e1;

	private double FE;

	private double FN;

	private double L0;

	private double W0;

	private double k0;

	private double e12;

	private double e14;

	private double e16;

	private double e18;

	private double e2;

	private double e4;

	private double e6;

	private double e8;

	public static ProjectConverter createWgs84(double longitude)
	{
		return new ProjectConverter(2, longitude, 0.0, 0.0, 0.0);
	}

	public ProjectConverter(int tuoqiuCanshu, double centralMeridian, double OriginLatitude, double EastOffset, double NorthOffset)
	{
		switch (tuoqiuCanshu)
		{
		case 0:
			a = 6378245.0;
			b = 6356863.0;
			break;
		case 1:
			a = 6378140.0;
			b = 6356755.5;
			break;
		}
		if (tuoqiuCanshu == 2)
		{
			a = 6378137.0;
			b = 6356752.5;
		}
		if (tuoqiuCanshu == 3)
		{
			a = 6378137.0;
			b = 6356752.5;
		}
		f = (a - b) / a;
		e = Math.Sqrt(2.0 * f - f * f);
		e1 = e / Math.Sqrt(1.0 - e * e);
		L0 = centralMeridian;
		W0 = OriginLatitude;
		k0 = 1.0;
		FE = EastOffset;
		FN = NorthOffset;
		e12 = e1 * e1;
		e14 = e12 * e12;
		e16 = e14 * e12;
		e18 = e16 * e12;
		e2 = e * e;
		e4 = e2 * e2;
		e6 = e4 * e2;
		e8 = e6 * e2;
	}

	public Pos gpsToGauss(Gps gps)
	{
		double[] array = gpsToGauss(gps.longitude, gps.latitude);
		return new Pos(array[1] * 100.0, array[0] * 100.0, gps.altitude * 100.0);
	}

	public Gps gaussToGps(Pos pos)
	{
		double[] array = gaussToGps(pos.y * 0.009999999776482582, pos.x * 0.009999999776482582);
		return new Gps(array[1], array[0], pos.z * 0.009999999776482582);
	}

	public double[] gpsToGauss(double longitude, double latitude)
	{
		double[] array = new double[2];
		double num = (latitude - W0) * Math.PI / 180.0;
		double num2 = (longitude - L0) * Math.PI / 180.0;
		double num3 = Math.Sin(num);
		double num4 = Math.Cos(num);
		double num5 = e * num3;
		double num6 = a / Math.Sqrt(1.0 - num5 * num5);
		double num7 = a * a / b;
		double num8 = 1.0 - 3.0 * e12 / 4.0 + 45.0 * e14 / 64.0 - 175.0 * e16 / 256.0 + 11025.0 * e18 / 16384.0;
		double num9 = num8 - 1.0;
		double num10 = 15.0 / 32.0 * e14 - 0.4557291567325592 * e16 + 3675.0 / 8192.0 * e18;
		double num11 = 0.0 - 0.3645833432674408 * e16 + 0.35888671875 * e18;
		double num12 = 0.3076171875 * e18;
		double num13 = num4 * num4;
		double num14 = num13 * num4;
		double num15 = num13 * num14;
		double num16 = num13 * num15;
		double num17 = num7 * (num8 * num + num3 * (num9 * num4 + num10 * num14 + num11 * num15 + num12 * num16));
		double num18 = Math.Tan(num);
		double num19 = e1 * num4;
		double num20 = num2 * num2;
		double num21 = num20 * num2;
		double num22 = num20 * num20;
		double num23 = num22 * num2;
		double num24 = num20 * num22;
		double num25 = num18 * num18;
		double num26 = num25 * num25;
		double num27 = num19 * num19;
		double num28 = num27 * num27;
		double num29 = num17 + num20 / 2.0 * num6 * num3 * num4 + num22 * num6 * num3 * num14 / 24.0 * (5.0 - num25 + 9.0 * num27 + 4.0 * num28) + num24 * num6 * num3 * num15 * (61.0 - 58.0 * num25 + num26) / 720.0;
		double num30 = num2 * num6 * num4 + num21 * num6 / 6.0 * num14 * (1.0 - num25 + num27) + num23 * num6 / 120.0 * num15 * (5.0 - 18.0 * num25 + num26 + 14.0 * num27 - 58.0 * num27 * num25);
		array[0] = num30 + FE;
		array[1] = num29 + FN;
		return array;
	}

	public double[] gaussToGps(double X, double Y)
	{
		double[] array = new double[2];
		double num = Math.Sqrt(1.0 - e2);
		double num2 = (1.0 - num) / (1.0 + num);
		double num3 = (Y - FN) / k0;
		double num4 = num3 / (a * (1.0 - e2 / 4.0 - 3.0 * e4 / 64.0 - 5.0 * e6 / 256.0));
		double num5 = num2 * num2;
		double num6 = num5 * num2;
		double num7 = num6 * num2;
		double num8 = num4 + (3.0 * num2 / 2.0 - 27.0 * num6 / 32.0) * Math.Sin(2.0 * num4) + (21.0 * num5 / 16.0 - 55.0 * num7 / 32.0) * Math.Sin(4.0 * num4) + 151.0 * num6 / 96.0 * Math.Sin(6.0 * num4) + 2.142578125 * num7 * Math.Sin(8.0 * num4);
		double num9 = Math.Sin(num8);
		double num10 = Math.Cos(num8);
		double num11 = e * num9;
		double num12 = num11 * num11;
		double num13 = 1.0 - num12;
		double d = num13 * num13 * num13;
		double num14 = a * (1.0 - e2) / Math.Sqrt(d);
		double num15 = a / Math.Sqrt(1.0 - num12);
		double num16 = Math.Tan(num8);
		double num17 = num16 * num16;
		double num18 = (X - FE) / (k0 * num15);
		double num19 = e12 * num10 * num10;
		double num20 = num18 * num18;
		double num21 = num20 * num18;
		double num22 = num20 * num20;
		double num23 = num22 * num18;
		double num24 = num22 * num20;
		double num25 = num17 * num17;
		double num26 = num19 * num19;
		double num27 = num8 - num15 * num16 / num14 * (num20 / 2.0 - (5.0 + 3.0 * num17 + 10.0 * num19 - 9.0 * num17 * num19 - 4.0 * num26 - 9.0 * e12) * num22 / 24.0 + (61.0 + 90.0 * num17 + 45.0 * num25 - 256.0 * e12 - 3.0 * num26) * num24 / 720.0);
		double num28 = L0 * Math.PI / 180.0 + 1.0 / num10 * (num18 - (1.0 + 2.0 * num17 + num19) * num21 / 6.0 + (5.0 - 2.0 * num19 + 28.0 * num17 - 3.0 * num26 + 8.0 * e12 + 24.0 * num25) * num23 / 120.0);
		double num29 = num27 * 180.0 / Math.PI;
		double num30 = num28 * 180.0 / Math.PI;
		array[0] = num30;
		array[1] = num29 + W0;
		return array;
	}

	public static void standardTest()
	{
	}
}
