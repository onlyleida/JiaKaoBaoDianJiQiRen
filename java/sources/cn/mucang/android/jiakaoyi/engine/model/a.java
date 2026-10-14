package cn.mucang.android.jiakaoyi.engine.model;

import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Deduct f3102a;
    public long b;
    public c.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final DeductExtraData f3103d;

    public a(Deduct deduct, long j) {
        this(deduct, j, false, null, null);
    }

    public a(Deduct deduct, long j, boolean z) {
        this(deduct, j, z, null, null);
    }

    public a(Deduct deduct, long j, boolean z, c.b bVar, DeductExtraData deductExtraData) {
        this.f3102a = deduct;
        this.b = j;
        this.c = bVar;
        this.f3103d = deductExtraData;
    }
}
