package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes5.dex */
public class RouteNode implements Serializable {
    private String alias;
    private float bearing;
    private float brakeBearing;
    private double brakeDistance;
    private double brakeLat;
    private double brakeLon;
    private int id;
    private double lat;
    private double lon;
    private Boolean manualTrigger;
    private long orderId;
    private Integer randomGroup;
    private String startVoice;
    private int stepId;
    private List<TeachStepNode> teachNodes;
    private int teachNum;
    private String uid;
    private boolean playStartVoice = true;
    private boolean judgeTurnLight = true;
    private boolean judgeBrake = true;
    private float stepDistance = -1.0f;

    public String getAlias() {
        return this.alias;
    }

    public float getBearing() {
        return this.bearing;
    }

    public float getBrakeBearing() {
        return this.brakeBearing;
    }

    public double getBrakeDistance() {
        return this.brakeDistance;
    }

    public double getBrakeLat() {
        return this.brakeLat;
    }

    public double getBrakeLon() {
        return this.brakeLon;
    }

    public int getId() {
        return this.id;
    }

    public double getLat() {
        return this.lat;
    }

    public double getLon() {
        return this.lon;
    }

    public Boolean getManualTrigger() {
        return this.manualTrigger;
    }

    public long getOrderId() {
        return this.orderId;
    }

    public Integer getRandomGroup() {
        return this.randomGroup;
    }

    public String getStartVoice() {
        return this.startVoice;
    }

    public float getStepDistance() {
        return this.stepDistance;
    }

    public int getStepId() {
        return this.stepId;
    }

    public List<TeachStepNode> getTeachNodes() {
        return this.teachNodes;
    }

    public int getTeachNum() {
        return this.teachNum;
    }

    public String getUid() {
        return this.uid;
    }

    public boolean isJudgeBrake() {
        return this.judgeBrake;
    }

    public boolean isJudgeTurnLight() {
        return this.judgeTurnLight;
    }

    public boolean isPlayStartVoice() {
        return this.playStartVoice;
    }

    public void setAlias(String str) {
        this.alias = str;
    }

    public void setBearing(float f2) {
        this.bearing = f2;
    }

    public void setBrakeBearing(float f2) {
        this.brakeBearing = f2;
    }

    public void setBrakeDistance(double d2) {
        this.brakeDistance = d2;
    }

    public void setBrakeLat(double d2) {
        this.brakeLat = d2;
    }

    public void setBrakeLon(double d2) {
        this.brakeLon = d2;
    }

    public void setId(int i) {
        this.id = i;
    }

    public void setJudgeBrake(boolean z) {
        this.judgeBrake = z;
    }

    public void setJudgeTurnLight(boolean z) {
        this.judgeTurnLight = z;
    }

    public void setLat(double d2) {
        this.lat = d2;
    }

    public void setLon(double d2) {
        this.lon = d2;
    }

    public void setManualTrigger(Boolean bool) {
        this.manualTrigger = bool;
    }

    public void setOrderId(long j) {
        this.orderId = j;
    }

    public void setPlayStartVoice(boolean z) {
        this.playStartVoice = z;
    }

    public void setRandomGroup(Integer num) {
        this.randomGroup = num;
    }

    public void setStartVoice(String str) {
        this.startVoice = str;
    }

    public void setStepDistance(float f2) {
        this.stepDistance = f2;
    }

    public void setStepId(int i) {
        this.stepId = i;
    }

    public void setTeachNodes(List<TeachStepNode> list) {
        this.teachNodes = list;
    }

    public void setTeachNum(int i) {
        this.teachNum = i;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String toString() {
        return "RouteNode{" + this.id + "," + this.stepId + "," + this.lon + "," + this.lat + "," + this.bearing + "," + this.brakeLon + "," + this.brakeLat + "," + this.brakeBearing + "," + this.brakeDistance + "," + this.playStartVoice + "," + this.judgeTurnLight + "," + this.judgeBrake + "," + this.stepDistance + "," + this.orderId + "," + this.alias + "," + this.startVoice + "," + this.teachNum + "," + this.randomGroup + VectorFormat.DEFAULT_SUFFIX;
    }
}
