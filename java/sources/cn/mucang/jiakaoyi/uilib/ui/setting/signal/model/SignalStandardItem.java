package cn.mucang.jiakaoyi.uilib.ui.setting.signal.model;

import android.text.TextUtils;
import cn.mucang.android.core.webview.MenuOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.a0.d, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0016"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandardItem;", "", "isOn", "", "text", "", "(ZLjava/lang/String;)V", "()Z", "setOn", "(Z)V", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "component1", "component2", MenuOptions.COPY, "equals", "other", "hashCode", "", "toString", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class SignalStandardItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private boolean isOn;

    /* JADX INFO: renamed from: b, reason: from toString */
    private String text;

    public SignalStandardItem(boolean z, String text) {
        r.e(text, "text");
        this.isOn = z;
        this.text = text;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getIsOn() {
        return this.isOn;
    }

    public final void c(boolean z) {
        this.isOn = z;
    }

    public final void d(String str) {
        r.e(str, "<set-?>");
        this.text = str;
    }

    public boolean equals(Object other) {
        if (other == null || !(other instanceof SignalStandardItem)) {
            return false;
        }
        if (other == this) {
            return true;
        }
        SignalStandardItem signalStandardItem = (SignalStandardItem) other;
        return TextUtils.equals(signalStandardItem.text, this.text) && signalStandardItem.isOn == this.isOn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.isOn;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.text.hashCode();
    }

    public String toString() {
        return "SignalStandardItem(isOn=" + this.isOn + ", text=" + this.text + ')';
    }
}
