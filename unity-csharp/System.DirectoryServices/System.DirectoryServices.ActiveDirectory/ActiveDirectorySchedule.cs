namespace System.DirectoryServices.ActiveDirectory;

public class ActiveDirectorySchedule
{
	public bool[,,] RawSchedule
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySchedule()
	{
		throw new NotImplementedException();
	}

	public ActiveDirectorySchedule(ActiveDirectorySchedule schedule)
		: this()
	{
		throw new NotImplementedException();
	}

	public void SetSchedule(DayOfWeek day, HourOfDay fromHour, MinuteOfHour fromMinute, HourOfDay toHour, MinuteOfHour toMinute)
	{
		throw new NotImplementedException();
	}

	public void SetSchedule(DayOfWeek[] days, HourOfDay fromHour, MinuteOfHour fromMinute, HourOfDay toHour, MinuteOfHour toMinute)
	{
		throw new NotImplementedException();
	}

	public void SetDailySchedule(HourOfDay fromHour, MinuteOfHour fromMinute, HourOfDay toHour, MinuteOfHour toMinute)
	{
		throw new NotImplementedException();
	}

	public void ResetSchedule()
	{
		throw new NotImplementedException();
	}
}
