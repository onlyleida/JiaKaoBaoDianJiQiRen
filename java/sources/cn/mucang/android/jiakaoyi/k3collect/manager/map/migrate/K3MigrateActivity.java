package cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.databinding.ActivityK3MapMigrateBinding;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import cn.mucang.android.jiakaoyi.k3collect.k0.n;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcDataUtils;
import cn.mucang.android.jiakaoyi.mapcollect.migrate.p;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 52\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00015B\u0005¢\u0006\u0002\u0010\u0003J \u0010+\u001a\u00020\u00152\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\b\u0012\u0004\u0012\u00020\u0015`\u0016H\u0002J\b\u0010,\u001a\u00020\u000fH\u0016J\b\u0010-\u001a\u00020.H\u0014J\b\u0010/\u001a\u00020.H\u0002J\u0010\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020\"H\u0002J\b\u00102\u001a\u00020.H\u0014J\b\u00103\u001a\u00020.H\u0014J\b\u00104\u001a\u00020.H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\b\u0012\u0004\u0012\u00020\u0015`\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\"0\u0014j\b\u0012\u0004\u0012\u00020\"`\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapMigrateBinding;", "()V", "converter", "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;", "count", "", "gpsBaseId", "", "getGpsBaseId", "()J", "gpsBaseId$delegate", "Lkotlin/Lazy;", "gpsBaseName", "", "getGpsBaseName", "()Ljava/lang/String;", "gpsBaseName$delegate", "gpsList", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "Lkotlin/collections/ArrayList;", "isChoosing", "", "mapLayerHelper", "Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;", "newGps", "newLayer", "Lcn/mucang/android/jiakaoyi/mapcollect/migrate/MigratePointLayer;", "newTempGps", "oldGps", "oldLayer", "posList", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "siteMapModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getSiteMapModel", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "setSiteMapModel", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V", "calculateCenter", "getStatName", "init", "", "migrate", "onClickPoint", "pos", "onDestroy", "onPause", "onResume", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3MigrateActivity extends BaseViewBindingActivity<ActivityK3MapMigrateBinding> {
    public static final a q = new a(null);
    private n b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.i.a f4128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private p f4129f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private p f4130g;
    private int l;
    private boolean m;
    private ExamSiteModel n;
    private final ArrayList<Gps> c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<Pos> f4127d = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f4131h = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.i
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            K3MigrateActivity.K(this.f4140a, eVar);
        }
    };
    private final Gps i = new Gps();
    private final Gps j = new Gps();
    private final Gps k = new Gps();
    private final Lazy o = kotlin.i.b(new Function0<Long>() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$gpsBaseId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Long invoke() {
            return Long.valueOf(this.this$0.getIntent().getLongExtra("gpsBaseId", -1L));
        }
    });
    private final Lazy p = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$gpsBaseName$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("gpsBaseName");
            return stringExtra == null ? "" : stringExtra;
        }
    });

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$Companion;", "", "()V", "GPS_BASE_ID", "", "GPS_BASE_NAME", "launch", "", "context", "Landroid/content/Context;", "siteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "gpsBaseId", "", "gpsBaseName", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, ExamSiteModel siteModel, long j, String gpsBaseName) {
            r.e(context, "context");
            r.e(siteModel, "siteModel");
            r.e(gpsBaseName, "gpsBaseName");
            if (siteModel.mapData == null) {
                u.h("没有地图数据");
                return;
            }
            HPGpsManager.k(siteModel.examSiteId, (int) j);
            Intent intent = new Intent(context, (Class<?>) K3MigrateActivity.class);
            cn.mucang.android.jiakaoyi.mapcollect.a.c(siteModel, intent);
            intent.addFlags(268435456);
            intent.putExtra("gpsBaseId", j);
            intent.putExtra("gpsBaseName", gpsBaseName);
            context.startActivity(intent);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$init$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$init$2", f = "K3MigrateActivity.kt", l = {147, 174}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ String $mapData;
        Object L$0;
        int label;
        final /* synthetic */ K3MigrateActivity this$0;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$init$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$init$2$1", f = "K3MigrateActivity.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
            int label;
            final /* synthetic */ K3MigrateActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(K3MigrateActivity k3MigrateActivity, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = k3MigrateActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
                ((ProgressBar) this.this$0.findViewById(R.id.pbPreview)).setVisibility(0);
                return v.f15822a;
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$init$2$2, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$init$2$2", f = "K3MigrateActivity.kt", l = {}, m = "invokeSuspend")
        static final class C01132 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
            int label;
            final /* synthetic */ K3MigrateActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01132(K3MigrateActivity k3MigrateActivity, Continuation<? super C01132> continuation) {
                super(2, continuation);
                this.this$0 = k3MigrateActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new C01132(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                return ((C01132) create(i0Var, continuation)).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
                ((ProgressBar) this.this$0.findViewById(R.id.pbPreview)).setVisibility(8);
                return v.f15822a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, K3MigrateActivity k3MigrateActivity, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$mapData = str;
            this.this$0 = k3MigrateActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$mapData, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0041 A[Catch: Exception -> 0x003c, TRY_LEAVE, TryCatch #0 {Exception -> 0x003c, blocks: (B:13:0x0033, B:21:0x0041), top: B:60:0x0033 }] */
        /* JADX WARN: Code duplicated, block: B:28:0x0064 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            List<K3HpMapEntity> listA;
            List<K3HpMapEntity> list;
            d2 d2VarC;
            AnonymousClass1 anonymousClass1;
            boolean z;
            cn.mucang.android.jiakaoyi.signal.i.b bVar;
            List<Gps> listCenter;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    list = (List) this.L$0;
                    k.b(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    bVar = (cn.mucang.android.jiakaoyi.signal.i.b) this.L$0;
                    k.b(obj);
                }
                this.this$0.f4128e = bVar;
                return v.f15822a;
            }
            k.b(obj);
            try {
                listA = cn.mucang.android.jiakaoyi.k3collect.src.a.a(this.$mapData);
                if (listA != null) {
                    try {
                        z = listA.isEmpty();
                        if (z) {
                            u.h("线路为空");
                            return v.f15822a;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                    }
                    list = listA;
                    d2VarC = w0.c();
                    anonymousClass1 = new AnonymousClass1(this.this$0, null);
                    this.L$0 = list;
                    this.label = 1;
                    if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                        return objD;
                    }
                } else {
                    if (z) {
                        u.h("线路为空");
                        return v.f15822a;
                    }
                    list = listA;
                    d2VarC = w0.c();
                    anonymousClass1 = new AnonymousClass1(this.this$0, null);
                    this.L$0 = list;
                    this.label = 1;
                    if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                        return objD;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                listA = null;
            }
            return v.f15822a;
            if (list != null) {
                ArrayList<K3SrcData> arrayList = new ArrayList();
                Iterator<K3HpMapEntity> it = list.iterator();
                while (it.hasNext()) {
                    K3SrcData srcData = it.next().parseSrcData();
                    if (srcData != null && srcData.isComplete() && (listCenter = srcData.center()) != null) {
                        this.this$0.c.addAll(listCenter);
                        arrayList.add(srcData);
                    }
                }
                Gps gpsA = K3SrcDataUtils.f4160a.a(this.this$0.c);
                if (gpsA != null) {
                    cn.mucang.android.jiakaoyi.signal.i.b bVar2 = new cn.mucang.android.jiakaoyi.signal.i.b(gpsA);
                    for (K3SrcData k3SrcData : arrayList) {
                        n nVar = this.this$0.b;
                        if (nVar != null) {
                            nVar.g(k3SrcData, (MapView) this.this$0.findViewById(R.id.mapView), bVar2);
                        }
                    }
                    this.this$0.f4127d.clear();
                    this.this$0.f4127d.addAll(cn.mucang.android.jiakaoyi.k3collect.k0.o.f(bVar2, this.this$0.c));
                    n nVar2 = this.this$0.b;
                    if (nVar2 != null) {
                        nVar2.k((MapView) this.this$0.findViewById(R.id.mapView), bVar2, this.this$0.c);
                    }
                    d2 d2VarC2 = w0.c();
                    C01132 c01132 = new C01132(this.this$0, null);
                    this.L$0 = bVar2;
                    this.label = 2;
                    if (kotlinx.coroutines.f.c(d2VarC2, c01132, this) == objD) {
                        return objD;
                    }
                    bVar = bVar2;
                    this.this$0.f4128e = bVar;
                }
            }
            return v.f15822a;
        }
    }

    private final void F() {
        final Gps gps = new Gps(this.i);
        if (!cn.mucang.android.jiakaoyi.signal.handle.gps.k.b(gps.longitude, gps.latitude)) {
            u.h("请先选择原地图上的一点");
            return;
        }
        final Gps gps2 = new Gps(this.j);
        if (cn.mucang.android.jiakaoyi.signal.handle.gps.k.b(gps2.longitude, gps2.latitude)) {
            new AlertDialog.Builder(this).setMessage("确定进行基站迁移?").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.a
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    K3MigrateActivity.G(this.f4132a, gps, gps2, dialogInterface, i);
                }
            }).setNegativeButton("暂不迁移", (DialogInterface.OnClickListener) null).create().show();
        } else {
            u.h("请在原地图选择的点上采集一个新的点");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(final K3MigrateActivity this$0, final Gps og, final Gps ng, DialogInterface dialogInterface, int i) {
        r.e(this$0, "this$0");
        r.e(og, "$og");
        r.e(ng, "$ng");
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this$0).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.c
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                K3MigrateActivity.H(this.f4134a, og, ng);
            }
        }, "正在迁移...", "迁移错误");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(K3MigrateActivity this$0, Gps og, Gps ng) throws ApiException, InternalException, HttpException {
        r.e(this$0, "this$0");
        r.e(og, "$og");
        r.e(ng, "$ng");
        if (this$0.n() <= 0) {
            u.h("没有指定基站");
            return;
        }
        cn.mucang.android.jiakaoyi.mapcollect.migrate.o oVar = new cn.mucang.android.jiakaoyi.mapcollect.migrate.o();
        ExamSiteModel n = this$0.getN();
        oVar.m(String.valueOf(n == null ? null : Long.valueOf(n.examSiteId)), og, ng, Long.valueOf(this$0.n()));
        u.h("迁移成功");
    }

    private final void I(Pos pos) {
        int size = this.f4127d.size();
        int i = 0;
        double d2 = 1.0E8d;
        if (size > 0) {
            double d3 = 1.0E8d;
            int i2 = 0;
            while (true) {
                int i3 = i + 1;
                Pos pos2 = this.f4127d.get(i);
                r.d(pos2, "posList[i]");
                double dDistanceTo = pos2.distanceTo(pos);
                if (dDistanceTo < d3) {
                    i2 = i;
                    d3 = dDistanceTo;
                }
                if (i3 >= size) {
                    break;
                } else {
                    i = i3;
                }
            }
            i = i2;
            d2 = d3;
        }
        if (d2 < 150.0d) {
            this.i.setGps(this.c.get(i));
            p pVar = this.f4129f;
            if (pVar != null) {
                pVar.i(this.f4127d.get(i));
            }
            if (isFinishing() || isDestroyed()) {
                return;
            }
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.b
                @Override // java.lang.Runnable
                public final void run() {
                    K3MigrateActivity.J(this.f4133a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(K3MigrateActivity this$0) {
        r.e(this$0, "this$0");
        TextView textView = this$0.g().mapPoint;
        StringBuilder sb = new StringBuilder();
        sb.append(this$0.i.latitude);
        sb.append('\n');
        sb.append(this$0.i.longitude);
        textView.setText(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(K3MigrateActivity this$0, cn.mucang.android.jiakaoyi.signal.c.e it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        if (this$0.m && it.getCurrentPosition().c()) {
            this$0.k.longitude += it.getCurrentPosition().f5281g.getLongitude();
            this$0.k.latitude += it.getCurrentPosition().f5281g.getLatitude();
            this$0.k.altitude += it.getCurrentPosition().f5281g.getAltitude();
            int i = this$0.l + 1;
            this$0.l = i;
            Gps gps = this$0.j;
            Gps gps2 = this$0.k;
            gps.longitude = gps2.longitude / ((double) i);
            gps.latitude = gps2.latitude / ((double) i);
            gps.altitude = gps2.altitude / ((double) i);
            TextView textView = this$0.g().newStationPoint;
            StringBuilder sb = new StringBuilder();
            sb.append(this$0.j.latitude);
            sb.append('\n');
            sb.append(this$0.j.longitude);
            textView.setText(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(K3MigrateActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(final K3MigrateActivity this$0, final Pos pos) {
        r.e(this$0, "this$0");
        if (this$0.f4128e == null || this$0.f4127d.size() != this$0.c.size()) {
            return;
        }
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.e
            @Override // java.lang.Runnable
            public final void run() {
                K3MigrateActivity.r(this.f4136a, pos);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(K3MigrateActivity this$0, Pos it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.I(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final K3MigrateActivity this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.m) {
            return;
        }
        this$0.l = 0;
        this$0.m = true;
        final ProgressDialog progressDialogShow = ProgressDialog.show(this$0, null, "正在采集当前基站点...");
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.f
            @Override // java.lang.Runnable
            public final void run() {
                K3MigrateActivity.t(progressDialogShow, this$0);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(ProgressDialog progressDialog, K3MigrateActivity this$0) {
        r.e(this$0, "this$0");
        progressDialog.dismiss();
        this$0.m = false;
        p pVar = this$0.f4130g;
        if (pVar != null) {
            cn.mucang.android.jiakaoyi.signal.i.a aVar = this$0.f4128e;
            pVar.i(aVar == null ? null : aVar.a(this$0.j));
        }
        this$0.k.setGps(0.0d, 0.0d, 0.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(K3MigrateActivity this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.m) {
            return;
        }
        this$0.F();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "k3基站迁移";
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0042  */
    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        boolean z;
        super.init();
        g().titleLayout.titleTv.setText("地图预览");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MigrateActivity.p(this.f4138a, view);
            }
        });
        this.n = cn.mucang.android.jiakaoyi.mapcollect.a.a(getIntent());
        this.b = new n();
        ExamSiteModel examSiteModel = this.n;
        String str = examSiteModel == null ? null : examSiteModel.mapData;
        if (str != null) {
            z = str.length() == 0;
        }
        if (z) {
            u.h("线路为空");
            return;
        }
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new AnonymousClass2(str, this, null), 3, null);
        int i = R.id.mapView;
        ((MapView) findViewById(i)).setOnClickListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.j
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3MigrateActivity.q(this.f4141a, (Pos) obj);
            }
        });
        g().chooseNewStation.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MigrateActivity.s(this.f4139a, view);
            }
        });
        g().migrate.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MigrateActivity.u(this.f4135a, view);
            }
        });
        this.f4129f = new p((MapView) findViewById(i), -65536);
        this.f4130g = new p((MapView) findViewById(i), -16711936);
        ((MapView) findViewById(i)).u.g(this.f4129f);
        ((MapView) findViewById(i)).u.g(this.f4130g);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f4131h);
    }

    public final long n() {
        return ((Number) this.o.getValue()).longValue();
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final ExamSiteModel getN() {
        return this.n;
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        n nVar = this.b;
        if (nVar != null) {
            nVar.b((MapView) findViewById(R.id.mapView));
        }
        ((MapView) findViewById(R.id.mapView)).c();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f4131h);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        ((MapView) findViewById(R.id.mapView)).m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        ((MapView) findViewById(R.id.mapView)).n();
    }
}
