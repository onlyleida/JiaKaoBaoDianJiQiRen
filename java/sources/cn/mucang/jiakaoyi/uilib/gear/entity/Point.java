package cn.mucang.jiakaoyi.uilib.gear.entity;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;", "Ljava/io/Serializable;", "()V", "dp", "", "getDp", "()Ljava/lang/Float;", "setDp", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "dr", "getDr", "setDr", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class Point implements Serializable {
    private Float dp;
    private Float dr;

    public final Float getDp() {
        return this.dp;
    }

    public final Float getDr() {
        return this.dr;
    }

    public final void setDp(Float f2) {
        this.dp = f2;
    }

    public final void setDr(Float f2) {
        this.dr = f2;
    }
}
