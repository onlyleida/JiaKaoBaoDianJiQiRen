package cn.mucang.android.jiakaoyi.k3collect.manager.map.preview;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ProgressBar;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.databinding.ActivityK3MapPreviewBinding;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import cn.mucang.android.jiakaoyi.k3collect.k0.n;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcDataUtils;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.f;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0014J\b\u0010\n\u001a\u00020\tH\u0014J\b\u0010\u000b\u001a\u00020\tH\u0014J\b\u0010\f\u001a\u00020\tH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapPreviewBinding;", "()V", "mapLayerHelper", "Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;", "getStatName", "", "init", "", "onDestroy", "onPause", "onResume", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3MapPreviewActivity extends BaseViewBindingActivity<ActivityK3MapPreviewBinding> {
    public static final a c = new a(null);
    private n b;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "siteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, ExamSiteModel siteModel) {
            r.e(context, "context");
            r.e(siteModel, "siteModel");
            if (siteModel.mapData == null) {
                u.h("没有地图数据");
                return;
            }
            Intent intent = new Intent(context, (Class<?>) K3MapPreviewActivity.class);
            cn.mucang.android.jiakaoyi.mapcollect.a.c(siteModel, intent);
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity$init$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity$init$2", f = "K3MapPreviewActivity.kt", l = {77, 104}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Ref$ObjectRef<cn.mucang.android.jiakaoyi.signal.i.b> $defaultConverter;
        final /* synthetic */ Ref$BooleanRef $isLoadFinish;
        final /* synthetic */ String $mapData;
        Object L$0;
        int label;
        final /* synthetic */ K3MapPreviewActivity this$0;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity$init$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity$init$2$1", f = "K3MapPreviewActivity.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
            int label;
            final /* synthetic */ K3MapPreviewActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(K3MapPreviewActivity k3MapPreviewActivity, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = k3MapPreviewActivity;
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

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity$init$2$2, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity$init$2$2", f = "K3MapPreviewActivity.kt", l = {}, m = "invokeSuspend")
        static final class C01142 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
            final /* synthetic */ Ref$ObjectRef<cn.mucang.android.jiakaoyi.signal.i.b> $defaultConverter;
            final /* synthetic */ ArrayList<Gps> $gpsList;
            final /* synthetic */ Ref$BooleanRef $isLoadFinish;
            int label;
            final /* synthetic */ K3MapPreviewActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01142(K3MapPreviewActivity k3MapPreviewActivity, Ref$BooleanRef ref$BooleanRef, Ref$ObjectRef<cn.mucang.android.jiakaoyi.signal.i.b> ref$ObjectRef, ArrayList<Gps> arrayList, Continuation<? super C01142> continuation) {
                super(2, continuation);
                this.this$0 = k3MapPreviewActivity;
                this.$isLoadFinish = ref$BooleanRef;
                this.$defaultConverter = ref$ObjectRef;
                this.$gpsList = arrayList;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
            public static final void m9invokeSuspend$lambda0(K3MapPreviewActivity k3MapPreviewActivity, Ref$ObjectRef ref$ObjectRef, ArrayList arrayList) {
                n nVar = k3MapPreviewActivity.b;
                if (nVar == null) {
                    return;
                }
                nVar.k((MapView) k3MapPreviewActivity.findViewById(R.id.mapView), (cn.mucang.android.jiakaoyi.signal.i.a) ref$ObjectRef.element, arrayList);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new C01142(this.this$0, this.$isLoadFinish, this.$defaultConverter, this.$gpsList, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                return ((C01142) create(i0Var, continuation)).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
                final K3MapPreviewActivity k3MapPreviewActivity = this.this$0;
                final Ref$ObjectRef<cn.mucang.android.jiakaoyi.signal.i.b> ref$ObjectRef = this.$defaultConverter;
                final ArrayList<Gps> arrayList = this.$gpsList;
                u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        K3MapPreviewActivity.AnonymousClass2.C01142.m9invokeSuspend$lambda0(k3MapPreviewActivity, ref$ObjectRef, arrayList);
                    }
                }, 50L);
                ((ProgressBar) this.this$0.findViewById(R.id.pbPreview)).setVisibility(8);
                this.$isLoadFinish.element = true;
                return v.f15822a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, Ref$ObjectRef<cn.mucang.android.jiakaoyi.signal.i.b> ref$ObjectRef, K3MapPreviewActivity k3MapPreviewActivity, Ref$BooleanRef ref$BooleanRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$mapData = str;
            this.$defaultConverter = ref$ObjectRef;
            this.this$0 = k3MapPreviewActivity;
            this.$isLoadFinish = ref$BooleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$mapData, this.$defaultConverter, this.this$0, this.$isLoadFinish, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x003d A[Catch: Exception -> 0x0038, TRY_LEAVE, TryCatch #0 {Exception -> 0x0038, blocks: (B:13:0x002f, B:21:0x003d), top: B:55:0x002f }] */
        /* JADX WARN: Code duplicated, block: B:28:0x0060 A[RETURN] */
        /* JADX WARN: Type inference failed for: r5v2, types: [T, cn.mucang.android.jiakaoyi.signal.i.b] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            List<K3HpMapEntity> listA;
            List<K3HpMapEntity> list;
            d2 d2VarC;
            AnonymousClass1 anonymousClass1;
            boolean z;
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
                    k.b(obj);
                }
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
                    if (f.c(d2VarC, anonymousClass1, this) == objD) {
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
                    if (f.c(d2VarC, anonymousClass1, this) == objD) {
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
                ArrayList arrayList2 = new ArrayList();
                Iterator<K3HpMapEntity> it = list.iterator();
                while (it.hasNext()) {
                    K3SrcData srcData = it.next().parseSrcData();
                    if (srcData != null && srcData.isComplete() && (listCenter = srcData.center()) != null) {
                        arrayList2.addAll(listCenter);
                        arrayList.add(srcData);
                    }
                }
                Gps gpsA = K3SrcDataUtils.f4160a.a(arrayList2);
                if (gpsA != null) {
                    this.$defaultConverter.element = new cn.mucang.android.jiakaoyi.signal.i.b(gpsA);
                    for (K3SrcData k3SrcData : arrayList) {
                        n nVar = this.this$0.b;
                        if (nVar != null) {
                            nVar.g(k3SrcData, (MapView) this.this$0.findViewById(R.id.mapView), this.$defaultConverter.element);
                        }
                    }
                    d2 d2VarC2 = w0.c();
                    C01142 c01142 = new C01142(this.this$0, this.$isLoadFinish, this.$defaultConverter, arrayList2, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (f.c(d2VarC2, c01142, this) == objD) {
                        return objD;
                    }
                } else {
                    this.$isLoadFinish.element = true;
                    u.h("数据为null");
                }
            }
            return v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(K3MapPreviewActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "K3MapPreview";
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0039  */
    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        boolean z;
        super.init();
        g().titleLayout.titleTv.setText("地图预览");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MapPreviewActivity.k(this.f4145a, view);
            }
        });
        ExamSiteModel examSiteModelA = cn.mucang.android.jiakaoyi.mapcollect.a.a(getIntent());
        this.b = new n();
        String str = examSiteModelA.mapData;
        if (str != null) {
            z = str.length() == 0;
        }
        if (z) {
            u.h("线路为空");
        } else {
            g.b(j0.a(w0.b()), null, null, new AnonymousClass2(str, new Ref$ObjectRef(), this, new Ref$BooleanRef(), null), 3, null);
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        n nVar = this.b;
        if (nVar != null) {
            nVar.b((MapView) findViewById(R.id.mapView));
        }
        ((MapView) findViewById(R.id.mapView)).c();
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
