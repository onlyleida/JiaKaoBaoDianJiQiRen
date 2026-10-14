package cn.mucang.android.jiakaoyi.teachingk2.grade;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.l0;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.grade.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\fH\u0007J\u0016\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0013H\u0007J\b\u0010\u0015\u001a\u00020\fH\u0007J\b\u0010\u0016\u001a\u00020\u0017H\u0007J\b\u0010\u0018\u001a\u00020\u0017H\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u0010\u0010\t¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/grade/TeachConfig;", "", "()V", "enableTrace", "", "getEnableTrace$annotations", "getEnableTrace", "()Z", "setEnableTrace", "(Z)V", "grades", "", "Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;", "initGrades", "is2_0", "is2_0$annotations", "set2_0", "getEnableGradeModel", "getEnableGrades", "", "", "getLowGradeModel", "loadGrades", "", "refreshLevel", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TeachConfig f7131a = new TeachConfig();
    private static volatile boolean b;
    private static final List<GradeModel> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static List<GradeModel> f7132d;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.grade.d$a */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((GradeModel) t).getLevel()), Integer.valueOf(((GradeModel) t2).getLevel()));
        }
    }

    static {
        GradeModel gradeModel = new GradeModel();
        gradeModel.setName(k0.a(R.string.teachingk2_newbie_detail));
        gradeModel.setError(false);
        v vVar = v.f15822a;
        GradeModel gradeModel2 = new GradeModel();
        gradeModel2.setName(k0.a(R.string.teachingk2_basic_teaching));
        gradeModel2.setStopVoice(false);
        gradeModel2.setLine(false);
        gradeModel2.setLevel(20);
        GradeModel gradeModel3 = new GradeModel();
        gradeModel3.setName(k0.a(R.string.teachingk2_self_train));
        gradeModel3.setStopVoice(false);
        gradeModel3.setPicture(false);
        gradeModel3.setLine(false);
        gradeModel3.setGuide(false);
        gradeModel3.setPositionGuide(false);
        gradeModel3.setLevel(30);
        List<GradeModel> listM = u.m(gradeModel, gradeModel2, gradeModel3);
        c = listM;
        f7132d = listM;
    }

    private TeachConfig() {
    }

    public static final GradeModel a() {
        List<GradeModel> list = f7132d;
        for (GradeModel gradeModel : list) {
            if (gradeModel.getLevel() == l0.a()) {
                return gradeModel;
            }
        }
        return (GradeModel) s.c0(list);
    }

    public static final Map<String, String> b() {
        List<GradeModel> list = f7132d;
        ArrayList<GradeModel> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((GradeModel) obj).getEnable()) {
                arrayList.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (GradeModel gradeModel : arrayList) {
            linkedHashMap.put(String.valueOf(gradeModel.getLevel()), gradeModel.getName());
        }
        return linkedHashMap;
    }

    public static final GradeModel c() {
        List<GradeModel> list = f7132d;
        for (GradeModel gradeModel : list) {
            if (gradeModel.getLevel() == 10) {
                return gradeModel;
            }
        }
        return (GradeModel) s.c0(list);
    }

    public static final boolean d() {
        return b;
    }

    public static final void g() {
        f7132d = c;
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.grade.a
            @Override // java.lang.Runnable
            public final void run() {
                TeachConfig.h();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h() {
        try {
            final List listG0 = CollectionsKt___CollectionsKt.G0(new GradeApi().m(), new a());
            if (g.b(listG0)) {
                return;
            }
            f.o(r.m("拉到教学配置：", JSON.toJSONString(listG0)));
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.grade.b
                @Override // java.lang.Runnable
                public final void run() {
                    TeachConfig.i(listG0);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(List models) {
        r.e(models, "$models");
        TeachConfig teachConfig = f7131a;
        f7132d = models;
        teachConfig.j();
    }

    private final void j() {
        ArrayList<GradeModel> arrayList = new ArrayList();
        for (GradeModel gradeModel : f7132d) {
            if (gradeModel.getLevel() != l0.a()) {
                arrayList.add(gradeModel);
            } else if (gradeModel.getEnable()) {
                return;
            }
        }
        for (GradeModel gradeModel2 : arrayList) {
            if (gradeModel2.getEnable()) {
                l0.d(gradeModel2.getLevel());
                return;
            }
        }
    }

    public static final void k(boolean z) {
        b = z;
    }

    public static final void l(boolean z) {
    }
}
