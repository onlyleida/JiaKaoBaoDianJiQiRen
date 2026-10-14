package cn.mucang.jiakaoyi.uilib.model;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)R\u001a\u0010-\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0015\"\u0004\b/\u0010\u0017R\u001a\u00100\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017R\u001a\u00103\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010'\"\u0004\b5\u0010)R\u001a\u00106\u001a\u000207X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001a\u0010<\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010'\"\u0004\b>\u0010)R\u001e\u0010?\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010D\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001c\u0010E\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\u0006\"\u0004\bG\u0010\bR\u001a\u0010H\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010\f\"\u0004\bJ\u0010\u000eR\u001a\u0010K\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010!\"\u0004\bM\u0010#R\"\u0010N\u001a\n\u0012\u0004\u0012\u00020P\u0018\u00010OX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001a\u0010U\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010!\"\u0004\bW\u0010#R\u001c\u0010X\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010\u0006\"\u0004\bZ\u0010\b¨\u0006["}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;", "Ljava/io/Serializable;", "()V", "alias", "", "getAlias", "()Ljava/lang/String;", "setAlias", "(Ljava/lang/String;)V", "bearing", "", "getBearing", "()F", "setBearing", "(F)V", "brakeBearing", "getBrakeBearing", "setBrakeBearing", "brakeDistance", "", "getBrakeDistance", "()D", "setBrakeDistance", "(D)V", "brakeLat", "getBrakeLat", "setBrakeLat", "brakeLon", "getBrakeLon", "setBrakeLon", TtmlNode.ATTR_ID, "", "getId", "()I", "setId", "(I)V", "judgeBrake", "", "getJudgeBrake", "()Z", "setJudgeBrake", "(Z)V", "judgeTurnLight", "getJudgeTurnLight", "setJudgeTurnLight", "lat", "getLat", "setLat", "lon", "getLon", "setLon", "manualTrigger", "getManualTrigger", "setManualTrigger", "orderId", "", "getOrderId", "()J", "setOrderId", "(J)V", "playStartVoice", "getPlayStartVoice", "setPlayStartVoice", "randomGroup", "getRandomGroup", "()Ljava/lang/Integer;", "setRandomGroup", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "startVoice", "getStartVoice", "setStartVoice", "stepDistance", "getStepDistance", "setStepDistance", "stepId", "getStepId", "setStepId", "teachGpsList", "", "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;", "getTeachGpsList", "()Ljava/util/List;", "setTeachGpsList", "(Ljava/util/List;)V", "teachNum", "getTeachNum", "setTeachNum", "uid", "getUid", "setUid", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteSpotNode implements Serializable {
    private String alias;
    private float bearing;
    private float brakeBearing;
    private double brakeDistance;
    private double brakeLat;
    private double brakeLon;
    private int id;
    private boolean judgeBrake;
    private boolean judgeTurnLight;
    private double lat;
    private double lon;
    private boolean manualTrigger;
    private long orderId;
    private boolean playStartVoice;
    private Integer randomGroup;
    private String startVoice;
    private float stepDistance;
    private int stepId;
    private List<TeachStepNode> teachGpsList;
    private int teachNum;
    private String uid;

    public final String getAlias() {
        return this.alias;
    }

    public final float getBearing() {
        return this.bearing;
    }

    public final float getBrakeBearing() {
        return this.brakeBearing;
    }

    public final double getBrakeDistance() {
        return this.brakeDistance;
    }

    public final double getBrakeLat() {
        return this.brakeLat;
    }

    public final double getBrakeLon() {
        return this.brakeLon;
    }

    public final int getId() {
        return this.id;
    }

    public final boolean getJudgeBrake() {
        return this.judgeBrake;
    }

    public final boolean getJudgeTurnLight() {
        return this.judgeTurnLight;
    }

    public final double getLat() {
        return this.lat;
    }

    public final double getLon() {
        return this.lon;
    }

    public final boolean getManualTrigger() {
        return this.manualTrigger;
    }

    public final long getOrderId() {
        return this.orderId;
    }

    public final boolean getPlayStartVoice() {
        return this.playStartVoice;
    }

    public final Integer getRandomGroup() {
        return this.randomGroup;
    }

    public final String getStartVoice() {
        return this.startVoice;
    }

    public final float getStepDistance() {
        return this.stepDistance;
    }

    public final int getStepId() {
        return this.stepId;
    }

    public final List<TeachStepNode> getTeachGpsList() {
        return this.teachGpsList;
    }

    public final int getTeachNum() {
        return this.teachNum;
    }

    public final String getUid() {
        return this.uid;
    }

    public final void setAlias(String str) {
        this.alias = str;
    }

    public final void setBearing(float f2) {
        this.bearing = f2;
    }

    public final void setBrakeBearing(float f2) {
        this.brakeBearing = f2;
    }

    public final void setBrakeDistance(double d2) {
        this.brakeDistance = d2;
    }

    public final void setBrakeLat(double d2) {
        this.brakeLat = d2;
    }

    public final void setBrakeLon(double d2) {
        this.brakeLon = d2;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setJudgeBrake(boolean z) {
        this.judgeBrake = z;
    }

    public final void setJudgeTurnLight(boolean z) {
        this.judgeTurnLight = z;
    }

    public final void setLat(double d2) {
        this.lat = d2;
    }

    public final void setLon(double d2) {
        this.lon = d2;
    }

    public final void setManualTrigger(boolean z) {
        this.manualTrigger = z;
    }

    public final void setOrderId(long j) {
        this.orderId = j;
    }

    public final void setPlayStartVoice(boolean z) {
        this.playStartVoice = z;
    }

    public final void setRandomGroup(Integer num) {
        this.randomGroup = num;
    }

    public final void setStartVoice(String str) {
        this.startVoice = str;
    }

    public final void setStepDistance(float f2) {
        this.stepDistance = f2;
    }

    public final void setStepId(int i) {
        this.stepId = i;
    }

    public final void setTeachGpsList(List<TeachStepNode> list) {
        this.teachGpsList = list;
    }

    public final void setTeachNum(int i) {
        this.teachNum = i;
    }

    public final void setUid(String str) {
        this.uid = str;
    }
}
