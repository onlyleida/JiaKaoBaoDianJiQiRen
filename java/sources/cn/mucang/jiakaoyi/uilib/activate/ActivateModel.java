package cn.mucang.jiakaoyi.uilib.activate;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\b¨\u0006$"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;", "Ljava/io/Serializable;", "()V", "cooperationMode", "", "getCooperationMode", "()I", "setCooperationMode", "(I)V", "deviceNum", "", "getDeviceNum", "()Ljava/lang/String;", "setDeviceNum", "(Ljava/lang/String;)V", "dialog", "Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;", "getDialog", "()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;", "setDialog", "(Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;)V", "highPrecision", "", "getHighPrecision", "()Z", "setHighPrecision", "(Z)V", "serviceFeeExpired", "getServiceFeeExpired", "setServiceFeeExpired", "serviceFeeStatusLabel", "getServiceFeeStatusLabel", "setServiceFeeStatusLabel", "status", "getStatus", "setStatus", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ActivateModel implements Serializable {
    private int cooperationMode;
    private String deviceNum;
    private DialogInfo dialog;
    private boolean highPrecision;
    private boolean serviceFeeExpired;
    private String serviceFeeStatusLabel = "";
    private int status;

    public final int getCooperationMode() {
        return this.cooperationMode;
    }

    public final String getDeviceNum() {
        return this.deviceNum;
    }

    public final DialogInfo getDialog() {
        return this.dialog;
    }

    public final boolean getHighPrecision() {
        return this.highPrecision;
    }

    public final boolean getServiceFeeExpired() {
        return this.serviceFeeExpired;
    }

    public final String getServiceFeeStatusLabel() {
        return this.serviceFeeStatusLabel;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void setCooperationMode(int i) {
        this.cooperationMode = i;
    }

    public final void setDeviceNum(String str) {
        this.deviceNum = str;
    }

    public final void setDialog(DialogInfo dialogInfo) {
        this.dialog = dialogInfo;
    }

    public final void setHighPrecision(boolean z) {
        this.highPrecision = z;
    }

    public final void setServiceFeeExpired(boolean z) {
        this.serviceFeeExpired = z;
    }

    public final void setServiceFeeStatusLabel(String str) {
        r.e(str, "<set-?>");
        this.serviceFeeStatusLabel = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}
