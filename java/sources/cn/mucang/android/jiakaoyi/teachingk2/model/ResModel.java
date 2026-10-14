package cn.mucang.android.jiakaoyi.teachingk2.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001d¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;", "Ljava/io/Serializable;", "()V", "fileMd5", "", "getFileMd5", "()Ljava/lang/String;", "setFileMd5", "(Ljava/lang/String;)V", "fileSize", "", "getFileSize", "()J", "setFileSize", "(J)V", "forceUpdate", "", "getForceUpdate", "()Z", "setForceUpdate", "(Z)V", "posMapCode", "getPosMapCode", "setPosMapCode", "type", "", "getType", "()I", "setType", "(I)V", "url", "getUrl", "setUrl", "version", "getVersion", "setVersion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ResModel implements Serializable {
    private String fileMd5;
    private long fileSize;
    private boolean forceUpdate;
    private String posMapCode;
    private int type;
    private String url;
    private int version;

    public final String getFileMd5() {
        return this.fileMd5;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final boolean getForceUpdate() {
        return this.forceUpdate;
    }

    public final String getPosMapCode() {
        return this.posMapCode;
    }

    public final int getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public final int getVersion() {
        return this.version;
    }

    public final void setFileMd5(String str) {
        this.fileMd5 = str;
    }

    public final void setFileSize(long j) {
        this.fileSize = j;
    }

    public final void setForceUpdate(boolean z) {
        this.forceUpdate = z;
    }

    public final void setPosMapCode(String str) {
        this.posMapCode = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }
}
