package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.core.webview.MenuOptions;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010*\u001a\u00020\u0000R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R\u001e\u0010$\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b%\u0010\r\"\u0004\b&\u0010\u000fR\u001c\u0010'\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001e\"\u0004\b)\u0010 ¨\u0006+"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;", "Ljava/io/Serializable;", "()V", "bearing", "", "getBearing", "()Ljava/lang/Float;", "setBearing", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "examSiteId", "", "getExamSiteId", "()Ljava/lang/Long;", "setExamSiteId", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "latitude", "", "getLatitude", "()Ljava/lang/Double;", "setLatitude", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "longitude", "getLongitude", "setLongitude", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "owner", "getOwner", "setOwner", "teachId", "getTeachId", "setTeachId", "uid", "getUid", "setUid", MenuOptions.COPY, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachStepNode implements Serializable {
    private Float bearing;
    private Long examSiteId;
    private Double latitude;
    private Double longitude;
    private String name;
    private String owner;
    private Long teachId;
    private String uid;

    public final TeachStepNode copy() {
        TeachStepNode teachStepNode = new TeachStepNode();
        teachStepNode.setExamSiteId(teachStepNode.getExamSiteId());
        teachStepNode.setLatitude(teachStepNode.getLatitude());
        teachStepNode.setLongitude(teachStepNode.getLongitude());
        teachStepNode.setBearing(teachStepNode.getBearing());
        teachStepNode.setName(teachStepNode.getName());
        teachStepNode.setOwner(teachStepNode.getOwner());
        teachStepNode.setTeachId(teachStepNode.getTeachId());
        teachStepNode.setUid(teachStepNode.getUid());
        return teachStepNode;
    }

    public final Float getBearing() {
        return this.bearing;
    }

    public final Long getExamSiteId() {
        return this.examSiteId;
    }

    public final Double getLatitude() {
        return this.latitude;
    }

    public final Double getLongitude() {
        return this.longitude;
    }

    public final String getName() {
        return this.name;
    }

    public final String getOwner() {
        return this.owner;
    }

    public final Long getTeachId() {
        return this.teachId;
    }

    public final String getUid() {
        return this.uid;
    }

    public final void setBearing(Float f2) {
        this.bearing = f2;
    }

    public final void setExamSiteId(Long l) {
        this.examSiteId = l;
    }

    public final void setLatitude(Double d2) {
        this.latitude = d2;
    }

    public final void setLongitude(Double d2) {
        this.longitude = d2;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOwner(String str) {
        this.owner = str;
    }

    public final void setTeachId(Long l) {
        this.teachId = l;
    }

    public final void setUid(String str) {
        this.uid = str;
    }
}
