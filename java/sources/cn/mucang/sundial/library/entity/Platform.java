package cn.mucang.sundial.library.entity;

import com.alibaba.fastjson.JSON;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b;\u0010<J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0014\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR\"\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\u001e\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\n\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\"\u0010!\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\n\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000eR\"\u0010$\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0019\u001a\u0004\b%\u0010\u001b\"\u0004\b&\u0010\u001dR\"\u0010'\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0019\u001a\u0004\b(\u0010\u001b\"\u0004\b)\u0010\u001dR$\u0010*\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0010\u001a\u0004\b+\u0010\u0007\"\u0004\b,\u0010\u0013R\"\u0010-\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\n\u001a\u0004\b.\u0010\f\"\u0004\b/\u0010\u000eR\"\u00100\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\n\u001a\u0004\b1\u0010\f\"\u0004\b2\u0010\u000eR\"\u00103\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u0010\u0004\"\u0004\b6\u00107R\"\u00108\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010\u0019\u001a\u0004\b9\u0010\u001b\"\u0004\b:\u0010\u001d¨\u0006="}, d2 = {"Lcn/mucang/sundial/library/entity/Platform;", "Ljava/io/Serializable;", "", "isValid", "()Z", "", "toString", "()Ljava/lang/String;", "", "port", "I", "getPort", "()I", "setPort", "(I)V", "hostUrl", "Ljava/lang/String;", "getHostUrl", "setHostUrl", "(Ljava/lang/String;)V", "waitTakePhoto", "getWaitTakePhoto", "setWaitTakePhoto", "", "subject2LearnDataFactor", "F", "getSubject2LearnDataFactor", "()F", "setSubject2LearnDataFactor", "(F)V", "mileageAccuracy", "getMileageAccuracy", "setMileageAccuracy", "liveImageSecond", "getLiveImageSecond", "setLiveImageSecond", "learnDataFactor", "getLearnDataFactor", "setLearnDataFactor", "maxSpeed", "getMaxSpeed", "setMaxSpeed", "ip", "getIp", "setIp", "logInOutSecond", "getLogInOutSecond", "setLogInOutSecond", "loginMode", "getLoginMode", "setLoginMode", "takePhotoVoice", "Z", "getTakePhotoVoice", "setTakePhotoVoice", "(Z)V", "subject3LearnDataFactor", "getSubject3LearnDataFactor", "setSubject3LearnDataFactor", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class Platform implements Serializable {
    private String hostUrl;
    private String ip;
    private int loginMode;
    private int port;
    private int mileageAccuracy = 100;
    private boolean takePhotoVoice = true;
    private int waitTakePhoto = 3;
    private float learnDataFactor = 1.0f;
    private int logInOutSecond = 5;
    private int liveImageSecond = 5;
    private float subject2LearnDataFactor = 1.0f;
    private float subject3LearnDataFactor = 1.0f;
    private float maxSpeed = 1.0f;

    public final String getHostUrl() {
        return this.hostUrl;
    }

    public final String getIp() {
        return this.ip;
    }

    public final float getLearnDataFactor() {
        return this.learnDataFactor;
    }

    public final int getLiveImageSecond() {
        return this.liveImageSecond;
    }

    public final int getLogInOutSecond() {
        return this.logInOutSecond;
    }

    public final int getLoginMode() {
        return this.loginMode;
    }

    public final float getMaxSpeed() {
        return this.maxSpeed;
    }

    public final int getMileageAccuracy() {
        return this.mileageAccuracy;
    }

    public final int getPort() {
        return this.port;
    }

    public final float getSubject2LearnDataFactor() {
        return this.subject2LearnDataFactor;
    }

    public final float getSubject3LearnDataFactor() {
        return this.subject3LearnDataFactor;
    }

    public final boolean getTakePhotoVoice() {
        return this.takePhotoVoice;
    }

    public final int getWaitTakePhoto() {
        return this.waitTakePhoto;
    }

    public final boolean isValid() {
        String str = this.ip;
        if ((str == null || t.r(str)) || this.port <= 0) {
            return false;
        }
        String str2 = this.hostUrl;
        return !(str2 == null || t.r(str2));
    }

    public final void setHostUrl(String str) {
        this.hostUrl = str;
    }

    public final void setIp(String str) {
        this.ip = str;
    }

    public final void setLearnDataFactor(float f2) {
        this.learnDataFactor = f2;
    }

    public final void setLiveImageSecond(int i) {
        this.liveImageSecond = i;
    }

    public final void setLogInOutSecond(int i) {
        this.logInOutSecond = i;
    }

    public final void setLoginMode(int i) {
        this.loginMode = i;
    }

    public final void setMaxSpeed(float f2) {
        this.maxSpeed = f2;
    }

    public final void setMileageAccuracy(int i) {
        this.mileageAccuracy = i;
    }

    public final void setPort(int i) {
        this.port = i;
    }

    public final void setSubject2LearnDataFactor(float f2) {
        this.subject2LearnDataFactor = f2;
    }

    public final void setSubject3LearnDataFactor(float f2) {
        this.subject3LearnDataFactor = f2;
    }

    public final void setTakePhotoVoice(boolean z) {
        this.takePhotoVoice = z;
    }

    public final void setWaitTakePhoto(int i) {
        this.waitTakePhoto = i;
    }

    public String toString() {
        String jSONString = JSON.toJSONString(this);
        r.d(jSONString, "JSON.toJSONString(this)");
        return jSONString;
    }
}
