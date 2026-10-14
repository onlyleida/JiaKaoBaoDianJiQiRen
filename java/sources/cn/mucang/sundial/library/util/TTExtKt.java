package cn.mucang.sundial.library.util;

import androidx.exifinterface.media.ExifInterface;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import me.drakeet.multitype.b;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a4\u0010\u0006\u001a\u00020\u0005\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0012\b\u0001\u0010\u0004\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u0003H\u0086\b¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0013\u0010\n\u001a\u00020\t*\u00020\bH\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u0015\u0010\r\u001a\u00020\t*\u0004\u0018\u00010\fH\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u0013\u0010\u0010\u001a\u00020\t*\u00020\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a#\u0010\u0010\u001a\u00020\t*\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0010\u0010\u0015\u001a\u001d\u0010\u0017\u001a\u00020\t*\u00020\b2\b\b\u0002\u0010\u0016\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lme/drakeet/multitype/d;", "Lme/drakeet/multitype/b;", "binder", "Lkotlin/v;", "registerBinder", "(Lme/drakeet/multitype/d;Lme/drakeet/multitype/b;)V", "", "", "time2str", "(J)Ljava/lang/String;", "", "minute2str", "(Ljava/lang/Integer;)Ljava/lang/String;", "", "formatDigits", "(D)Ljava/lang/String;", "n", "Ljava/math/RoundingMode;", "mode", "(DILjava/math/RoundingMode;)Ljava/lang/String;", "patter", "formatTime", "(JLjava/lang/String;)Ljava/lang/String;", "library_release"}, k = 2, mv = {1, 1, 15})
public final class TTExtKt {
    public static final String formatDigits(double d2) {
        DecimalFormat decimalFormat = new DecimalFormat("0.###");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        String str = decimalFormat.format(d2);
        r.d(str, "format.format(this)");
        return str;
    }

    public static final String formatTime(long j, String patter) {
        r.e(patter, "patter");
        String str = new SimpleDateFormat(patter).format(Long.valueOf(j));
        r.d(str, "SimpleDateFormat(patter).format(this)");
        return str;
    }

    public static /* synthetic */ String formatTime$default(long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        return formatTime(j, str);
    }

    public static final String minute2str(Integer num) {
        if (num == null || num.intValue() == 0) {
            return "0";
        }
        int iIntValue = num.intValue() / 60;
        String strSubstring = String.format("%02d", Arrays.copyOf(new Object[]{Integer.valueOf(num.intValue() % 60)}, 1));
        r.d(strSubstring, "java.lang.String.format(this, *args)");
        if (r.a(strSubstring, "00")) {
            return iIntValue + "小时";
        }
        if (iIntValue != 0) {
            return iIntValue + "小时" + strSubstring + "分钟";
        }
        StringBuilder sb = new StringBuilder();
        if (strSubstring.length() > 1 && strSubstring.charAt(0) == '0') {
            Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            strSubstring = strSubstring.substring(1);
            r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
        }
        sb.append(strSubstring);
        sb.append("分钟");
        return sb.toString();
    }

    public static final /* synthetic */ <T> void registerBinder(d registerBinder, b<T, ?> binder) {
        r.e(registerBinder, "$this$registerBinder");
        r.e(binder, "binder");
        r.j(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    public static final String time2str(long j) {
        String strValueOf;
        String strValueOf2;
        String strValueOf3;
        long j2 = j / ((long) 1000);
        long j3 = 3600;
        long j4 = j2 / j3;
        long j5 = 10;
        if (j4 < j5) {
            StringBuilder sb = new StringBuilder();
            sb.append('0');
            sb.append(j4);
            strValueOf = sb.toString();
        } else {
            strValueOf = String.valueOf(j4);
        }
        long j6 = j2 % j3;
        long j7 = 60;
        long j8 = j6 % j7;
        if (j8 < j5) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('0');
            sb2.append(j8);
            strValueOf2 = sb2.toString();
        } else {
            strValueOf2 = String.valueOf(j8);
        }
        long j9 = j6 / j7;
        if (j9 < j5) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('0');
            sb3.append(j9);
            strValueOf3 = sb3.toString();
        } else {
            strValueOf3 = String.valueOf(j9);
        }
        if (r.a(strValueOf, "00")) {
            return strValueOf3 + ':' + strValueOf2;
        }
        return strValueOf + ':' + strValueOf3 + ':' + strValueOf2;
    }

    public static final String formatDigits(double d2, int i, RoundingMode mode) {
        String str;
        r.e(mode, "mode");
        if (i <= 0) {
            str = "0";
        } else {
            str = "0." + t.t("#", i);
        }
        DecimalFormat decimalFormat = new DecimalFormat(str);
        decimalFormat.setRoundingMode(mode);
        String str2 = decimalFormat.format(d2);
        r.d(str2, "format.format(this)");
        return str2;
    }
}
