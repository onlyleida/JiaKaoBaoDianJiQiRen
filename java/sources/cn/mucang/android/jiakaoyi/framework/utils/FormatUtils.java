package cn.mucang.android.jiakaoyi.framework.utils;

import android.annotation.SuppressLint;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0005H\u0007J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u001a\u0010\b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\u000eH\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006H\u0003¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/FormatUtils;", "", "()V", "distance", "", "", "", "formatDate", "time", "", "format", "hideUrlInfo", "url", "hideWebsite", "", "price", "", "showZero", "trimInt", "t", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FormatUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FormatUtils f3653a = new FormatUtils();

    private FormatUtils() {
    }

    public static final String a(float f2) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(f2)}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    public static final String b(int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(i / 1000)}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    @SuppressLint({"SimpleDateFormat"})
    public static final String c(long j) {
        String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(j));
        kotlin.jvm.internal.r.d(str, "format.format(time)");
        return str;
    }

    @SuppressLint({"SimpleDateFormat"})
    public static final String d(String format, long j) {
        kotlin.jvm.internal.r.e(format, "format");
        String str = new SimpleDateFormat(format).format(Long.valueOf(j));
        kotlin.jvm.internal.r.d(str, "SimpleDateFormat(format).format(time)");
        return str;
    }

    public static final String e(String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (!kotlin.text.t.B(str, "https://", false, 2, null)) {
            return str;
        }
        Object[] array = StringsKt__StringsKt.p0(str, new String[]{"//"}, false, 0, 6, null).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        int iT = StringsKt__StringsKt.T(strArr[1], "/", 0, false, 6, null);
        int iZ = StringsKt__StringsKt.Z(str, "/", 0, false, 6, null);
        if (z) {
            String strSubstring = str.substring(iZ);
            kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
            return kotlin.jvm.internal.r.m("https://***", strSubstring);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("https://");
        String str2 = strArr[1];
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String strSubstring2 = str2.substring(0, iT + 1);
        kotlin.jvm.internal.r.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb.append(strSubstring2);
        sb.append("***");
        String strSubstring3 = str.substring(iZ);
        kotlin.jvm.internal.r.d(strSubstring3, "(this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring3);
        return sb.toString();
    }

    public static final String f(int i, boolean z) {
        String strM;
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = i2 / 60;
        int i5 = i4 % 60;
        int i6 = i4 / 60;
        StringBuilder sb = new StringBuilder();
        if (i6 == 0) {
            strM = z ? "00:" : "";
        } else {
            strM = kotlin.jvm.internal.r.m(h(i6), ":");
        }
        sb.append(strM);
        sb.append(h(i5));
        sb.append(':');
        sb.append(h(i3));
        return sb.toString();
    }

    public static /* synthetic */ String g(int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return f(i, z);
    }

    private static final String h(int i) {
        return i < 10 ? kotlin.jvm.internal.r.m("0", Integer.valueOf(i)) : String.valueOf(i);
    }
}
