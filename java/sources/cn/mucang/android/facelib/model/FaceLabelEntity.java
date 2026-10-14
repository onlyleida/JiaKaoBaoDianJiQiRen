package cn.mucang.android.facelib.model;

import cn.mucang.android.core.db.IdEntity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.apache.commons.math3.linear.ConjugateGradient;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u001c\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B'\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0002\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R\u001a\u0010\u001d\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%R\u001a\u0010)\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010#\"\u0004\b+\u0010%R\u001a\u0010,\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010#\"\u0004\b.\u0010%R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0017\"\u0004\b0\u0010\u0019R\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0017\"\u0004\b2\u0010\u0019R\u001a\u00103\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0017\"\u0004\b5\u0010\u0019R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u0017\"\u0004\b7\u0010\u0019R\u001a\u00108\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u0017\"\u0004\b:\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0017\"\u0004\b<\u0010\u0019¨\u0006="}, d2 = {"Lcn/mucang/android/facelib/model/FaceLabelEntity;", "Lcn/mucang/android/core/db/IdEntity;", "()V", "label", "", "labelType", "mucangId", ConjugateGradient.VECTOR, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "createTime", "", "getCreateTime", "()J", "setCreateTime", "(J)V", "distance", "", "getDistance", "()F", "setDistance", "(F)V", "extend", "getExtend", "()Ljava/lang/String;", "setExtend", "(Ljava/lang/String;)V", "extend1", "getExtend1", "setExtend1", "faceFile", "getFaceFile", "setFaceFile", "faceHeight", "", "getFaceHeight", "()I", "setFaceHeight", "(I)V", "faceWidth", "getFaceWidth", "setFaceWidth", "faceX", "getFaceX", "setFaceX", "faceY", "getFaceY", "setFaceY", "getLabel", "setLabel", "getLabelType", "setLabelType", "mark", "getMark", "setMark", "getMucangId", "setMucangId", "studentId", "getStudentId", "setStudentId", "getVector", "setVector", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceLabelEntity extends IdEntity {
    private long createTime;
    private float distance;
    private String extend;
    private String extend1;
    private String faceFile;
    private int faceHeight;
    private int faceWidth;
    private int faceX;
    private int faceY;
    private String label;
    private String labelType;
    private String mark;
    private String mucangId;
    private String studentId;
    private String vector;

    public FaceLabelEntity() {
        this("", "", "", "");
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final float getDistance() {
        return this.distance;
    }

    public final String getExtend() {
        return this.extend;
    }

    public final String getExtend1() {
        return this.extend1;
    }

    public final String getFaceFile() {
        return this.faceFile;
    }

    public final int getFaceHeight() {
        return this.faceHeight;
    }

    public final int getFaceWidth() {
        return this.faceWidth;
    }

    public final int getFaceX() {
        return this.faceX;
    }

    public final int getFaceY() {
        return this.faceY;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getLabelType() {
        return this.labelType;
    }

    public final String getMark() {
        return this.mark;
    }

    public final String getMucangId() {
        return this.mucangId;
    }

    public final String getStudentId() {
        return this.studentId;
    }

    public final String getVector() {
        return this.vector;
    }

    public final void setCreateTime(long j) {
        this.createTime = j;
    }

    public final void setDistance(float f2) {
        this.distance = f2;
    }

    public final void setExtend(String str) {
        r.e(str, "<set-?>");
        this.extend = str;
    }

    public final void setExtend1(String str) {
        r.e(str, "<set-?>");
        this.extend1 = str;
    }

    public final void setFaceFile(String str) {
        r.e(str, "<set-?>");
        this.faceFile = str;
    }

    public final void setFaceHeight(int i) {
        this.faceHeight = i;
    }

    public final void setFaceWidth(int i) {
        this.faceWidth = i;
    }

    public final void setFaceX(int i) {
        this.faceX = i;
    }

    public final void setFaceY(int i) {
        this.faceY = i;
    }

    public final void setLabel(String str) {
        r.e(str, "<set-?>");
        this.label = str;
    }

    public final void setLabelType(String str) {
        r.e(str, "<set-?>");
        this.labelType = str;
    }

    public final void setMark(String str) {
        r.e(str, "<set-?>");
        this.mark = str;
    }

    public final void setMucangId(String str) {
        r.e(str, "<set-?>");
        this.mucangId = str;
    }

    public final void setStudentId(String str) {
        r.e(str, "<set-?>");
        this.studentId = str;
    }

    public final void setVector(String str) {
        r.e(str, "<set-?>");
        this.vector = str;
    }

    public FaceLabelEntity(String label, String labelType, String mucangId, String vector) {
        r.e(label, "label");
        r.e(labelType, "labelType");
        r.e(mucangId, "mucangId");
        r.e(vector, "vector");
        this.label = "";
        this.labelType = "";
        this.mucangId = "";
        this.vector = "";
        this.mark = "";
        this.distance = 1.0f;
        this.faceFile = "";
        this.studentId = "";
        this.extend = "";
        this.extend1 = "";
        this.label = label;
        this.labelType = labelType;
        this.mucangId = mucangId;
        this.vector = vector;
        this.createTime = System.currentTimeMillis();
    }
}
