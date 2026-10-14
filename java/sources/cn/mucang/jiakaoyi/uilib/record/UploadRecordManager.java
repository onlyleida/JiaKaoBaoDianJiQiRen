package cn.mucang.jiakaoyi.uilib.record;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.v;
import kotlin.collections.y;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.record.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\u0006H\u0007J\n\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\b\u0010\u000e\u001a\u00020\u0006H\u0007J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/record/UploadRecordManager;", "", "()V", "examModel", "Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;", "addDeduct", "", "info", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", TtmlNode.END, "getLocalModel", TtmlNode.START, "orderId", "", "upload", "uploadExamResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UploadRecordManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UploadRecordManager f9474a = new UploadRecordManager();
    private static UploadRecordModel b;

    private UploadRecordManager() {
    }

    public static final void a(cn.mucang.android.jiakaoyi.engine.model.a info) {
        List<DeductRecordModel> deductDetails;
        UploadRecordModel uploadRecordModel;
        r.e(info, "info");
        UploadRecordModel uploadRecordModel2 = b;
        if (uploadRecordModel2 == null) {
            return;
        }
        if ((uploadRecordModel2 == null ? null : uploadRecordModel2.getDeductDetails()) == null && (uploadRecordModel = b) != null) {
            uploadRecordModel.setDeductDetails(new ArrayList());
        }
        UploadRecordModel uploadRecordModel3 = b;
        if (uploadRecordModel3 == null || (deductDetails = uploadRecordModel3.getDeductDetails()) == null) {
            return;
        }
        deductDetails.add(f.a(info));
    }

    public static final void b() {
        final UploadRecordModel uploadRecordModel = b;
        if (uploadRecordModel == null) {
            return;
        }
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.record.b
            @Override // java.lang.Runnable
            public final void run() {
                UploadRecordManager.c(uploadRecordModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(UploadRecordModel it) {
        c cVar;
        r.e(it, "$it");
        try {
            try {
                if (!new UploadRecordApi().m(it)) {
                    i0.m("keyExamRecord", JSON.toJSONString(it));
                }
                cVar = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.record.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        UploadRecordManager.d();
                    }
                };
            } catch (Exception unused) {
                i0.m("keyExamRecord", JSON.toJSONString(it));
                cVar = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.record.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        UploadRecordManager.d();
                    }
                };
            }
            u.c(cVar);
        } catch (Throwable th) {
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.record.c
                @Override // java.lang.Runnable
                public final void run() {
                    UploadRecordManager.d();
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d() {
        b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int i(cn.mucang.android.jiakaoyi.engine.model.a o1, cn.mucang.android.jiakaoyi.engine.model.a o2) {
        r.e(o1, "o1");
        r.e(o2, "o2");
        long j = o1.b;
        long j2 = o2.b;
        if (j - j2 > 0) {
            return -1;
        }
        return j2 - j > 0 ? 1 : 0;
    }

    public final void h(cn.mucang.android.jiakaoyi.engine.processor.exam.f result) {
        List<DeductRecordModel> deductDetails;
        List<DeductRecordModel> deductDetails2;
        UploadRecordModel uploadRecordModel;
        r.e(result, "result");
        if (result.f3125d.size() > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.c> it = result.c.values().iterator();
            while (it.hasNext()) {
                Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f> it2 = it.next().f3148a.iterator();
                while (it2.hasNext()) {
                    arrayList.addAll(it2.next().b);
                }
            }
            y.A(arrayList, new Comparator() { // from class: cn.mucang.jiakaoyi.uilib.record.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return UploadRecordManager.i((cn.mucang.android.jiakaoyi.engine.model.a) obj, (cn.mucang.android.jiakaoyi.engine.model.a) obj2);
                }
            });
            ArrayList arrayList2 = new ArrayList(v.u(arrayList, 10));
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                arrayList2.add(f.a((cn.mucang.android.jiakaoyi.engine.model.a) it3.next()));
            }
            UploadRecordModel uploadRecordModel2 = b;
            if ((uploadRecordModel2 == null ? null : uploadRecordModel2.getDeductDetails()) == null && (uploadRecordModel = b) != null) {
                uploadRecordModel.setDeductDetails(new ArrayList());
            }
            UploadRecordModel uploadRecordModel3 = b;
            if (uploadRecordModel3 != null && (deductDetails2 = uploadRecordModel3.getDeductDetails()) != null) {
                deductDetails2.clear();
            }
            UploadRecordModel uploadRecordModel4 = b;
            if (uploadRecordModel4 != null && (deductDetails = uploadRecordModel4.getDeductDetails()) != null) {
                deductDetails.addAll(arrayList2);
            }
        }
        b();
    }
}
