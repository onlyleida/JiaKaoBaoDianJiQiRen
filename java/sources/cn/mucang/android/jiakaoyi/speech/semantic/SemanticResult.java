package cn.mucang.android.jiakaoyi.speech.semantic;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;", "Ljava/io/Serializable;", "()V", "commandFailTip", "", "getCommandFailTip", "()Ljava/lang/String;", "setCommandFailTip", "(Ljava/lang/String;)V", "commandId", "", "getCommandId", "()J", "setCommandId", "(J)V", "recordId", "getRecordId", "setRecordId", "reply", "getReply", "setReply", "tip", "getTip", "setTip", "type", "", "getType", "()I", "setType", "(I)V", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SemanticResult implements Serializable {
    private String commandFailTip;
    private long commandId;
    private long recordId;
    private String reply;
    private String tip;
    private int type;

    public final String getCommandFailTip() {
        return this.commandFailTip;
    }

    public final long getCommandId() {
        return this.commandId;
    }

    public final long getRecordId() {
        return this.recordId;
    }

    public final String getReply() {
        return this.reply;
    }

    public final String getTip() {
        return this.tip;
    }

    public final int getType() {
        return this.type;
    }

    public final void setCommandFailTip(String str) {
        this.commandFailTip = str;
    }

    public final void setCommandId(long j) {
        this.commandId = j;
    }

    public final void setRecordId(long j) {
        this.recordId = j;
    }

    public final void setReply(String str) {
        this.reply = str;
    }

    public final void setTip(String str) {
        this.tip = str;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
