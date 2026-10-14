package cn.mucang.android.jiakaoyi.teachingk2.level.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;", "Ljava/io/Serializable;", "()V", "code", "", "getCode", "()I", "setCode", "(I)V", "pass", "", "getPass", "()Z", "setPass", "(Z)V", "subCode", "getSubCode", "setSubCode", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LevelPassModel implements Serializable {
    private int code;
    private boolean pass = true;
    private int subCode;

    public final int getCode() {
        return this.code;
    }

    public final boolean getPass() {
        return this.pass;
    }

    public final int getSubCode() {
        return this.subCode;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setPass(boolean z) {
        this.pass = z;
    }

    public final void setSubCode(int i) {
        this.subCode = i;
    }
}
