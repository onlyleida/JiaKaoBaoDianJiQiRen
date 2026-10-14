package cn.mucang.jiakaoyi.uilib;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.model.K3OrderItem;
import com.alibaba.fastjson.JSON;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.collections.y;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/StepGetter;", "", "()V", "getAllK3Step", "", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "getAllStep", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getExamConfigStep", "siteId", "", "getK3TeachSteps", "getManualOrderConfig", "", "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;", "getSpecificStep", "getStepIcon", "", "step", "saveManualOrderConfig", "", "list", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepGetter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StepGetter f9318a = new StepGetter();

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.g$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9319a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[KeMu.values().length];
            iArr[KeMu.K3.ordinal()] = 1;
            iArr[KeMu.B2.ordinal()] = 2;
            iArr[KeMu.Moto.ordinal()] = 3;
            f9319a = iArr;
            int[] iArr2 = new int[Step.values().length];
            iArr2[Step.K3_QiBu.ordinal()] = 1;
            iArr2[Step.K3_BanMaXian.ordinal()] = 2;
            iArr2[Step.K3_BianDao.ordinal()] = 3;
            iArr2[Step.K3_ChaoChe.ordinal()] = 4;
            iArr2[Step.K3_DiaoTou.ordinal()] = 5;
            iArr2[Step.K3_BusStation.ordinal()] = 6;
            iArr2[Step.K3_GongQiao.ordinal()] = 7;
            iArr2[Step.K3_HuanDao.ordinal()] = 8;
            iArr2[Step.K3_HuiChe.ordinal()] = 9;
            iArr2[Step.K3_JiaJianDang.ordinal()] = 10;
            iArr2[Step.K3_JianSu.ordinal()] = 11;
            iArr2[Step.K3_JinTing.ordinal()] = 12;
            iArr2[Step.K3_JiWanPoDao.ordinal()] = 13;
            iArr2[Step.K3_TingChe.ordinal()] = 14;
            iArr2[Step.K3_LinTing.ordinal()] = 15;
            iArr2[Step.K3_LuKouYouZhuan.ordinal()] = 16;
            iArr2[Step.K3_LuKouZhiXing.ordinal()] = 17;
            iArr2[Step.K3_LuKouZuoZhuan.ordinal()] = 18;
            iArr2[Step.K3_RangXing.ordinal()] = 19;
            iArr2[Step.K3_SuiDao.ordinal()] = 20;
            iArr2[Step.K3_XianSu.ordinal()] = 21;
            iArr2[Step.K3_School.ordinal()] = 22;
            iArr2[Step.K3_ZhiXian.ordinal()] = 23;
            iArr2[Step.K3_ShangChe.ordinal()] = 24;
            iArr2[Step.K3_LightSimulate.ordinal()] = 25;
            iArr2[Step.K3_BianDaoChaoChe.ordinal()] = 26;
            iArr2[Step.K3_TeShuQuYu.ordinal()] = 27;
            b = iArr2;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.g$b */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((Step) t).type), Integer.valueOf(((Step) t2).type));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.g$c */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class c<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((Step) t).type), Integer.valueOf(((Step) t2).type));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.g$d */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class d<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((Step) t).type), Integer.valueOf(((Step) t2).type));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.g$e */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class e<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((Step) t).type), Integer.valueOf(((Step) t2).type));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.g$f */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class f<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((Step) t).type), Integer.valueOf(((Step) t2).type));
        }
    }

    private StepGetter() {
    }

    public static final List<Step> a() {
        List<Step> listK3Steps = Step.k3Steps();
        r.d(listK3Steps, "k3Steps()");
        List<Step> listO0 = CollectionsKt___CollectionsKt.O0(listK3Steps);
        if (listO0.size() > 1) {
            y.A(listO0, new b());
        }
        return listO0;
    }

    public static final List<Step> b(KeMu keMu) {
        r.e(keMu, "keMu");
        int i = a.f9319a[keMu.ordinal()];
        if (i == 1) {
            return a();
        }
        if (i == 2) {
            List<Step> listB2Steps = Step.b2Steps();
            r.d(listB2Steps, "b2Steps()");
            List<Step> listO0 = CollectionsKt___CollectionsKt.O0(listB2Steps);
            if (listO0.size() <= 1) {
                return listO0;
            }
            y.A(listO0, new c());
            return listO0;
        }
        if (i != 3) {
            List<Step> listK2Steps = Step.k2Steps();
            r.d(listK2Steps, "k2Steps()");
            List<Step> listO1 = CollectionsKt___CollectionsKt.O0(listK2Steps);
            if (listO1.size() <= 1) {
                return listO1;
            }
            y.A(listO1, new e());
            return listO1;
        }
        List<Step> listMotoSteps = Step.motoSteps();
        r.d(listMotoSteps, "motoSteps()");
        ArrayList arrayList = new ArrayList();
        for (Object obj : listMotoSteps) {
            if (((Step) obj) != Step.Moto_ChangDi) {
                arrayList.add(obj);
            }
        }
        List<Step> listO2 = CollectionsKt___CollectionsKt.O0(arrayList);
        if (listO2.size() <= 1) {
            return listO2;
        }
        y.A(listO2, new d());
        return listO2;
    }

    public static final List<Step> c(long j) {
        List<K3OrderItem> listE = f9318a.e(j);
        if (!cn.mucang.android.core.utils.g.d(listE)) {
            return f();
        }
        r.c(listE);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listE) {
            if (((K3OrderItem) obj).getShowInRoute()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(v.u(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((K3OrderItem) it.next()).getStep());
        }
        return CollectionsKt___CollectionsKt.O0(arrayList2);
    }

    public static final List<Step> d() {
        List<Step> listK3Steps = Step.k3Steps();
        r.d(listK3Steps, "k3Steps()");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listK3Steps.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            int i = ((Step) next).type;
            if ((i == Step.K3_Global.type || i == Step.K3_TeShuQuYu.type || i == Step.K3_LightSimulate.type || i == Step.K3_JinTing.type || i == Step.K3_BianDaoChaoChe.type) ? false : true) {
                arrayList.add(next);
            }
        }
        List<Step> listO0 = CollectionsKt___CollectionsKt.O0(arrayList);
        if (listO0.size() > 1) {
            y.A(listO0, new f());
        }
        return listO0;
    }

    public static final List<Step> f() {
        List<Step> listA = a();
        listA.remove(Step.K3_Global);
        listA.remove(Step.K3_LightSimulate);
        listA.remove(Step.K3_QiBu);
        listA.remove(Step.K3_ShangChe);
        return listA;
    }

    public final List<K3OrderItem> e(long j) {
        try {
            return JSON.parseArray(i0.g(r.m("exam_site_", Long.valueOf(j)), ""), K3OrderItem.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public final int g(Step step) {
        switch (step == null ? -1 : a.b[step.ordinal()]) {
            case 1:
                return R.drawable.step_icon_kaishi;
            case 2:
                return R.drawable.step_icon_banmaxian;
            case 3:
                return R.drawable.step_icon_biandao;
            case 4:
                return R.drawable.step_icon_chaoche;
            case 5:
                return R.drawable.step_icon_diaotou;
            case 6:
                return R.drawable.step_icon_gongjiaozhan;
            case 7:
                return R.drawable.step_icon_tongguogongqiao;
            case 8:
                return R.drawable.step_icon_tongguohuandao;
            case 9:
                return R.drawable.step_icon_huiche;
            case 10:
                return R.drawable.step_icon_jiajiandang;
            case 11:
                return R.drawable.step_icon_jiansu;
            case 12:
                return R.drawable.step_icon_jinzhitingche;
            case 13:
                return R.drawable.step_icon_jipowanlu;
            case 14:
                return R.drawable.step_icon_kaobiantingche;
            case 15:
                return R.drawable.step_icon_linshitingche;
            case 16:
                return R.drawable.step_icon_lukouyouzhuanwan;
            case 17:
                return R.drawable.step_icon_lukouzhixing;
            case 18:
                return R.drawable.step_icon_lukouzuozhuanwan;
            case 19:
                return R.drawable.step_icon_tingcherangxing;
            case 20:
                return R.drawable.step_icon_tongguosuidao;
            case 21:
                return R.drawable.step_icon_xiansu;
            case 22:
                return R.drawable.step_icon_xuexiao;
            case 23:
                return R.drawable.step_icon_zhixianxingshi;
            case 24:
                return R.drawable.step_icon_zhunbei;
            case 25:
                return R.drawable.step_icon_dengguang;
            case 26:
                return R.drawable.step_icon_biandaochaoche;
            case 27:
                return R.drawable.step_icon_special_area;
            default:
                return 0;
        }
    }

    public final void h(long j, List<K3OrderItem> list) {
        r.e(list, "list");
        String jSONString = JSON.toJSONString(list);
        cn.mucang.android.jiakaoyi.framework.log.f.o("保存手控指令 key exam_site_" + j + " ; value " + ((Object) jSONString));
        i0.m(r.m("exam_site_", Long.valueOf(j)), jSONString);
    }
}
