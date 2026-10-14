package cn.mucang.android.core.api.cache.impl;

import cn.mucang.android.core.encode.Digests;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public abstract class e implements cn.mucang.android.core.api.cache.d {

    static final class a implements Comparable<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f2350a;
        String b;

        a(String str, String str2) {
            this.f2350a = str;
            this.b = str2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            int iCompareTo = this.f2350a.compareTo(aVar.f2350a);
            return iCompareTo == 0 ? this.b.compareTo(aVar.b) : iCompareTo;
        }

        public String toString() {
            return this.f2350a + "=" + this.b;
        }
    }

    @Override // cn.mucang.android.core.api.cache.d
    public final String a(String str) {
        String strSubstring;
        String strSubstring2;
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (i2 == -1) {
                if (cCharAt == '?') {
                    i2 = i4;
                }
            } else if (cCharAt == '&') {
                if (i != -1 && i3 != -1) {
                    String strSubstring3 = str.substring(i, i3);
                    String strSubstring4 = str.substring(i3 + 1, i4);
                    if (b(strSubstring3)) {
                        arrayList.add(new a(strSubstring3, strSubstring4));
                    }
                }
                i = -1;
                i3 = -1;
            } else if (cCharAt == '=') {
                i3 = i4;
            } else if (i == -1) {
                i = i4;
            }
        }
        if (i != -1) {
            if (i3 != -1) {
                strSubstring = str.substring(i, i3);
                strSubstring2 = str.substring(i3 + 1);
            } else {
                strSubstring = str.substring(i);
                strSubstring2 = "";
            }
            if (b(strSubstring)) {
                arrayList.add(new a(strSubstring, strSubstring2));
            }
        }
        Collections.sort(arrayList);
        if (i2 != -1) {
            str = str.substring(0, i2);
        }
        return Digests.md5(str + (arrayList.size() > 0 ? arrayList.toString() : ""));
    }

    public abstract boolean b(String str);
}
