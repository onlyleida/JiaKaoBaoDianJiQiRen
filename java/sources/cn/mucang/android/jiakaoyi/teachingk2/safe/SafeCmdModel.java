package cn.mucang.android.jiakaoyi.teachingk2.safe;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\b¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCmdModel;", "Ljava/io/Serializable;", "()V", "btn", "", "getBtn", "()Ljava/lang/String;", "setBtn", "(Ljava/lang/String;)V", "btnClick", "Lkotlin/Function0;", "", "getBtnClick", "()Lkotlin/jvm/functions/Function0;", "setBtnClick", "(Lkotlin/jvm/functions/Function0;)V", "resId", "", "getResId", "()I", "setResId", "(I)V", "text", "getText", "setText", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeCmdModel implements Serializable {
    private Function0<kotlin.v> btnClick;
    private int resId;
    private String text = "";
    private String btn = "";

    public final String getBtn() {
        return this.btn;
    }

    public final Function0<kotlin.v> getBtnClick() {
        return this.btnClick;
    }

    public final int getResId() {
        return this.resId;
    }

    public final String getText() {
        return this.text;
    }

    public final void setBtn(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.btn = str;
    }

    public final void setBtnClick(Function0<kotlin.v> function0) {
        this.btnClick = function0;
    }

    public final void setResId(int i) {
        this.resId = i;
    }

    public final void setText(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.text = str;
    }
}
