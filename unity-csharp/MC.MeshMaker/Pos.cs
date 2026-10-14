public class Pos
{
	public double x;

	public double y;

	public double z;

	public Pos()
	{
	}

	public Pos(double x, double y)
	{
		this.x = x;
		this.y = y;
		z = 0.0;
	}

	public Pos(double x, double y, double z)
	{
		this.x = x;
		this.y = y;
		this.z = z;
	}

	public Pos(Pos pos)
	{
		x = pos.x;
		y = pos.y;
		z = pos.z;
	}

	public string toString()
	{
		return "Pos{x=" + x + ", y=" + y + ", z=" + z + "}";
	}

	public Pos setPos(Pos pos)
	{
		x = pos.x;
		y = pos.y;
		z = pos.z;
		return this;
	}

	public Pos ignoreZ()
	{
		z = 0.0;
		return this;
	}

	public Pos setPos(double x, double y)
	{
		this.x = x;
		this.y = y;
		return this;
	}

	public Pos translate(double dx, double dy)
	{
		x += dx;
		y += dy;
		return this;
	}

	public Pos vectorTo(Pos pos)
	{
		Pos pos2 = new Pos(pos);
		pos2.translate(0.0 - x, 0.0 - y);
		return pos2;
	}

	public Pos translate(Pos pos)
	{
		return translate(pos.x, pos.y);
	}

	public Pos scale(double scale)
	{
		x *= scale;
		y *= scale;
		return this;
	}

	public double dot(Pos b)
	{
		return x * b.x + y * b.y;
	}

	public double cross(Pos b)
	{
		return x * b.y - y * b.x;
	}

	public Pos meanWith(Pos pos)
	{
		x = (x + pos.x) * 0.5;
		y = (y + pos.y) * 0.5;
		z = (z + pos.z) * 0.5;
		return this;
	}

	public Pos rotate(double cosA, double sinA)
	{
		double num = x;
		double num2 = y;
		x = num * cosA - num2 * sinA;
		y = num * sinA + num2 * cosA;
		return this;
	}

	public Pos rotate(Pos center, double cosA, double sinA)
	{
		double num = x - center.x;
		double num2 = y - center.y;
		double num3 = num * cosA - num2 * sinA;
		double num4 = num * sinA + num2 * cosA;
		x = num3 + center.x;
		y = num4 + center.y;
		return this;
	}
}
