package cn.mucang.android.jiakaoyi.teachingk2.nav;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.g;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.h;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.i;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.l;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.NavigationEnd;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.NavigationPathList;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.PathPercent;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.s;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001,B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0004H\u0002J\u000e\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0017H\u0007J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u000bH\u0007J\u001c\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040&2\u0006\u0010'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020#2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationManager;", "", "()V", "DISTANCE_END", "", "DISTANCE_OPERATE", "DISTANCE_REPORT", "DISTANCE_TURN_NODE", "DISTANCE_YAW", "DISTANCE_YAW_MARCH", "chooseEnd", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/nav/NavigationEnd;", "choosePath", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;", "es", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "guideCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "guiding", "", "navCallback", "pathList", "", "percent", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/nav/PathPercent;", "speakMarks", "Landroid/util/SparseArray;", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationManager$SectionMarkModel;", "yawDistance", "", "getMarkModel", "index", "getNavPoints", "getPaths", "", "guideEnd", "getSectionPoint", "Lkotlin/Pair;", "carCenter", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "nav", "stopNav", "normalStop", "SectionMarkModel", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NavigationManager {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static NavigationEnd f7421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static List<NavigationPathModel> f7422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static NavigationPathModel f7423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static float f7424h;
    private static boolean i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NavigationManager f7419a = new NavigationManager();
    private static final ExecutorService b = Executors.newSingleThreadExecutor();
    private static final PathPercent c = new PathPercent();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final SparseArray<a> f7420d = new SparseArray<>();
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a j = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.nav.c
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            NavigationManager.g(eVar);
        }
    };
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a k = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.nav.b
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            NavigationManager.n(eVar);
        }
    };

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationManager$SectionMarkModel;", "", "()V", "speakOperate", "", "getSpeakOperate", "()Z", "setSpeakOperate", "(Z)V", "speakReport", "getSpeakReport", "setSpeakReport", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f7425a;
        private boolean b;

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final boolean getF7425a() {
            return this.f7425a;
        }

        public final void c(boolean z) {
            this.b = z;
        }

        public final void d(boolean z) {
            this.f7425a = z;
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/nav/NavigationManager$stopNav$1", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "onSpeakEnd", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            TtsListener.a.b(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakBegin() {
            TtsListener.a.c(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            cn.mucang.android.jiakaoyi.unity.c.d.b(80006);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakPaused() {
            TtsListener.a.e(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakResumed() {
            TtsListener.a.g(this);
        }
    }

    private NavigationManager() {
    }

    private final a b(int i2) {
        SparseArray<a> sparseArray = f7420d;
        if (sparseArray.get(i2) == null) {
            a aVar = new a();
            sparseArray.put(i2, aVar);
            return aVar;
        }
        a aVar2 = sparseArray.get(i2);
        r.d(aVar2, "speakMarks[index]");
        return aVar2;
    }

    public static final List<NavigationEnd> c() {
        ArrayList<cn.mucang.android.jiakaoyi.hpmap.a.a.b> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        j jVar = n.b().c;
        if (jVar == null) {
            return arrayList2;
        }
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.a> list = jVar.p;
        r.d(list, "k2data.bianxian");
        arrayList.addAll(list);
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> list2 = jVar.f4724e;
        r.d(list2, "k2data.cefang");
        arrayList.addAll(list2);
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list3 = jVar.f4725f;
        r.d(list3, "k2data.daoku");
        arrayList.addAll(list3);
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f> list4 = jVar.n;
        r.d(list4, "k2data.hualu");
        arrayList.addAll(list4);
        List<g> list5 = jVar.m;
        r.d(list5, "k2data.jinji");
        arrayList.addAll(list5);
        List<h> list6 = jVar.k;
        r.d(list6, "k2data.qidian");
        arrayList.addAll(list6);
        List<i> list7 = jVar.j;
        r.d(list7, "k2data.quka");
        arrayList.addAll(list7);
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> list8 = jVar.f4726g;
        r.d(list8, "k2data.quxian");
        arrayList.addAll(list8);
        List<k> list9 = jVar.f4727h;
        r.d(list9, "k2data.shangpo");
        arrayList.addAll(list9);
        List<l> list10 = jVar.o;
        r.d(list10, "k2data.suidao");
        arrayList.addAll(list10);
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.n> list11 = jVar.l;
        r.d(list11, "k2data.zhailu");
        arrayList.addAll(list11);
        List<o> list12 = jVar.i;
        r.d(list12, "k2data.zhijiao");
        arrayList.addAll(list12);
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e> list13 = jVar.q;
        r.d(list13, "k2data.etc");
        arrayList.addAll(list13);
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : arrayList) {
            NavigationEnd navigationEnd = new NavigationEnd();
            navigationEnd.stepKey = bVar.getKey();
            navigationEnd.typeName = bVar.s().stepName;
            navigationEnd.name = bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.e ? ((cn.mucang.android.jiakaoyi.hpmap.a.a.e) bVar).b : bVar.s().stepName;
            if (bVar.l() != null) {
                navigationEnd.position = bVar.l().middle();
            } else if (bVar.f() != null) {
                navigationEnd.position = bVar.f().middle();
            }
            arrayList2.add(navigationEnd);
        }
        return arrayList2;
    }

    public static final void d(final NavigationEnd guideEnd) {
        r.e(guideEnd, "guideEnd");
        f7421e = guideEnd;
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.nav.d
            @Override // java.lang.Runnable
            public final void run() {
                NavigationManager.e(guideEnd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(NavigationEnd guideEnd) {
        r.e(guideEnd, "$guideEnd");
        Pos start = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
        Pos end = guideEnd.position;
        try {
            NavigationApi navigationApi = new NavigationApi();
            r.d(start, "start");
            r.d(end, "end");
            f7422f = navigationApi.m(start, end);
            NavigationPathList navigationPathList = new NavigationPathList();
            navigationPathList.itemList = f7422f;
            cn.mucang.android.jiakaoyi.unity.c.d.e(navigationPathList);
            List<NavigationPathModel> list = f7422f;
            if (list == null || list.isEmpty()) {
                cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
                cn.mucang.android.jiakaoyi.signal.c.f.a aVar = j;
                dVar.n(aVar);
                dVar.b(aVar);
            }
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("获取导航路线失败：" + ((Object) e2.getMessage()) + "，使用导训");
            cn.mucang.android.jiakaoyi.unity.c.d.e(new NavigationPathList());
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(j);
        }
    }

    private final Pair<Integer, Integer> f(Pos pos) {
        int i2;
        int i3;
        List<NavigationSection> sections;
        NavigationPathModel navigationPathModel = f7423g;
        double d2 = Double.MAX_VALUE;
        if (navigationPathModel == null || (sections = navigationPathModel.getSections()) == null) {
            i2 = 0;
            i3 = 0;
        } else {
            int i4 = 0;
            i2 = 0;
            i3 = 0;
            for (Object obj : sections) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    s.t();
                    throw null;
                }
                List<NavigationItem> points = ((NavigationSection) obj).getPoints();
                if (points != null) {
                    int i6 = 0;
                    for (Object obj2 : points) {
                        int i7 = i6 + 1;
                        if (i6 < 0) {
                            s.t();
                            throw null;
                        }
                        double dDistanceTo = ((NavigationItem) obj2).distanceTo(pos);
                        if (d2 > dDistanceTo) {
                            i2 = i4;
                            i3 = i6;
                            d2 = dDistanceTo;
                        }
                        i6 = i7;
                    }
                }
                i4 = i5;
            }
        }
        i = d2 <= 250000.0d;
        return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        NavigationEnd navigationEnd;
        r.e(signalGetter, "signalGetter");
        Pos pos = signalGetter.c().center;
        if (!signalGetter.d().h() || (navigationEnd = f7421e) == null || pos == null) {
            return;
        }
        r.c(navigationEnd);
        if (navigationEnd.position.distanceTo(pos) < 300.0d) {
            q(true);
        }
    }

    public static final void m(int i2) {
        List<NavigationPathModel> list = f7422f;
        NavigationPathModel navigationPathModel = list == null ? null : (NavigationPathModel) s.f0(list, i2);
        if (navigationPathModel == null) {
            return;
        }
        f7423g = navigationPathModel;
        kotlinx.coroutines.g.b(j0.b(), null, null, new NavigationManager$nav$1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(final cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        final Pos pos = signalGetter.c().center;
        if (!signalGetter.d().h() || pos == null) {
            return;
        }
        b.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.nav.a
            @Override // java.lang.Runnable
            public final void run() {
                NavigationManager.o(pos, signalGetter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:84:0x01aa  */
    public static final void o(Pos carCenter, cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        List<NavigationSection> sections;
        NavigationSection navigationSection;
        List<NavigationItem> points;
        NavigationItem navigationItem;
        List<NavigationSection> sections2;
        List<NavigationSection> sections3;
        List<NavigationItem> points2;
        List<NavigationSection> sections4;
        String strA;
        r.e(signalGetter, "$signalGetter");
        NavigationManager navigationManager = f7419a;
        r.d(carCenter, "carCenter");
        Pair<Integer, Integer> pairF = navigationManager.f(carCenter);
        boolean z = i;
        Number number = 0;
        if (!z) {
            if (f7424h == BitmapDescriptorFactory.HUE_RED) {
                f7424h = signalGetter.d().B;
                TtsManager.r(k0.a(R.string.teachbase_stay_on_route), TtsGrade.GlobalTip);
                return;
            }
        }
        if (!z) {
            if (signalGetter.d().B - f7424h > 10.0f) {
                f7424h = signalGetter.d().B;
                n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.nav.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        NavigationManager.p();
                    }
                });
                return;
            }
            return;
        }
        f7424h = BitmapDescriptorFactory.HUE_RED;
        NavigationPathModel navigationPathModel = f7423g;
        float fFloatValue = ((navigationPathModel == null || (sections = navigationPathModel.getSections()) == null || (navigationSection = (NavigationSection) s.f0(sections, pairF.getFirst().intValue())) == null || (points = navigationSection.getPoints()) == null || (navigationItem = (NavigationItem) s.f0(points, pairF.getSecond().intValue())) == null) ? number : Double.valueOf(navigationItem.getS())).floatValue();
        NavigationPathModel navigationPathModel2 = f7423g;
        float fFloatValue2 = (navigationPathModel2 != null ? Double.valueOf(navigationPathModel2.getTotalLength()) : 0).floatValue();
        PathPercent pathPercent = c;
        pathPercent.percent = fFloatValue / fFloatValue2;
        cn.mucang.android.jiakaoyi.unity.c.d.e(pathPercent);
        int iIntValue = pairF.getFirst().intValue() + 1;
        NavigationPathModel navigationPathModel3 = f7423g;
        NavigationItem navigationItem2 = null;
        NavigationSection navigationSection2 = (navigationPathModel3 == null || (sections2 = navigationPathModel3.getSections()) == null) ? null : (NavigationSection) s.f0(sections2, iIntValue);
        if (navigationSection2 == null) {
            NavigationPathModel navigationPathModel4 = f7423g;
            NavigationSection navigationSection3 = (navigationPathModel4 == null || (sections3 = navigationPathModel4.getSections()) == null) ? null : (NavigationSection) s.q0(sections3);
            if (navigationSection3 != null && (points2 = navigationSection3.getPoints()) != null) {
                navigationItem2 = (NavigationItem) s.q0(points2);
            }
            if (navigationItem2 != null && navigationItem2.distanceTo(carCenter) < 90000.0d) {
                q(true);
                return;
            }
            return;
        }
        List<NavigationItem> points3 = navigationSection2.getPoints();
        NavigationItem navigationItem3 = points3 == null ? null : (NavigationItem) s.e0(points3);
        if (navigationItem3 == null) {
            return;
        }
        double dDistanceTo = navigationItem3.distanceTo(carCenter);
        if (dDistanceTo < 360000.0d && !navigationManager.b(iIntValue).getF7425a()) {
            navigationManager.b(iIntValue).d(true);
            TtsManager.r(navigationSection2.getFromAction().getReportVoice(), TtsGrade.GlobalTip);
        }
        if (dDistanceTo >= 90000.0d || navigationManager.b(iIntValue).getB()) {
            return;
        }
        FromAction fromAction = navigationSection2.getFromAction();
        FromAction fromAction2 = FromAction.TURN_LEFT;
        if (fromAction == fromAction2 || navigationSection2.getFromAction() == FromAction.TURN_RIGHT) {
            NavigationPathModel navigationPathModel5 = f7423g;
            NavigationSection navigationSection4 = (navigationPathModel5 == null || (sections4 = navigationPathModel5.getSections()) == null) ? null : (NavigationSection) s.f0(sections4, iIntValue + 1);
            if (navigationSection4 == null || !(navigationSection4.getFromAction() == fromAction2 || navigationSection4.getFromAction() == FromAction.TURN_RIGHT)) {
                strA = "";
            } else {
                List<NavigationItem> points4 = navigationSection4.getPoints();
                navigationItem2 = points4 != null ? (NavigationItem) s.e0(points4) : null;
                if (navigationItem2 != null) {
                    double x = navigationItem3.getX() - navigationItem2.getX();
                    double y = navigationItem3.getY() - navigationItem2.getY();
                    if ((x * x) + (y * y) > 250000.0d) {
                        strA = "";
                    } else if (navigationSection4.getFromAction() == fromAction2) {
                        strA = k0.a(R.string.teachbase_again_turn_left);
                        r.d(strA, "{\n                      …                        }");
                    } else {
                        strA = k0.a(R.string.teachbase_again_turn_right);
                        r.d(strA, "{\n                      …                        }");
                    }
                } else {
                    strA = "";
                }
            }
        } else {
            strA = "";
        }
        navigationManager.b(iIntValue).c(true);
        navigationManager.b(iIntValue + 1).d(true);
        TtsManager.r(r.m(navigationSection2.getFromAction().getOperateVoice(), strA), TtsGrade.GlobalTip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p() {
        Pos start = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
        NavigationEnd navigationEnd = f7421e;
        r.c(navigationEnd);
        Pos end = navigationEnd.position;
        try {
            NavigationApi navigationApi = new NavigationApi();
            r.d(start, "start");
            r.d(end, "end");
            List<NavigationPathModel> listM = navigationApi.m(start, end);
            f7423g = listM == null ? null : (NavigationPathModel) s.c0(listM);
            f7424h = BitmapDescriptorFactory.HUE_RED;
            f7420d.clear();
            cn.mucang.android.jiakaoyi.teachingk2.n0.f();
            TtsManager.r(k0.a(R.string.teachbase_rerouted), TtsGrade.GlobalTip);
            NavigationPathList navigationPathList = new NavigationPathList();
            navigationPathList.itemList = listM;
            cn.mucang.android.jiakaoyi.unity.c.d.e(navigationPathList);
        } catch (Exception unused) {
        }
    }

    public static final void q(boolean z) {
        String strA;
        if (f7423g == null) {
            f7421e = null;
            cn.mucang.android.jiakaoyi.signal.c.d.m.n(j);
            if (z) {
                cn.mucang.android.jiakaoyi.unity.c.d.b(80006);
                return;
            }
            return;
        }
        if (z) {
            Pos pos = cn.mucang.android.jiakaoyi.signal.c.d.t().c().wheelLeftBack;
            Pos pos2 = cn.mucang.android.jiakaoyi.signal.c.d.t().c().wheelLeftFront;
            if (pos == null || pos2 == null || f7421e == null) {
                strA = "";
            } else {
                cn.mucang.android.jiakaoyi.signal.utils.b bVar = new cn.mucang.android.jiakaoyi.signal.utils.b(pos, pos2, pos);
                NavigationEnd navigationEnd = f7421e;
                r.c(navigationEnd);
                Pos posA = bVar.a(navigationEnd.position);
                double d2 = posA.x;
                if (d2 >= 0.0d && posA.y >= 0.0d) {
                    strA = k0.a(R.string.teachbase_right_front);
                    r.d(strA, "{\n                    Re…_front)\n                }");
                } else if (d2 >= 0.0d && posA.y < 0.0d) {
                    strA = k0.a(R.string.teachbase_front_left);
                    r.d(strA, "{\n                    Re…t_left)\n                }");
                } else if (d2 >= 0.0d || posA.y < 0.0d) {
                    strA = k0.a(R.string.teachbase_rear_left);
                    r.d(strA, "{\n                    Re…r_left)\n                }");
                } else {
                    strA = k0.a(R.string.teachbase_rear_right);
                    r.d(strA, "{\n                    Re…_right)\n                }");
                }
            }
            if (cn.mucang.android.core.utils.n0.g(strA)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA2 = k0.a(R.string.teachbase_destination_hint);
                r.d(strA2, "getString(R.string.teachbase_destination_hint)");
                r.d(String.format(strA2, Arrays.copyOf(new Object[]{strA}, 1)), "java.lang.String.format(format, *args)");
            }
            TtsManager.u(k0.a(R.string.teachbase_near_destination), TtsGrade.SpecialVoice, new b());
        } else {
            TtsManager.r(k0.a(R.string.teachbase_navigation_end), TtsGrade.GlobalTip);
        }
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        dVar.n(k);
        dVar.n(j);
        f7420d.clear();
        f7424h = BitmapDescriptorFactory.HUE_RED;
        f7421e = null;
        f7422f = null;
        f7423g = null;
        i = false;
    }
}
