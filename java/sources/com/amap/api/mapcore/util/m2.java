package com.amap.api.mapcore.util;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class m2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f10988a;
    int[] b;
    int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f10989d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f10990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f10991f;

    public m2(int i, int[] iArr, String str, String str2, String str3) {
        this.f10988a = i;
        this.b = iArr;
        this.f10990e = str;
        this.f10991f = str2;
        str = TextUtils.isEmpty(str) ? str2 : str;
        this.c = -1000;
        if ("regions".equals(str)) {
            this.c = 1001;
        } else if ("water".equals(str)) {
            this.c = 1002;
        } else if ("buildings".equals(str)) {
            this.c = 1003;
        } else if ("roads".equals(str)) {
            this.c = 1004;
        } else if ("labels".equals(str)) {
            this.c = 1005;
        } else if ("borders".equals(str)) {
            this.c = 1006;
        }
        this.f10989d = (i * 1000) + iArr.hashCode();
    }
}
