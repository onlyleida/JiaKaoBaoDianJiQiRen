package cn.mucang.jiakaoyi.uilib.ui.setting.signal.model;

import android.text.TextUtils;
import cn.mucang.android.core.webview.MenuOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.a0.a, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalBaseItem;", "", "text", "", "value", "(Ljava/lang/String;Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "getValue", "setValue", "component1", "component2", MenuOptions.COPY, "equals", "", "other", "hashCode", "", "toString", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class SignalBaseItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private String text;

    /* JADX INFO: renamed from: b, reason: from toString */
    private String value;

    public SignalBaseItem(String text, String value) {
        r.e(text, "text");
        r.e(value, "value");
        this.text = text;
        this.value = value;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getValue() {
        return this.value;
    }

    public final void c(String str) {
        r.e(str, "<set-?>");
        this.value = str;
    }

    public boolean equals(Object other) {
        if (other == null || !(other instanceof SignalBaseItem)) {
            return false;
        }
        if (other == this) {
            return true;
        }
        SignalBaseItem signalBaseItem = (SignalBaseItem) other;
        return TextUtils.equals(signalBaseItem.value, this.value) && TextUtils.equals(signalBaseItem.text, this.text);
    }

    public int hashCode() {
        return (this.text.hashCode() * 31) + this.value.hashCode();
    }

    public String toString() {
        return "SignalBaseItem(text=" + this.text + ", value=" + this.value + ')';
    }
}
