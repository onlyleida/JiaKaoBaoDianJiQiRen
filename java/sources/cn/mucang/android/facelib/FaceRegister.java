package cn.mucang.android.facelib;

import android.graphics.Bitmap;
import androidx.lifecycle.a0;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.facelib.model.FaceHistoryEntity;
import cn.mucang.android.facelib.model.FaceLabelEntity;
import cn.mucang.android.facelib.model.FaceUserModel;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.jiakaoyi.uilib.login.api.FaceCheckApi;
import cn.mucang.jiakaoyi.uilib.socket.model.LogUploadRequest;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import org.opencv.core.Rect;

/* JADX INFO: renamed from: cn.mucang.android.facelib.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0011J\u001e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0011J\u0006\u0010\u001f\u001a\u00020\u0011R2\u0010\u0003\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u0007\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\b\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\t\u001a*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b0\nj\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/android/facelib/FaceRegister;", "", "()V", "avgCount", "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "", "kotlin.jvm.PlatformType", "avgX", "avgY", "fullAngleList", "Ljava/util/ArrayList;", "Lkotlin/Pair;", "Lkotlin/collections/ArrayList;", "posFailCount", "posSuccessCount", "registerCount", "clear", "", "deleteUserFace", "studentId", "", "mark", "observeLogUpload", "register", "faceData", "Lcn/mucang/android/facelib/tflite/SimilarityClassifier$Recognition;", "user", "Lcn/mucang/android/facelib/model/FaceUserModel;", "faceResult", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "reset", "trimOldLabel", "Companion", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceRegister {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f3031h = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3035f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r0<Integer> f3032a = r0.f("face_avg_x", 0);
    private final r0<Integer> b = r0.f("face_avg_y", 0);
    private final r0<Integer> c = r0.f("face_avg_count", 0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayList<Pair<Integer, Integer>> f3036g = new ArrayList<>();

    /* JADX INFO: renamed from: cn.mucang.android.facelib.q$a */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/facelib/FaceRegister$Companion;", "", "()V", "MAX_FACE_LABEL_COUNT", "", "REGISTER_STATE_ANGLE_FULL", "REGISTER_STATE_FULL", "REGISTER_STATE_INVALID", "REGISTER_STATE_SUCCESS", InputIdCardActivity.DELETE, "", "faceLabel", "Lcn/mucang/android/facelib/model/FaceLabelEntity;", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:19:0x007b A[Catch: all -> 0x0099, TryCatch #0 {all -> 0x0099, blocks: (B:10:0x0041, B:12:0x0052, B:14:0x0058, B:15:0x005b, B:17:0x0067, B:24:0x0093, B:19:0x007b, B:21:0x008a, B:23:0x0090), top: B:34:0x0041 }] */
        public final void a(FaceLabelEntity faceLabel) {
            File file;
            r.e(faceLabel, "faceLabel");
            String mark = faceLabel.getMark();
            if (faceLabel.getId() != null) {
                Long id = faceLabel.getId();
                r.d(id, "faceLabel.id");
                if (id.longValue() > 0) {
                    Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
                    r.d(DbLock, "DbLock");
                    synchronized (DbLock) {
                        cn.mucang.android.core.db.a aVarA = cn.mucang.android.jiakaoyi.framework.f.a.a();
                        Long id2 = faceLabel.getId();
                        r.d(id2, "faceLabel.id");
                        aVarA.h(FaceLabelEntity.class, id2.longValue());
                    }
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        File file2 = new File(faceLabel.getFaceFile());
                        if (file2.exists() && file2.isFile()) {
                            file2.delete();
                        }
                        if (faceLabel.getVector().length() >= 500) {
                            String vector = faceLabel.getVector();
                            String separator = File.separator;
                            r.d(separator, "separator");
                            if (StringsKt__StringsKt.G(vector, separator, false, 2, null)) {
                                file = new File(faceLabel.getVector());
                                if (file.exists() && file.isFile()) {
                                    file.delete();
                                }
                            }
                        } else {
                            file = new File(faceLabel.getVector());
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                        Result.m139constructorimpl(kotlin.v.f15822a);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        Result.m139constructorimpl(kotlin.k.a(th));
                    }
                    cn.mucang.android.facelib.x.a.a(r.m(mark, " 删除向量成功"));
                    return;
                }
            }
            cn.mucang.android.facelib.x.a.a(r.m(mark, " 删除向量失败：_id为0"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(LogUploadRequest logUploadRequest) {
        DebounceUtil.f3633a.b("face_log_upload_count", 5000, new Runnable() { // from class: cn.mucang.android.facelib.i
            @Override // java.lang.Runnable
            public final void run() {
                FaceRegister.h();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h() {
        n0.a(new Runnable() { // from class: cn.mucang.android.facelib.h
            @Override // java.lang.Runnable
            public final void run() {
                FaceRegister.i();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i() {
        List flList;
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            flList = cn.mucang.android.jiakaoyi.framework.f.a.a().y(FaceLabelEntity.class, cn.mucang.android.core.db.e.d("select * from t_face_label", new String[0]));
        }
        int i = Calendar.getInstance().get(5);
        int iD = i0.d("face_log_upload_day", 0);
        int iD2 = i0.d("face_log_upload_count", 0);
        int size = flList.size();
        cn.mucang.android.jiakaoyi.framework.log.f.g("LogUploadRequest：cacheCount:" + size + ", uploadCount:" + iD2 + ", today:" + i + ", day:" + iD);
        if (size != 0) {
            if (iD2 < size || i != iD) {
                i0.k("face_log_upload_day", i);
                i0.k("face_log_upload_count", size);
                cn.mucang.android.jiakaoyi.framework.log.f.g("upload-start");
                r.d(flList, "flList");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : flList) {
                    String studentId = ((FaceLabelEntity) obj).getStudentId();
                    Object arrayList = linkedHashMap.get(studentId);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        linkedHashMap.put(studentId, arrayList);
                    }
                    ((List) arrayList).add(obj);
                }
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    StringBuilder sb = new StringBuilder("face-studentId:" + ((String) entry.getKey()) + '\n');
                    for (FaceLabelEntity faceLabelEntity : (Iterable) entry.getValue()) {
                        File file = faceLabelEntity.getFaceFile().length() > 0 ? new File(faceLabelEntity.getFaceFile()) : null;
                        if (file != null && file.exists()) {
                            sb.append(FilesKt__FileReadWriteKt.f(file, null, 1, null));
                            sb.append("\npos:" + faceLabelEntity.getFaceX() + ',' + faceLabelEntity.getFaceY() + ',' + faceLabelEntity.getFaceWidth() + ',' + faceLabelEntity.getFaceHeight() + '\n');
                        }
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.g(sb.toString());
                }
                cn.mucang.android.jiakaoyi.framework.log.f.g("upload-end");
                cn.mucang.android.jiakaoyi.framework.log.f.v(cn.mucang.android.jiakaoyi.framework.log.i.s);
            }
        }
    }

    public final void a() {
        FaceDebugUtil.f3029a.a();
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            cn.mucang.android.jiakaoyi.framework.f.a.a().j(FaceLabelEntity.class, null, null);
        }
    }

    public final void b(String studentId, String mark) {
        r.e(studentId, "studentId");
        r.e(mark, "mark");
        if (studentId.length() > 0) {
            Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
            r.d(DbLock, "DbLock");
            synchronized (DbLock) {
                cn.mucang.android.jiakaoyi.framework.f.a.a().j(FaceLabelEntity.class, "student_id=?", new String[]{studentId});
            }
            FaceDebugUtil.f3029a.b(studentId, mark);
        }
    }

    public final void f() {
        LiveBus.d(LogUploadRequest.class).i(new a0() { // from class: cn.mucang.android.facelib.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                FaceRegister.g((LogUploadRequest) obj);
            }
        });
    }

    public final synchronized int j(cn.mucang.android.facelib.y.e.a faceData, FaceUserModel user, cn.mucang.jiakaoyi.uilib.login.face.m faceResult) {
        Object obj;
        Object next;
        Object objM139constructorimpl;
        String strJ;
        Object objM139constructorimpl2;
        Object objM139constructorimpl3;
        Pair pair;
        r.e(faceData, "faceData");
        r.e(user, "user");
        r.e(faceResult, "faceResult");
        Rect rectG = faceResult.g();
        int i = 0;
        if (this.f3033d - this.f3034e > 20) {
            cn.mucang.android.facelib.x.a.a("连续" + (this.f3033d - this.f3034e) + "次人脸位置不合适，重新统计人脸位置信息");
            this.f3033d = 0;
            this.f3034e = 0;
            this.c.j(0);
            this.f3032a.j(0);
            this.b.j(0);
        }
        if (rectG != null) {
            Integer numB = this.c.b();
            r.d(numB, "avgCount.get()");
            if (numB.intValue() < 100000) {
                int i2 = rectG.x + (rectG.width / 2);
                int i3 = rectG.y + (rectG.height / 2);
                r0<Integer> r0Var = this.f3032a;
                r0Var.j(Integer.valueOf(r0Var.b().intValue() + i2));
                r0<Integer> r0Var2 = this.b;
                r0Var2.j(Integer.valueOf(r0Var2.b().intValue() + i3));
                r0<Integer> r0Var3 = this.c;
                r0Var3.j(Integer.valueOf(r0Var3.b().intValue() + 1));
            }
        }
        Integer count = this.c.b();
        r.d(count, "count");
        if (count.intValue() < 20) {
            cn.mucang.android.facelib.x.a.a("人脸位置还未计算出，先不注册");
            return 0;
        }
        int iIntValue = this.f3032a.b().intValue() / count.intValue();
        int iIntValue2 = this.b.b().intValue() / count.intValue();
        cn.mucang.android.facelib.x.a.a(r.m("开始注册 mark:", user.getF3024a()));
        if (rectG != null && iIntValue > 0 && iIntValue2 > 0) {
            int i4 = rectG.x + (rectG.width / 2);
            int i5 = rectG.y + (rectG.height / 2);
            int iAbs = Math.abs(i4 - iIntValue);
            int iAbs2 = Math.abs(i5 - iIntValue2);
            cn.mucang.android.facelib.x.a.a("facePos:" + iIntValue + ',' + iIntValue2 + ',' + i4 + ',' + i5 + ',' + rectG.width + ',' + rectG.height);
            if (iAbs >= rectG.width / 2 || iAbs2 >= rectG.height) {
                this.f3033d++;
                cn.mucang.android.facelib.x.a.a("人脸位置不合适，注册失败 | " + this.f3034e + ':' + this.f3033d);
                return 0;
            }
        }
        this.f3034e++;
        cn.mucang.android.facelib.x.a.a("人脸位置比例 | " + this.f3034e + ':' + this.f3033d);
        int i6 = this.f3035f;
        if (i6 > 60) {
            return 10001;
        }
        this.f3035f = i6 + 1;
        if (faceResult.h()) {
            this.f3035f++;
            cn.mucang.android.facelib.x.a.a("灰度照片不注册");
            return 0;
        }
        Iterator<T> it = this.f3036g.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            pair = (Pair) next;
        } while (!(faceResult.b() >= ((float) ((Number) pair.getFirst()).intValue()) && faceResult.b() < ((float) ((Number) pair.getSecond()).intValue())));
        Pair pair2 = (Pair) next;
        if (pair2 != null) {
            cn.mucang.android.facelib.x.a.a("人脸角度（" + faceResult.b() + "）在范围（" + ((Number) pair2.getFirst()).intValue() + '-' + ((Number) pair2.getSecond()).intValue() + "）内满了");
            return 0;
        }
        Object objA = faceData.a();
        float[][] fArr = objA instanceof float[][] ? (float[][]) objA : null;
        float[] fArr2 = fArr == null ? null : (float[]) kotlin.collections.k.B(fArr, 0);
        if (fArr2 != null) {
            if (!(fArr2.length == 0)) {
                if (user.getF3025d().length() > 0) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(new FaceCheckApi().q(user.getF3025d(), faceResult.b(), fArr2, "nonstandard", user.getF3026e())));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
                    }
                    Object obj2 = objM139constructorimpl;
                    Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(obj2);
                    if (thM142exceptionOrNullimpl != null) {
                        if (thM142exceptionOrNullimpl instanceof ApiException) {
                            cn.mucang.android.facelib.x.a.a("注册失败：" + ((Object) thM142exceptionOrNullimpl.getMessage()) + "，角度：" + faceResult.b() + "，耗时：" + (System.currentTimeMillis() - jCurrentTimeMillis));
                            if (((ApiException) thM142exceptionOrNullimpl).getErrorCode() == 10001) {
                                return 10001;
                            }
                            if (((ApiException) thM142exceptionOrNullimpl).getErrorCode() == 10010) {
                                try {
                                    Result.Companion companion3 = Result.INSTANCE;
                                    objM139constructorimpl2 = Result.m139constructorimpl(Integer.valueOf(((ApiException) thM142exceptionOrNullimpl).getApiResponse().getData().getIntValue("maxAngle")));
                                } catch (Throwable th2) {
                                    Result.Companion companion4 = Result.INSTANCE;
                                    objM139constructorimpl2 = Result.m139constructorimpl(kotlin.k.a(th2));
                                }
                                if (Result.m145isFailureimpl(objM139constructorimpl2)) {
                                    objM139constructorimpl2 = null;
                                }
                                Integer num = (Integer) objM139constructorimpl2;
                                try {
                                    Result.Companion companion5 = Result.INSTANCE;
                                    objM139constructorimpl3 = Result.m139constructorimpl(Integer.valueOf(((ApiException) thM142exceptionOrNullimpl).getApiResponse().getData().getIntValue("minAngle")));
                                } catch (Throwable th3) {
                                    Result.Companion companion6 = Result.INSTANCE;
                                    objM139constructorimpl3 = Result.m139constructorimpl(kotlin.k.a(th3));
                                }
                                if (Result.m145isFailureimpl(objM139constructorimpl3)) {
                                    objM139constructorimpl3 = null;
                                }
                                Integer num2 = (Integer) objM139constructorimpl3;
                                if (num2 != null && num != null) {
                                    this.f3036g.add(kotlin.l.a(num2, num));
                                }
                            }
                        }
                        kotlin.v vVar = kotlin.v.f15822a;
                    }
                    if (!Result.m145isFailureimpl(obj2)) {
                        obj = obj2;
                    }
                    Boolean bool = (Boolean) obj;
                    if (bool == null ? false : bool.booleanValue()) {
                        FaceDebugUtil.a aVar = FaceDebugUtil.f3029a;
                        if (aVar.g(user.getB(), user.getF3024a()) < 50) {
                            String b = user.getB();
                            String f3024a = user.getF3024a();
                            Bitmap bitmapB = faceData.b();
                            r.d(bitmapB, "faceData.faceBitmap");
                            strJ = aVar.j(b, f3024a, bitmapB, faceResult.b());
                        } else {
                            strJ = "";
                        }
                        FaceLocalSaveUtil.a aVar2 = FaceLocalSaveUtil.f3030a;
                        if (aVar2.c(user.getB()) < 30) {
                            String b2 = user.getB();
                            Bitmap bitmapF = faceResult.f();
                            r.d(bitmapF, "faceResult.originBitmap");
                            aVar2.d(b2, bitmapF, faceResult.b());
                        }
                        FaceLabelEntity faceLabelEntity = new FaceLabelEntity("", "", user.getC(), "");
                        faceLabelEntity.setMark(user.getF3024a());
                        faceLabelEntity.setFaceFile(strJ);
                        faceLabelEntity.setStudentId(user.getB());
                        faceLabelEntity.setFaceX(rectG == null ? 0 : rectG.x);
                        faceLabelEntity.setFaceY(rectG == null ? 0 : rectG.y);
                        faceLabelEntity.setFaceWidth(rectG == null ? 0 : rectG.width);
                        if (rectG != null) {
                            i = rectG.height;
                        }
                        faceLabelEntity.setFaceHeight(i);
                        kotlin.v vVar2 = kotlin.v.f15822a;
                        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
                        r.d(DbLock, "DbLock");
                        synchronized (DbLock) {
                            cn.mucang.android.jiakaoyi.framework.f.a.a().u(faceLabelEntity);
                        }
                        cn.mucang.android.jiakaoyi.framework.log.f.g("人脸注册成功, 角度：" + faceResult.b() + "，耗时：" + (System.currentTimeMillis() - jCurrentTimeMillis) + "   mark:" + user.getF3024a());
                        return 1;
                    }
                }
            }
        }
        return 0;
    }

    public final void k() {
        this.f3033d = 0;
        this.f3034e = 0;
        this.f3035f = 0;
        this.f3036g.clear();
    }

    public final void l() {
        List<FaceHistoryEntity> history;
        List<FaceLabelEntity> flList;
        kotlin.v vVar;
        File file = new File(MucangConfig.getContext().getFilesDir(), "sundial_vector");
        try {
            Result.Companion companion = Result.INSTANCE;
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                vVar = null;
            } else {
                for (File file2 : fileArrListFiles) {
                    file2.delete();
                }
                vVar = kotlin.v.f15822a;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            history = cn.mucang.android.jiakaoyi.framework.f.a.a().y(FaceHistoryEntity.class, cn.mucang.android.core.db.e.d("select * from t_face_history", new String[0]));
        }
        r.d(history, "history");
        for (FaceHistoryEntity faceHistoryEntity : history) {
            if ((faceHistoryEntity.getMucangId().length() > 0) && faceHistoryEntity.getUpdateTime() > 0 && System.currentTimeMillis() - faceHistoryEntity.getUpdateTime() > 1209600000) {
                Object DbLock2 = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
                r.d(DbLock2, "DbLock");
                synchronized (DbLock2) {
                    cn.mucang.android.core.db.a aVarA = cn.mucang.android.jiakaoyi.framework.f.a.a();
                    Long id = faceHistoryEntity.getId();
                    r.d(id, "it.id");
                    aVarA.h(FaceHistoryEntity.class, id.longValue());
                    flList = cn.mucang.android.jiakaoyi.framework.f.a.a().y(FaceLabelEntity.class, cn.mucang.android.core.db.e.d("select * from t_face_label where mucang_id=?", faceHistoryEntity.getMucangId()));
                }
                if (flList.size() > 0) {
                    cn.mucang.android.jiakaoyi.framework.log.f.g(faceHistoryEntity.getMark() + "向量数据超过14天未使用，删除" + flList.size() + (char) 26465);
                    r.d(flList, "flList");
                    for (FaceLabelEntity et : flList) {
                        FaceDebugUtil.a aVar = FaceDebugUtil.f3029a;
                        aVar.b(et.getStudentId(), et.getMark());
                        FaceLocalSaveUtil.f3030a.a(et.getStudentId());
                        a aVar2 = f3031h;
                        r.d(et, "et");
                        aVar2.a(et);
                        File fileF = aVar.f(et.getStudentId(), et.getMark());
                        if (fileF != null && fileF.exists()) {
                            fileF.delete();
                        }
                    }
                }
            }
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            FaceDebugUtil.f3029a.k();
            Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th2));
        }
        try {
            Result.Companion companion5 = Result.INSTANCE;
            FaceLocalSaveUtil.f3030a.e();
            Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th3) {
            Result.Companion companion6 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th3));
        }
    }
}
