package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.DialogExamHpPreviewFragmentBinding;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import f.a.a.a.p009n.dialog.SafeDialogFragment;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.c1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 62\u00020\u0001:\u00016B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0012\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010%\u001a\u00020&2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J$\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010-\u001a\u00020\"H\u0016J\u0010\u0010.\u001a\u00020\"2\u0006\u0010/\u001a\u000200H\u0016J\b\u00101\u001a\u00020\"H\u0016J\b\u00102\u001a\u00020\"H\u0016J\u0012\u00103\u001a\u00020\"2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u00104\u001a\u00020\"2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u00105\u001a\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/HpPreviewDialogFragment;", "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;", "()V", "binding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogExamHpPreviewFragmentBinding;", "carPosObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;", "carRender", "Lcn/mucang/android/jiakaoyi/hpmap/render/car/CarRender;", "currentZoom", "", "defaultScale", "hasAddCar", "", "iRenderData", "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;", "mapLayerHelper", "Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "getRoute", "()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "setRoute", "(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V", "touch", "upTime", "", "createLayers", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateDialog", "Landroid/app/Dialog;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onDestroy", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "onPause", "onResume", "render", "renderMap", "updateMap", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HpPreviewDialogFragment extends SafeDialogFragment {
    public static final a l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LocalRoute f4242a;
    private cn.mucang.android.jiakaoyi.hpmap.c.c.a b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f4244e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.mapcollect.render.f f4247h;
    private DialogExamHpPreviewFragmentBinding i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f4245f = 0.39999998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f4246g = 0.39999998f;
    private final cn.mucang.android.jiakaoyi.k3collect.k0.n j = new cn.mucang.android.jiakaoyi.k3collect.k0.n();
    private final androidx.lifecycle.a0<CarPos> k = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.h
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HpPreviewDialogFragment.s(this.f4281a, (CarPos) obj);
        }
    };

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.c1$a */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/HpPreviewDialogFragment$Companion;", "", "()V", "show", "Lcn/mucang/android/jiakaoyi/k3setting/exam/HpPreviewDialogFragment;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "k3Data", "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final HpPreviewDialogFragment a(FragmentManager fragmentManager, LocalRoute route, cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
            kotlin.jvm.internal.r.e(fragmentManager, "fragmentManager");
            kotlin.jvm.internal.r.e(route, "route");
            HpPreviewDialogFragment hpPreviewDialogFragment = new HpPreviewDialogFragment();
            hpPreviewDialogFragment.D(route);
            hpPreviewDialogFragment.f4247h = fVar;
            hpPreviewDialogFragment.show(fragmentManager, "HpPreviewDialogFragment");
            return hpPreviewDialogFragment;
        }
    }

    private final void A(final cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        if (fVar == null) {
            return;
        }
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this.i;
        if (dialogExamHpPreviewFragmentBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        MapView mapView = dialogExamHpPreviewFragmentBinding.mapView;
        kotlin.jvm.internal.r.d(mapView, "binding.mapView");
        if (!t(fVar, mapView).isEmpty()) {
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding2 = this.i;
            if (dialogExamHpPreviewFragmentBinding2 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            int measuredWidth = dialogExamHpPreviewFragmentBinding2.mapView.getMeasuredWidth();
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding3 = this.i;
            if (dialogExamHpPreviewFragmentBinding3 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            if (measuredWidth * dialogExamHpPreviewFragmentBinding3.mapView.getMeasuredHeight() <= 0) {
                cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        HpPreviewDialogFragment.B(this.f4269a, fVar);
                    }
                }, 500L);
            } else {
                C(fVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(HpPreviewDialogFragment this$0, cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.C(fVar);
    }

    private final void C(cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        this.f4247h = fVar;
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this.i;
        if (dialogExamHpPreviewFragmentBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dialogExamHpPreviewFragmentBinding.mapView.u.j();
        this.c = false;
        cn.mucang.android.jiakaoyi.hpmap.c.c.a aVar = this.b;
        if (aVar != null) {
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding2 = this.i;
            if (dialogExamHpPreviewFragmentBinding2 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dialogExamHpPreviewFragmentBinding2.mapView.u.g(aVar);
            this.c = true;
        }
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding3 = this.i;
        if (dialogExamHpPreviewFragmentBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        MapView mapView = dialogExamHpPreviewFragmentBinding3.mapView;
        kotlin.jvm.internal.r.d(mapView, "binding.mapView");
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listT = t(fVar, mapView);
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding4 = this.i;
        if (dialogExamHpPreviewFragmentBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dialogExamHpPreviewFragmentBinding4.mapView.u.h(listT);
        cn.mucang.android.jiakaoyi.signal.pos.a mapBound = fVar.getMapBound();
        if ((mapBound == null ? null : mapBound.f5818e) != null) {
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding5 = this.i;
            if (dialogExamHpPreviewFragmentBinding5 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dialogExamHpPreviewFragmentBinding5.mapView.setCurrentZoom(this.f4246g);
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding6 = this.i;
            if (dialogExamHpPreviewFragmentBinding6 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            MapView mapView2 = dialogExamHpPreviewFragmentBinding6.mapView;
            Pos pos = mapBound.f5818e;
            mapView2.i((float) pos.x, (float) pos.y);
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding7 = this.i;
            if (dialogExamHpPreviewFragmentBinding7 != null) {
                dialogExamHpPreviewFragmentBinding7.mapView.r();
            } else {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
        }
    }

    private final void E() {
        cn.mucang.android.jiakaoyi.mapcollect.render.f fVar = this.f4247h;
        if (fVar != null) {
            A(fVar);
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this.i;
            if (dialogExamHpPreviewFragmentBinding != null) {
                dialogExamHpPreviewFragmentBinding.progress.setVisibility(8);
            } else {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(HpPreviewDialogFragment this$0, CarPos carPos) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.hpmap.c.c.a aVar = this$0.b;
        if (aVar == null) {
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this$0.i;
            if (dialogExamHpPreviewFragmentBinding == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            cn.mucang.android.jiakaoyi.hpmap.c.c.a aVar2 = new cn.mucang.android.jiakaoyi.hpmap.c.c.a(dialogExamHpPreviewFragmentBinding.mapView, carPos);
            this$0.b = aVar2;
            if (this$0.c) {
                return;
            }
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding2 = this$0.i;
            if (dialogExamHpPreviewFragmentBinding2 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dialogExamHpPreviewFragmentBinding2.mapView.u.g(aVar2);
            this$0.c = true;
            return;
        }
        if (aVar != null) {
            aVar.q(carPos);
        }
        Pos pos = carPos == null ? null : carPos.center;
        if (pos != null) {
            if (!this$0.f4243d && SystemClock.elapsedRealtime() - this$0.f4244e >= 3000) {
                double d2 = carPos.degree;
                DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding3 = this$0.i;
                if (dialogExamHpPreviewFragmentBinding3 == null) {
                    kotlin.jvm.internal.r.u("binding");
                    throw null;
                }
                dialogExamHpPreviewFragmentBinding3.mapView.setCurrentRotateDegrees((-((float) d2)) - 90);
                cn.mucang.android.jiakaoyi.k3collect.k0.n nVar = this$0.j;
                DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding4 = this$0.i;
                if (dialogExamHpPreviewFragmentBinding4 == null) {
                    kotlin.jvm.internal.r.u("binding");
                    throw null;
                }
                nVar.j(dialogExamHpPreviewFragmentBinding4.mapView, (float) pos.x, (float) pos.y, this$0.f4246g);
            }
            DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding5 = this$0.i;
            if (dialogExamHpPreviewFragmentBinding5 != null) {
                dialogExamHpPreviewFragmentBinding5.mapView.r();
            } else {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
        }
    }

    private final List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> t(cn.mucang.android.jiakaoyi.mapcollect.render.f fVar, MapView mapView) {
        LocalRoute localRoute;
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> createLayers = fVar.createLayers(mapView, false, true);
        if (createLayers != null && (localRoute = this.f4242a) != null && localRoute.getNodes() != null && localRoute.getNodes().size() > 0) {
            if ((fVar.getConverter() instanceof cn.mucang.android.jiakaoyi.signal.i.b) && cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
                RouteNode routeNode = localRoute.getNodes().get(0);
                LiveBus.d(SetInitDebugGps.class).l(new SetInitDebugGps(new Gps(routeNode.getLat(), routeNode.getLon())));
            }
            ArrayList arrayList = new ArrayList();
            List<RouteNode> nodes = localRoute.getNodes();
            kotlin.jvm.internal.r.d(nodes, "route.nodes");
            for (RouteNode routeNode2 : nodes) {
                Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(new Gps(routeNode2.getLat(), routeNode2.getLon()), fVar.getConverter());
                Step stepFindWithType = Step.findWithType(routeNode2.getStepId());
                StringBuilder sb = new StringBuilder();
                sb.append(routeNode2.getId());
                sb.append((Object) (stepFindWithType == null ? null : stepFindWithType.getStepName()));
                arrayList.add(new cn.mucang.android.jiakaoyi.k3collect.j0.c.a(mapView, new cn.mucang.android.jiakaoyi.k3collect.j0.c.a.C0111a(posJ, sb.toString(), routeNode2.getBearing() + 90, R.drawable.route_ic_mark_arrow)));
            }
            cn.mucang.android.core.utils.t.a("dsh", "路线上的点 " + arrayList.size() + " 地图上的线 " + createLayers.size());
            createLayers.addAll(arrayList);
        }
        kotlin.jvm.internal.r.d(createLayers, "createLayers");
        return createLayers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(HpPreviewDialogFragment this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(HpPreviewDialogFragment this$0, Boolean it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        if (it.booleanValue()) {
            this$0.f4243d = true;
        } else {
            this$0.f4244e = SystemClock.elapsedRealtime();
            this$0.f4243d = false;
        }
    }

    public final void D(LocalRoute localRoute) {
        this.f4242a = localRoute;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        kotlin.jvm.internal.r.d(dialogOnCreateDialog, "super.onCreateDialog(savedInstanceState)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setFlags(16777216, 16777216);
        }
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBindingInflate = DialogExamHpPreviewFragmentBinding.inflate(LayoutInflater.from(getContext()));
        kotlin.jvm.internal.r.d(dialogExamHpPreviewFragmentBindingInflate, "inflate(LayoutInflater.from(context))");
        this.i = dialogExamHpPreviewFragmentBindingInflate;
        if (dialogExamHpPreviewFragmentBindingInflate == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dialogExamHpPreviewFragmentBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HpPreviewDialogFragment.y(this.f4260a, view);
            }
        });
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this.i;
        if (dialogExamHpPreviewFragmentBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dialogExamHpPreviewFragmentBinding.progress.setVisibility(0);
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding2 = this.i;
        if (dialogExamHpPreviewFragmentBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dialogExamHpPreviewFragmentBinding2.mapView.setClickViewListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.i
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                HpPreviewDialogFragment.z(this.f4290a, (Boolean) obj);
            }
        });
        androidx.fragment.app.d activity = getActivity();
        if (activity != null) {
            LiveBus.d(CarPos.class).h(activity, this.k);
            E();
        }
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding3 = this.i;
        if (dialogExamHpPreviewFragmentBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        RelativeLayout root = dialogExamHpPreviewFragmentBinding3.getRoot();
        kotlin.jvm.internal.r.d(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this.i;
        if (dialogExamHpPreviewFragmentBinding != null) {
            dialogExamHpPreviewFragmentBinding.mapView.c();
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        kotlin.jvm.internal.r.e(dialog, "dialog");
        super.onDismiss(dialog);
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this.i;
        if (dialogExamHpPreviewFragmentBinding != null) {
            dialogExamHpPreviewFragmentBinding.mapView.c();
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this.i;
        if (dialogExamHpPreviewFragmentBinding != null) {
            dialogExamHpPreviewFragmentBinding.mapView.m();
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        Window window2;
        Window window3;
        Resources resources;
        DisplayMetrics displayMetrics;
        Resources resources2;
        DisplayMetrics displayMetrics2;
        super.onResume();
        if (getContext() != null) {
            Context context = getContext();
            int i = 1000;
            if (context != null && (resources2 = context.getResources()) != null && (displayMetrics2 = resources2.getDisplayMetrics()) != null) {
                i = displayMetrics2.widthPixels;
            }
            Context context2 = getContext();
            int i2 = 800;
            if (context2 != null && (resources = context2.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                i2 = displayMetrics.heightPixels;
            }
            Dialog dialog = getDialog();
            if (dialog != null && (window3 = dialog.getWindow()) != null) {
                window3.setLayout((int) (((double) i) * 0.8d), (int) (((double) i2) * 0.8d));
            }
            Dialog dialog2 = getDialog();
            WindowManager.LayoutParams attributes = (dialog2 == null || (window = dialog2.getWindow()) == null) ? null : window.getAttributes();
            if (attributes != null) {
                attributes.gravity = 17;
            }
            Dialog dialog3 = getDialog();
            if (dialog3 != null && (window2 = dialog3.getWindow()) != null) {
                window2.setAttributes(attributes);
            }
        }
        DialogExamHpPreviewFragmentBinding dialogExamHpPreviewFragmentBinding = this.i;
        if (dialogExamHpPreviewFragmentBinding != null) {
            dialogExamHpPreviewFragmentBinding.mapView.n();
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }
}
