package cn.mucang.sundial.library.entity;

import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechConstant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b;\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bE\u0010FJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u000e\u001a\u0004\b\u001c\u0010\u0010\"\u0004\b\u001d\u0010\u0012R\"\u0010\u001e\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u000e\u001a\u0004\b\u001f\u0010\u0010\"\u0004\b \u0010\u0012R$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0017\u001a\u0004\b\"\u0010\u0004\"\u0004\b#\u0010\u001aR\"\u0010$\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u000e\u001a\u0004\b%\u0010\u0010\"\u0004\b&\u0010\u0012R$\u0010'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0017\u001a\u0004\b(\u0010\u0004\"\u0004\b)\u0010\u001aR\"\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0007\u001a\u0004\b+\u0010\t\"\u0004\b,\u0010\u000bR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0017\u001a\u0004\b.\u0010\u0004\"\u0004\b/\u0010\u001aR\"\u00100\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0007\u001a\u0004\b1\u0010\t\"\u0004\b2\u0010\u000bR\"\u00103\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\u000e\u001a\u0004\b4\u0010\u0010\"\u0004\b5\u0010\u0012R\"\u00106\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\u000e\u001a\u0004\b7\u0010\u0010\"\u0004\b8\u0010\u0012R\"\u00109\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010\u0007\u001a\u0004\b:\u0010\t\"\u0004\b;\u0010\u000bR$\u0010<\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010\u0017\u001a\u0004\b=\u0010\u0004\"\u0004\b>\u0010\u001aR$\u0010?\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010\u0017\u001a\u0004\b@\u0010\u0004\"\u0004\bA\u0010\u001aR$\u0010B\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010\u0017\u001a\u0004\bC\u0010\u0004\"\u0004\bD\u0010\u001a¨\u0006G"}, d2 = {"Lcn/mucang/sundial/library/entity/TrainEntity;", "Ljava/io/Serializable;", "", "toString", "()Ljava/lang/String;", "", "todayMileage", "D", "getTodayMileage", "()D", "setTodayMileage", "(D)V", "", "studentId", "I", "getStudentId", "()I", "setStudentId", "(I)V", "validTime", "getValidTime", "setValidTime", "trainType", "Ljava/lang/String;", "getTrainType", "setTrainType", "(Ljava/lang/String;)V", TtmlNode.ATTR_ID, "getId", "setId", "todayTime", "getTodayTime", "setTodayTime", "subjectName", "getSubjectName", "setSubjectName", "requireTotalTime", "getRequireTotalTime", "setRequireTotalTime", SpeechConstant.SUBJECT, "getSubject", "setSubject", "mileage", "getMileage", "setMileage", "certificateCode", "getCertificateCode", "setCertificateCode", "validMileage", "getValidMileage", "setValidMileage", "requireMileage", "getRequireMileage", "setRequireMileage", "waitApproveTime", "getWaitApproveTime", "setWaitApproveTime", "waitApproveMileage", "getWaitApproveMileage", "setWaitApproveMileage", "orgCode", "getOrgCode", "setOrgCode", "studentName", "getStudentName", "setStudentName", "orgName", "getOrgName", "setOrgName", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TrainEntity implements Serializable {
    private String certificateCode;
    private int id;
    private double mileage;
    private String orgCode;
    private String orgName;
    private int requireMileage;
    private int requireTotalTime;
    private int studentId;
    private String studentName;
    private String subject;
    private String subjectName;
    private double todayMileage;
    private int todayTime;
    private String trainType;
    private double validMileage;
    private int validTime;
    private double waitApproveMileage;
    private int waitApproveTime;

    public final String getCertificateCode() {
        return this.certificateCode;
    }

    public final int getId() {
        return this.id;
    }

    public final double getMileage() {
        return this.mileage;
    }

    public final String getOrgCode() {
        return this.orgCode;
    }

    public final String getOrgName() {
        return this.orgName;
    }

    public final int getRequireMileage() {
        return this.requireMileage;
    }

    public final int getRequireTotalTime() {
        return this.requireTotalTime;
    }

    public final int getStudentId() {
        return this.studentId;
    }

    public final String getStudentName() {
        return this.studentName;
    }

    public final String getSubject() {
        return this.subject;
    }

    public final String getSubjectName() {
        return this.subjectName;
    }

    public final double getTodayMileage() {
        return this.todayMileage;
    }

    public final int getTodayTime() {
        return this.todayTime;
    }

    public final String getTrainType() {
        return this.trainType;
    }

    public final double getValidMileage() {
        return this.validMileage;
    }

    public final int getValidTime() {
        return this.validTime;
    }

    public final double getWaitApproveMileage() {
        return this.waitApproveMileage;
    }

    public final int getWaitApproveTime() {
        return this.waitApproveTime;
    }

    public final void setCertificateCode(String str) {
        this.certificateCode = str;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setMileage(double d2) {
        this.mileage = d2;
    }

    public final void setOrgCode(String str) {
        this.orgCode = str;
    }

    public final void setOrgName(String str) {
        this.orgName = str;
    }

    public final void setRequireMileage(int i) {
        this.requireMileage = i;
    }

    public final void setRequireTotalTime(int i) {
        this.requireTotalTime = i;
    }

    public final void setStudentId(int i) {
        this.studentId = i;
    }

    public final void setStudentName(String str) {
        this.studentName = str;
    }

    public final void setSubject(String str) {
        this.subject = str;
    }

    public final void setSubjectName(String str) {
        this.subjectName = str;
    }

    public final void setTodayMileage(double d2) {
        this.todayMileage = d2;
    }

    public final void setTodayTime(int i) {
        this.todayTime = i;
    }

    public final void setTrainType(String str) {
        this.trainType = str;
    }

    public final void setValidMileage(double d2) {
        this.validMileage = d2;
    }

    public final void setValidTime(int i) {
        this.validTime = i;
    }

    public final void setWaitApproveMileage(double d2) {
        this.waitApproveMileage = d2;
    }

    public final void setWaitApproveTime(int i) {
        this.waitApproveTime = i;
    }

    public String toString() {
        String jSONString = JSON.toJSONString(this);
        r.d(jSONString, "JSON.toJSONString(this)");
        return jSONString;
    }
}
