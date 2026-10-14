package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010\u0014¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "Ljava/io/Serializable;", "()V", "notPassSteps", "", "", "getNotPassSteps", "()Ljava/util/List;", "setNotPassSteps", "(Ljava/util/List;)V", "select", "", "getSelect", "()Z", "setSelect", "(Z)V", "status", "getStatus", "()I", "setStatus", "(I)V", "subType", "", "getSubType", "()Ljava/lang/String;", "setSubType", "(Ljava/lang/String;)V", "subTypeName", "getSubTypeName", "setSubTypeName", "type", "getType", "setType", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AcceptanceChildModel implements Serializable {
    private List<Integer> notPassSteps;
    private transient boolean select;
    private int status;
    private String subType;
    private String subTypeName;
    private int type;

    public final List<Integer> getNotPassSteps() {
        return this.notPassSteps;
    }

    public final boolean getSelect() {
        return this.select;
    }

    public final int getStatus() {
        return this.status;
    }

    public final String getSubType() {
        return this.subType;
    }

    public final String getSubTypeName() {
        return this.subTypeName;
    }

    public final int getType() {
        return this.type;
    }

    public final void setNotPassSteps(List<Integer> list) {
        this.notPassSteps = list;
    }

    public final void setSelect(boolean z) {
        this.select = z;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setSubType(String str) {
        this.subType = str;
    }

    public final void setSubTypeName(String str) {
        this.subTypeName = str;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
