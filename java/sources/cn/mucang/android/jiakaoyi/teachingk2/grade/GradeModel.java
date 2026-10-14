package cn.mucang.android.jiakaoyi.teachingk2.grade;

import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001a\u0010*\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001a\u00100\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001a\u00103\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\b¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;", "Ljava/io/Serializable;", "()V", "analysis", "", "getAnalysis", "()Z", "setAnalysis", "(Z)V", "brake", "getBrake", "setBrake", "deductVoice", "getDeductVoice", "setDeductVoice", "enable", "getEnable", "setEnable", "error", "getError", "setError", "guide", "getGuide", "setGuide", DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, "", "getLevel", "()I", "setLevel", "(I)V", "line", "getLine", "setLine", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "picture", "getPicture", "setPicture", "positionGuide", "getPositionGuide", "setPositionGuide", "stopVoice", "getStopVoice", "setStopVoice", "teach", "getTeach", "setTeach", "video", "getVideo", "setVideo", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GradeModel implements Serializable {
    private boolean brake;
    private String name;
    private boolean video;
    private boolean enable = true;
    private boolean teach = true;
    private boolean error = true;
    private boolean picture = true;
    private boolean line = true;
    private boolean deductVoice = true;
    private boolean stopVoice = true;
    private boolean analysis = true;
    private boolean guide = true;
    private boolean positionGuide = true;
    private int level = 10;

    public final boolean getAnalysis() {
        return this.analysis;
    }

    public final boolean getBrake() {
        return this.brake;
    }

    public final boolean getDeductVoice() {
        return this.deductVoice;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final boolean getError() {
        return this.error;
    }

    public final boolean getGuide() {
        return this.guide;
    }

    public final int getLevel() {
        return this.level;
    }

    public final boolean getLine() {
        return this.line;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean getPicture() {
        return this.picture;
    }

    public final boolean getPositionGuide() {
        return this.positionGuide;
    }

    public final boolean getStopVoice() {
        return this.stopVoice;
    }

    public final boolean getTeach() {
        return this.teach;
    }

    public final boolean getVideo() {
        return this.video;
    }

    public final void setAnalysis(boolean z) {
        this.analysis = z;
    }

    public final void setBrake(boolean z) {
        this.brake = z;
    }

    public final void setDeductVoice(boolean z) {
        this.deductVoice = z;
    }

    public final void setEnable(boolean z) {
        this.enable = z;
    }

    public final void setError(boolean z) {
        this.error = z;
    }

    public final void setGuide(boolean z) {
        this.guide = z;
    }

    public final void setLevel(int i) {
        this.level = i;
    }

    public final void setLine(boolean z) {
        this.line = z;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPicture(boolean z) {
        this.picture = z;
    }

    public final void setPositionGuide(boolean z) {
        this.positionGuide = z;
    }

    public final void setStopVoice(boolean z) {
        this.stopVoice = z;
    }

    public final void setTeach(boolean z) {
        this.teach = z;
    }

    public final void setVideo(boolean z) {
        this.video = z;
    }
}
