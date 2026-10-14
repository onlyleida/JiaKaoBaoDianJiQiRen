package cn.mucang.android.jiakaoyi.signal.upgrade.model;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010A\u001a\u00020\u0004J\u0006\u0010B\u001a\u00020\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u000f\"\u0004\b\"\u0010\u0011R\u001c\u0010#\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0006\"\u0004\b%\u0010\bR\u001a\u0010&\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0015\"\u0004\b(\u0010\u0017R\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0006\"\u0004\b+\u0010\bR\u001a\u0010,\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u000f\"\u0004\b.\u0010\u0011R\u001c\u0010/\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0006\"\u0004\b1\u0010\bR\u001c\u00102\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0006\"\u0004\b4\u0010\bR\u001a\u00105\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u0015\"\u0004\b7\u0010\u0017R\u001c\u00108\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u0006\"\u0004\b:\u0010\bR\u001a\u0010;\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u0015\"\u0004\b=\u0010\u0017R\u001c\u0010>\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\b¨\u0006C"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "Ljava/io/Serializable;", "()V", "downloadFilePath", "", "getDownloadFilePath", "()Ljava/lang/String;", "setDownloadFilePath", "(Ljava/lang/String;)V", "filePath", "getFilePath", "setFilePath", "force", "", "getForce", "()Z", "setForce", "(Z)V", "hardwarePlatform", "", "getHardwarePlatform", "()I", "setHardwarePlatform", "(I)V", "hardwareVer", "getHardwareVer", "setHardwareVer", TtmlNode.ATTR_ID, "", "getId", "()J", "setId", "(J)V", "isFileAvailable", "setFileAvailable", "md5", "getMd5", "setMd5", "modelCode", "getModelCode", "setModelCode", "modelName", "getModelName", "setModelName", "notice", "getNotice", "setNotice", "noticeContent", "getNoticeContent", "setNoticeContent", "noticeTitle", "getNoticeTitle", "setNoticeTitle", "type", "getType", "setType", "uid", "getUid", "setUid", "version", "getVersion", "setVersion", "versionName", "getVersionName", "setVersionName", "getTypeName", "isMainObd", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UpgradeInfoModel implements Serializable {
    private transient String downloadFilePath;
    private String filePath;
    private boolean force;
    private int hardwarePlatform;
    private int hardwareVer;
    private long id;
    private boolean isFileAvailable;
    private String md5;
    private int modelCode;
    private String modelName;
    private boolean notice;
    private String noticeContent;
    private String noticeTitle;
    private int type;
    private String uid;
    private int version;
    private String versionName;

    public final String getDownloadFilePath() {
        return this.downloadFilePath;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final boolean getForce() {
        return this.force;
    }

    public final int getHardwarePlatform() {
        return this.hardwarePlatform;
    }

    public final int getHardwareVer() {
        return this.hardwareVer;
    }

    public final long getId() {
        return this.id;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final int getModelCode() {
        return this.modelCode;
    }

    public final String getModelName() {
        return this.modelName;
    }

    public final boolean getNotice() {
        return this.notice;
    }

    public final String getNoticeContent() {
        return this.noticeContent;
    }

    public final String getNoticeTitle() {
        return this.noticeTitle;
    }

    public final int getType() {
        return this.type;
    }

    public final String getTypeName() {
        String name = UpgradeType.parse(this.type).getName();
        r.d(name, "parse(type).getName()");
        return name;
    }

    public final String getUid() {
        return this.uid;
    }

    public final int getVersion() {
        return this.version;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    /* JADX INFO: renamed from: isFileAvailable, reason: from getter */
    public final boolean getIsFileAvailable() {
        return this.isFileAvailable;
    }

    public final boolean isMainObd() {
        int i = this.type;
        return i == 1 || i == 2;
    }

    public final void setDownloadFilePath(String str) {
        this.downloadFilePath = str;
    }

    public final void setFileAvailable(boolean z) {
        this.isFileAvailable = z;
    }

    public final void setFilePath(String str) {
        this.filePath = str;
    }

    public final void setForce(boolean z) {
        this.force = z;
    }

    public final void setHardwarePlatform(int i) {
        this.hardwarePlatform = i;
    }

    public final void setHardwareVer(int i) {
        this.hardwareVer = i;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setMd5(String str) {
        this.md5 = str;
    }

    public final void setModelCode(int i) {
        this.modelCode = i;
    }

    public final void setModelName(String str) {
        this.modelName = str;
    }

    public final void setNotice(boolean z) {
        this.notice = z;
    }

    public final void setNoticeContent(String str) {
        this.noticeContent = str;
    }

    public final void setNoticeTitle(String str) {
        this.noticeTitle = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    public final void setVersionName(String str) {
        this.versionName = str;
    }
}
