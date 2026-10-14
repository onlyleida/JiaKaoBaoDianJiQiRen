package cn.mucang.android.jiakaoyi.teachingk2.trace;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010<\u001a\u00020\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000eR\u001e\u0010'\u001a\u0004\u0018\u00010\u00198FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001b\"\u0004\b)\u0010\u001dR\u001c\u0010*\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010\u001dR\u001c\u0010-\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001b\"\u0004\b/\u0010\u001dR\u001c\u00100\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u001b\"\u0004\b2\u0010\u001dR\u001a\u00103\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\f\"\u0004\b5\u0010\u000eR\u001a\u00106\u001a\u000207X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;¨\u0006="}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceMenuModel;", "Ljava/io/Serializable;", "()V", "createTime", "", "getCreateTime", "()J", "setCreateTime", "(J)V", "deductCount", "", "getDeductCount", "()I", "setDeductCount", "(I)V", "deductScore", "getDeductScore", "setDeductScore", "duration", "getDuration", "setDuration", "endTime", "getEndTime", "setEndTime", TtmlNode.ATTR_ID, "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "shareUrl", "getShareUrl", "setShareUrl", Constant.START_TIME, "getStartTime", "setStartTime", "step", "getStep", "setStep", "stepName", "getStepName", "setStepName", "trackFiles", "getTrackFiles", "setTrackFiles", "trackId", "getTrackId", "setTrackId", "trainId", "getTrainId", "setTrainId", "type", "getType", "setType", "valid", "", "getValid", "()Z", "setValid", "(Z)V", "getReplayUrl", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TraceMenuModel implements Serializable {
    private long createTime;
    private int deductCount;
    private int deductScore;
    private int duration;
    private long endTime;
    private String id;
    private String shareUrl;
    private long startTime;
    private int step;
    private String stepName;
    private String trackFiles;
    private String trackId;
    private String trainId;
    private int type;
    private boolean valid;

    public final long getCreateTime() {
        return this.createTime;
    }

    public final int getDeductCount() {
        return this.deductCount;
    }

    public final int getDeductScore() {
        return this.deductScore;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final String getId() {
        return this.id;
    }

    public final String getReplayUrl() {
        String str = MucangConfig.v() ? "https://share-m.ttt.kakamobi.com/activity.kakamobi.com/jiakaobaodian-guijihuifang/b2-k2.html" : "https://share-m.kakamobi.com/activity.kakamobi.com/jiakaobaodian-guijihuifang/b2-k2.html";
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("?authToken=");
        XyUserModel xyUserModelE = RobotAccount.i().e();
        sb.append((Object) (xyUserModelE == null ? null : xyUserModelE.getAuthToken()));
        sb.append("&id=");
        sb.append((Object) this.trackId);
        return sb.toString();
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

    public final String getStepName() {
        Step stepFindWithType = Step.findWithType(this.step);
        if (stepFindWithType != null) {
            this.stepName = stepFindWithType.stepName;
        }
        return this.stepName;
    }

    public final String getTrackFiles() {
        return this.trackFiles;
    }

    public final String getTrackId() {
        return this.trackId;
    }

    public final String getTrainId() {
        return this.trainId;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean getValid() {
        return this.valid;
    }

    public final void setCreateTime(long j) {
        this.createTime = j;
    }

    public final void setDeductCount(int i) {
        this.deductCount = i;
    }

    public final void setDeductScore(int i) {
        this.deductScore = i;
    }

    public final void setDuration(int i) {
        this.duration = i;
    }

    public final void setEndTime(long j) {
        this.endTime = j;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public final void setStartTime(long j) {
        this.startTime = j;
    }

    public final void setStep(int i) {
        this.step = i;
    }

    public final void setStepName(String str) {
        this.stepName = str;
    }

    public final void setTrackFiles(String str) {
        this.trackFiles = str;
    }

    public final void setTrackId(String str) {
        this.trackId = str;
    }

    public final void setTrainId(String str) {
        this.trainId = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setValid(boolean z) {
        this.valid = z;
    }
}
