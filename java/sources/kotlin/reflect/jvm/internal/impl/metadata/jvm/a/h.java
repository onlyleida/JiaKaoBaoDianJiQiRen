package kotlin.reflect.jvm.internal.impl.metadata.jvm.a;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class h {
    public static final byte[] a(String[] strings) {
        int i;
        r.e(strings, "strings");
        int length = 0;
        for (String str : strings) {
            length += str.length();
        }
        byte[] bArr = new byte[length];
        int length2 = strings.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length2) {
            String str2 = strings[i2];
            i2++;
            int length3 = str2.length() - 1;
            if (length3 >= 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    i = i3 + 1;
                    bArr[i3] = (byte) str2.charAt(i4);
                    if (i4 == length3) {
                        break;
                    }
                    i4 = i5;
                    i3 = i;
                }
                i3 = i;
            }
        }
        return bArr;
    }
}
