package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.core.webview.MenuOptions;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u00103\u001a\u00020\u0000J\u0006\u00104\u001a\u000205R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000eR\u001a\u0010'\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010\u000eR\u001a\u0010*\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001c\u0010-\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\f\"\u0004\b/\u0010\u000eR\u001a\u00100\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\f\"\u0004\b2\u0010\u000e¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;", "Lcn/mucang/android/core/db/IdEntity;", "()V", "compressDuration", "", "getCompressDuration", "()J", "setCompressDuration", "(J)V", "compressPath", "", "getCompressPath", "()Ljava/lang/String;", "setCompressPath", "(Ljava/lang/String;)V", "driveLicenseType", "getDriveLicenseType", "setDriveLicenseType", "endTime", "getEndTime", "setEndTime", "originPath", "getOriginPath", "setOriginPath", "shareUrl", "getShareUrl", "setShareUrl", Constant.START_TIME, "getStartTime", "setStartTime", "step", "", "getStep", "()I", "setStep", "(I)V", "traceId", "getTraceId", "setTraceId", "trackId", "getTrackId", "setTrackId", "updateTime", "getUpdateTime", "setUpdateTime", "xyToken", "getXyToken", "setXyToken", "zipPath", "getZipPath", "setZipPath", MenuOptions.COPY, "reset", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HighlightVideoEntity extends IdEntity {
    private long compressDuration;
    private long endTime;
    private long startTime;
    private int step;
    private String originPath = "";
    private String compressPath = "";
    private String xyToken = "";
    private String driveLicenseType = "";
    private String traceId = "";
    private String trackId = "";
    private String shareUrl = "";
    private String zipPath = "";
    private long updateTime = System.currentTimeMillis();

    public final HighlightVideoEntity copy() {
        HighlightVideoEntity highlightVideoEntity = new HighlightVideoEntity();
        highlightVideoEntity.originPath = this.originPath;
        highlightVideoEntity.xyToken = this.xyToken;
        highlightVideoEntity.driveLicenseType = this.driveLicenseType;
        highlightVideoEntity.traceId = this.traceId;
        highlightVideoEntity.step = this.step;
        highlightVideoEntity.startTime = this.startTime;
        highlightVideoEntity.endTime = this.endTime;
        return highlightVideoEntity;
    }

    public final long getCompressDuration() {
        return this.compressDuration;
    }

    public final String getCompressPath() {
        return this.compressPath;
    }

    public final String getDriveLicenseType() {
        return this.driveLicenseType;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final String getOriginPath() {
        return this.originPath;
    }

    public final String getShareUrl() {
        return this.shareUrl;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final int getStep() {
        return this.step;
    }

    public final String getTraceId() {
        return this.traceId;
    }

    public final String getTrackId() {
        return this.trackId;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public final String getXyToken() {
        return this.xyToken;
    }

    public final String getZipPath() {
        return this.zipPath;
    }

    public final void reset() {
        this.originPath = "";
        this.compressPath = "";
        this.zipPath = "";
        this.compressDuration = 0L;
        this.xyToken = "";
        this.driveLicenseType = "";
        this.traceId = "";
        this.trackId = "";
        this.shareUrl = "";
        this.step = 0;
        this.startTime = 0L;
        this.endTime = 0L;
    }

    public final void setCompressDuration(long j) {
        this.compressDuration = j;
    }

    public final void setCompressPath(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.compressPath = str;
    }

    public final void setDriveLicenseType(String str) {
        this.driveLicenseType = str;
    }

    public final void setEndTime(long j) {
        this.endTime = j;
    }

    public final void setOriginPath(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.originPath = str;
    }

    public final void setShareUrl(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.shareUrl = str;
    }

    public final void setStartTime(long j) {
        this.startTime = j;
    }

    public final void setStep(int i) {
        this.step = i;
    }

    public final void setTraceId(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.traceId = str;
    }

    public final void setTrackId(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.trackId = str;
    }

    public final void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public final void setXyToken(String str) {
        this.xyToken = str;
    }

    public final void setZipPath(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.zipPath = str;
    }
}
