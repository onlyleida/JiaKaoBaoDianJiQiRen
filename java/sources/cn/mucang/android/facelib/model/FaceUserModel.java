package cn.mucang.android.facelib.model;

import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Regex;

/* JADX INFO: renamed from: cn.mucang.android.facelib.model.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\t¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/facelib/model/FaceUserModel;", "", "mark", "", "studentId", "mucangId", "xyToken", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getMark", "()Ljava/lang/String;", "getMucangId", "sessionId", "getSessionId", "getStudentId", "getXyToken", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceUserModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3024a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3026e;

    public FaceUserModel(String mark, String studentId, String mucangId, String xyToken) {
        r.e(mark, "mark");
        r.e(studentId, "studentId");
        r.e(mucangId, "mucangId");
        r.e(xyToken, "xyToken");
        this.f3024a = mark;
        this.b = studentId;
        this.c = mucangId;
        this.f3025d = xyToken;
        String string = UUID.randomUUID().toString();
        r.d(string, "randomUUID().toString()");
        this.f3026e = new Regex("-").replace(string, "");
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF3024a() {
        return this.f3024a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getF3026e() {
        return this.f3026e;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getF3025d() {
        return this.f3025d;
    }
}
