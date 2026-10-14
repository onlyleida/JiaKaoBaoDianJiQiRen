package cn.mucang.jiakaoyi.uilib.utils;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class k {
    public static boolean a(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str.length()) {
            int i2 = i + 1;
            try {
                int i3 = Integer.parseInt(str.substring(i, i2));
                if (i3 <= 0 || i3 > 5) {
                    return false;
                }
                arrayList.add(Integer.valueOf(i3));
                i = i2;
            } catch (Throwable unused) {
                return false;
            }
        }
        if (arrayList.size() > 1) {
            int i4 = 0;
            while (i4 < arrayList.size() - 1) {
                int iIntValue = ((Integer) arrayList.get(i4)).intValue();
                i4++;
                if (Math.abs(iIntValue - ((Integer) arrayList.get(i4)).intValue()) != 1) {
                    return false;
                }
            }
        }
        return true;
    }
}
