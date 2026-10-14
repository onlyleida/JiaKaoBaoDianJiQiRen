package cn.mucang.sundial.android.utils;

import cn.mucang.sundial.android.log.SundialLog;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcn/mucang/sundial/android/utils/CPUUtils;", "", "", "performance", "()J", "", "tempPath", "namePath", "readTemp", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "path", "readLine", "(Ljava/lang/String;)Ljava/lang/String;", "l2", "J", "l1", "l3", "<init>", "()V", "base_release"}, k = 1, mv = {1, 1, 15})
public final class CPUUtils {
    public static final CPUUtils INSTANCE = new CPUUtils();
    private static long l1;
    private static long l2;
    private static long l3;

    private CPUUtils() {
    }

    public static final long performance() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")), 1000);
            String line = bufferedReader.readLine();
            r.d(line, "bufferedReader.readLine()");
            bufferedReader.close();
            Object[] array = StringsKt__StringsKt.p0(line, new String[]{" "}, false, 0, 6, null).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            String[] strArr = (String[]) array;
            long j = Long.parseLong(strArr[2]) + Long.parseLong(strArr[3]) + Long.parseLong(strArr[4]) + Long.parseLong(strArr[6]) + Long.parseLong(strArr[7]) + Long.parseLong(strArr[8]);
            long j2 = Long.parseLong(strArr[5]);
            long j3 = l1;
            long j4 = (long) (((j - j3) * 100.0f) / (((j - j3) + j2) - l2));
            l3 = j4;
            l1 = j;
            l2 = j2;
            return j4;
        } catch (Exception e2) {
            SundialLog.normal("CPUUtils.performance: " + e2.getLocalizedMessage());
            return 0L;
        }
    }

    private static final String readLine(String path) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            String line = randomAccessFile.readLine();
            randomAccessFile.close();
            r.d(line, "line");
            return line;
        } catch (Exception e2) {
            SundialLog.normal("CPUUtils.readLine: " + e2.getLocalizedMessage());
            return "";
        }
    }

    public static final String readTemp(String tempPath, String namePath) {
        r.e(tempPath, "tempPath");
        r.e(namePath, "namePath");
        String line = readLine(tempPath);
        if (!(line.length() > 0)) {
            return "";
        }
        String line2 = readLine(namePath);
        Objects.requireNonNull(line, "null cannot be cast to non-null type kotlin.CharSequence");
        float f2 = Float.parseFloat(StringsKt__StringsKt.J0(line).toString());
        if (f2 >= 15000) {
            f2 /= 1000;
        }
        if (f2 >= 1000) {
            f2 /= 100;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('\"');
        sb.append(line2);
        sb.append("\": \"");
        String str = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(f2)}, 1));
        r.d(str, "java.lang.String.format(this, *args)");
        sb.append(str);
        sb.append("℃\", ");
        return sb.toString();
    }
}
