package cn.mucang.android.core.utils;

import android.content.res.Resources;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.framework.core.R;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class p0 {
    public static String a(Date date, String str) {
        return date == null ? "" : new SimpleDateFormat(str).format(date);
    }

    public static String b(long j) {
        return new SimpleDateFormat(c().getString(R.string.date_format_yyyymmddhhmmss), Locale.CHINA).format(Long.valueOf(j));
    }

    private static Resources c() {
        return MucangConfig.getContext().getResources();
    }

    public static String d(long j) {
        return new SimpleDateFormat(c().getString(R.string.date_format_yyyymmdd4), Locale.CHINA).format(Long.valueOf(j));
    }

    public static boolean e(Date date, Date date2) {
        if (date == null || date2 == null) {
            return false;
        }
        long rawOffset = TimeZone.getDefault().getRawOffset();
        return (date.getTime() + rawOffset) / 86400000 == (date2.getTime() + rawOffset) / 86400000;
    }

    public static String f(Date date) {
        return a(date, "yyyy-MM-dd HH:mm:ss");
    }
}
