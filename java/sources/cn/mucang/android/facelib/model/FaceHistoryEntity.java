package cn.mucang.android.facelib.model;

import cn.mucang.android.core.db.IdEntity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/facelib/model/FaceHistoryEntity;", "Lcn/mucang/android/core/db/IdEntity;", "()V", "mark", "", "getMark", "()Ljava/lang/String;", "setMark", "(Ljava/lang/String;)V", "mucangId", "getMucangId", "setMucangId", "updateTime", "", "getUpdateTime", "()J", "setUpdateTime", "(J)V", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceHistoryEntity extends IdEntity {
    private String mark = "";
    private String mucangId = "";
    private long updateTime = System.currentTimeMillis();

    public final String getMark() {
        return this.mark;
    }

    public final String getMucangId() {
        return this.mucangId;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public final void setMark(String str) {
        r.e(str, "<set-?>");
        this.mark = str;
    }

    public final void setMucangId(String str) {
        r.e(str, "<set-?>");
        this.mucangId = str;
    }

    public final void setUpdateTime(long j) {
        this.updateTime = j;
    }
}
