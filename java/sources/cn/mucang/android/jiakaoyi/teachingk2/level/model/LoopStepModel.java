package cn.mucang.android.jiakaoyi.teachingk2.level.model;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;", "Ljava/io/Serializable;", "()V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "sort", "", "getSort", "()I", "setSort", "(I)V", "step", "getStep", "setStep", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoopStepModel implements Serializable {
    private String name = "倒车入库";
    private int sort;
    private int step;

    public final String getName() {
        return this.name;
    }

    public final int getSort() {
        return this.sort;
    }

    public final int getStep() {
        return this.step;
    }

    public final void setName(String str) {
        r.e(str, "<set-?>");
        this.name = str;
    }

    public final void setSort(int i) {
        this.sort = i;
    }

    public final void setStep(int i) {
        this.step = i;
    }
}
