package cn.mucang.android.jiakaoyi.teachingk2.safe;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;", "()V", "text", "", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "value", "getValue", "setValue", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class SafeServerConfigModel extends SafeVisibleModel {
    private String text;
    private String value;

    public final String getText() {
        return this.text;
    }

    public final String getValue() {
        return this.value;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final void setValue(String str) {
        this.value = str;
    }
}
