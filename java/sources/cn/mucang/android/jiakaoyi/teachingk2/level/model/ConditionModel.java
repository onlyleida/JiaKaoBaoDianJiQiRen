package cn.mucang.android.jiakaoyi.teachingk2.level.model;

import com.tencent.open.SocialConstants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionModel;", "Ljava/io/Serializable;", "()V", SocialConstants.PARAM_COMMENT, "", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "type", "", "getType", "()I", "setType", "(I)V", "value", "getValue", "setValue", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ConditionModel implements Serializable {
    private int type;
    private String value = "";
    private String description = "";

    public final String getDescription() {
        return this.description;
    }

    public final int getType() {
        return this.type;
    }

    public final String getValue() {
        return this.value;
    }

    public final void setDescription(String str) {
        r.e(str, "<set-?>");
        this.description = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setValue(String str) {
        r.e(str, "<set-?>");
        this.value = str;
    }
}
