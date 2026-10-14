package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityMapPreviewBinding;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0014J\b\u0010\u0017\u001a\u00020\u0016H\u0014J\b\u0010\u0018\u001a\u00020\u0016H\u0014J\b\u0010\u0019\u001a\u00020\u0016H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\t\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityMapPreviewBinding;", "()V", "examSiteId", "", "getExamSiteId", "()J", "examSiteId$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "mapRender", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "preview", "", "getPreview", "()Z", "preview$delegate", "getStatName", "", "init", "", "onDestroy", "onPause", "onResume", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MapPreviewActivity extends BaseViewBindingActivity<ActivityMapPreviewBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f5072f = new a(null);
    private final Lazy b = kotlin.i.b(new Function0<Long>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapPreviewActivity$examSiteId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Long invoke() {
            return Long.valueOf(this.this$0.getIntent().getLongExtra("key.examSiteId", 0L));
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapPreviewActivity$preview$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getIntent().getBooleanExtra("key.preview", true));
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MapRender f5073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JLoadingDialog f5074e;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$Companion;", "", "()V", "KEY_EXAM_PREVIEW", "", "KEY_EXAM_SITE_ID", "launch", "", "context", "Landroid/content/Context;", "siteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "preview", "", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public static /* synthetic */ void b(a aVar, Context context, ExamSiteModel examSiteModel, boolean z, int i, Object obj) {
            if ((i & 4) != 0) {
                z = true;
            }
            aVar.a(context, examSiteModel, z);
        }

        public final void a(Context context, ExamSiteModel siteModel, boolean z) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(siteModel, "siteModel");
            Intent intent = new Intent(context, (Class<?>) MapPreviewActivity.class);
            intent.putExtra("key.examSiteId", siteModel.examSiteId);
            intent.putExtra("key.preview", z);
            kotlin.v vVar = kotlin.v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    private final long j() {
        return ((Number) this.b.getValue()).longValue();
    }

    private final boolean k() {
        return ((Boolean) this.c.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(MapPreviewActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(MapPreviewActivity this$0, Boolean bool) {
        JLoadingDialog jLoadingDialog;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        JLoadingDialog jLoadingDialog2 = this$0.f5074e;
        boolean z = false;
        if (jLoadingDialog2 != null && jLoadingDialog2.isShowing()) {
            z = true;
        }
        if (z && kotlin.jvm.internal.r.a(bool, Boolean.TRUE) && (jLoadingDialog = this$0.f5074e) != null) {
            DialogExtensionKt.b(jLoadingDialog);
        }
    }

    public static final void p(Context context, ExamSiteModel examSiteModel, boolean z) {
        f5072f.a(context, examSiteModel, z);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "考场地图预览";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        g().titleLayout.titleTv.setText("考场地图预览");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapPreviewActivity.l(this.f5117a, view);
            }
        });
        JLoadingDialog jLoadingDialog = new JLoadingDialog(this);
        this.f5074e = jLoadingDialog;
        if (jLoadingDialog != null) {
            jLoadingDialog.b("正在加载地图...");
        }
        x0.f5139a.a(String.valueOf(j()));
        MapView mapView = g().mapView;
        kotlin.jvm.internal.r.d(mapView, "viewBinding.mapView");
        this.f5073d = new MapRender(this, mapView, k(), (cn.mucang.android.jiakaoyi.framework.h.b<Boolean>) new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.n0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                MapPreviewActivity.m(this.f5119a, (Boolean) obj);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MapRender mapRender = this.f5073d;
        if (mapRender == null) {
            return;
        }
        mapRender.d();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        MapRender mapRender = this.f5073d;
        if (mapRender == null) {
            return;
        }
        mapRender.k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        MapRender mapRender = this.f5073d;
        if (mapRender == null) {
            return;
        }
        mapRender.l();
    }
}
