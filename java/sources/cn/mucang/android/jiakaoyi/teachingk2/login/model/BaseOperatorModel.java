package cn.mucang.android.jiakaoyi.teachingk2.login.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;", "Ljava/io/Serializable;", "()V", "background", "", "getBackground", "()Ljava/lang/String;", "setBackground", "(Ljava/lang/String;)V", "programId", "", "getProgramId", "()I", "setProgramId", "(I)V", "programName", "getProgramName", "setProgramName", "status", "getStatus", "setStatus", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BaseOperatorModel implements Serializable {
    private String background;
    private int programId;
    private String programName;
    private int status;

    public final String getBackground() {
        return this.background;
    }

    public final int getProgramId() {
        return this.programId;
    }

    public final String getProgramName() {
        return this.programName;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void setBackground(String str) {
        this.background = str;
    }

    public final void setProgramId(int i) {
        this.programId = i;
    }

    public final void setProgramName(String str) {
        this.programName = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}
