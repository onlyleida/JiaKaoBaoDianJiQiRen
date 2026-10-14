package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;", "Ljava/io/Serializable;", "()V", TtmlNode.ATTR_ID, "", "getId", "()I", "setId", "(I)V", "itemName", "", "getItemName", "()Ljava/lang/String;", "setItemName", "(Ljava/lang/String;)V", "stepId", "getStepId", "setStepId", "stepKey", "getStepKey", "setStepKey", "stepName", "getStepName", "setStepName", "timeStamp", "getTimeStamp", "setTimeStamp", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ServerRouteStepModel implements Serializable {
    private int id;
    private String itemName;
    private int stepId;
    private String stepKey;
    private String stepName;
    private String timeStamp;

    public final int getId() {
        return this.id;
    }

    public final String getItemName() {
        return this.itemName;
    }

    public final int getStepId() {
        return this.stepId;
    }

    public final String getStepKey() {
        return this.stepKey;
    }

    public final String getStepName() {
        return this.stepName;
    }

    public final String getTimeStamp() {
        return this.timeStamp;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setItemName(String str) {
        this.itemName = str;
    }

    public final void setStepId(int i) {
        this.stepId = i;
    }

    public final void setStepKey(String str) {
        this.stepKey = str;
    }

    public final void setStepName(String str) {
        this.stepName = str;
    }

    public final void setTimeStamp(String str) {
        this.timeStamp = str;
    }
}
