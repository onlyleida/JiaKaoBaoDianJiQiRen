package com.tencent.bugly.proguard;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public final class l implements Serializable, Comparable<l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13885a;
    public String b;
    public long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f13887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f13888f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f13889g;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(l lVar) {
        return (int) (this.c - lVar.c);
    }
}
