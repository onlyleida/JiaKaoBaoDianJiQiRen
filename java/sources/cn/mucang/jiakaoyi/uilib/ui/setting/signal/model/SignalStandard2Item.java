package cn.mucang.jiakaoyi.uilib.ui.setting.signal.model;

import android.text.TextUtils;
import cn.mucang.android.core.webview.MenuOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.a0.c, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J'\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\t\u0010\u001d\u001a\u00020\rHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\t\"\u0004\b\u0012\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandard2Item;", "", "isOn", "", "text", "", "checked", "(ZLjava/lang/String;Z)V", "getChecked", "()Z", "setChecked", "(Z)V", "extensionId", "", "getExtensionId", "()I", "setExtensionId", "(I)V", "setOn", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "component1", "component2", "component3", MenuOptions.COPY, "equals", "other", "hashCode", "toString", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class SignalStandard2Item {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private boolean isOn;

    /* JADX INFO: renamed from: b, reason: from toString */
    private String text;

    /* JADX INFO: renamed from: c, reason: from toString */
    private boolean checked;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10216d;

    public SignalStandard2Item(boolean z, String text, boolean z2) {
        r.e(text, "text");
        this.isOn = z;
        this.text = text;
        this.checked = z2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getChecked() {
        return this.checked;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getF10216d() {
        return this.f10216d;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getIsOn() {
        return this.isOn;
    }

    public final void e(boolean z) {
        this.checked = z;
    }

    public boolean equals(Object other) {
        if (other == null || !(other instanceof SignalStandard2Item)) {
            return false;
        }
        if (other == this) {
            return true;
        }
        SignalStandard2Item signalStandard2Item = (SignalStandard2Item) other;
        return TextUtils.equals(signalStandard2Item.text, this.text) && signalStandard2Item.isOn == this.isOn && signalStandard2Item.checked == this.checked;
    }

    public final void f(int i) {
        this.f10216d = i;
    }

    public final void g(boolean z) {
        this.isOn = z;
    }

    public final void h(String str) {
        r.e(str, "<set-?>");
        this.text = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public int hashCode() {
        boolean z = this.isOn;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int iHashCode = ((r0 * 31) + this.text.hashCode()) * 31;
        boolean z2 = this.checked;
        return iHashCode + (z2 ? 1 : z2);
    }

    public String toString() {
        return "SignalStandard2Item(isOn=" + this.isOn + ", text=" + this.text + ", checked=" + this.checked + ')';
    }
}
