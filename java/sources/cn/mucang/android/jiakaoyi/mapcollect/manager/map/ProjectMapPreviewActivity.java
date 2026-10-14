package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityProjectMapPreviewBinding;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0014J\b\u0010\u0012\u001a\u00020\u0011H\u0014J\b\u0010\u0013\u001a\u00020\u0011H\u0014J\b\u0010\u0014\u001a\u00020\u0011H\u0014J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R6\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005j\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;", "()V", "layerMap", "Ljava/util/HashMap;", "", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;", "Lkotlin/collections/HashMap;", "renderModels", "Lcn/mucang/android/jiakaoyi/hpmap/render/ExamSiteRenderCallback;", "startDegree", "", "targetDegree", "getStatName", "init", "", "onDestroy", "onPause", "onResume", "renderMap", "model", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/PreviewSimpleModel;", "rotateDegrees", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ProjectMapPreviewActivity extends BaseViewBindingActivity<ActivityProjectMapPreviewBinding> {
    private final List<cn.mucang.android.jiakaoyi.hpmap.c.a> b = new ArrayList();
    private final HashMap<String, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k>> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f5078d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f5079e;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ProjectMapPreviewActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    private final void m(final PreviewSimpleModel previewSimpleModel) {
        this.b.clear();
        this.b.addAll(previewSimpleModel.e());
        Iterator<cn.mucang.android.jiakaoyi.hpmap.c.a> it = this.b.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            cn.mucang.android.jiakaoyi.hpmap.c.a next = it.next();
            HashMap<String, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k>> map = this.c;
            String layerKey = next.getLayerKey();
            kotlin.jvm.internal.r.d(layerKey, "renderModel.layerKey");
            List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listCreateMapLayers = next.createMapLayers(g().mapView, false, false);
            kotlin.jvm.internal.r.d(listCreateMapLayers, "renderModel.createMapLay…ng.mapView, false, false)");
            map.put(layerKey, listCreateMapLayers);
        }
        HashMap<String, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k>> map2 = this.c;
        if (!(map2 == null || map2.isEmpty())) {
            if (g().mapView.getMeasuredHeight() * g().mapView.getMeasuredWidth() <= 0) {
                cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.p0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProjectMapPreviewActivity.n(this.f5123a, previewSimpleModel);
                    }
                }, 200L);
            } else {
                o(this, previewSimpleModel);
            }
        }
        cn.mucang.android.core.utils.t.h("MapTag", "地图加载完成");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ProjectMapPreviewActivity this$0, PreviewSimpleModel model) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(model, "$model");
        o(this$0, model);
    }

    private static final void o(ProjectMapPreviewActivity projectMapPreviewActivity, PreviewSimpleModel previewSimpleModel) {
        projectMapPreviewActivity.g().mapView.u.j();
        Iterator<String> it = projectMapPreviewActivity.c.keySet().iterator();
        while (it.hasNext()) {
            projectMapPreviewActivity.g().mapView.u.h(projectMapPreviewActivity.c.get(it.next()));
        }
        projectMapPreviewActivity.g().mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(previewSimpleModel.getF5143d().l(), previewSimpleModel.getF5143d().f(), projectMapPreviewActivity.g().mapView) * 0.85f);
        projectMapPreviewActivity.g().mapView.i((float) previewSimpleModel.getF5143d().f5818e.x, (float) previewSimpleModel.getF5143d().f5818e.y);
        projectMapPreviewActivity.p(previewSimpleModel);
        float f2 = projectMapPreviewActivity.f5078d;
        projectMapPreviewActivity.g().mapView.setCurrentRotateDegrees(f2 + cn.mucang.android.jiakaoyi.signal.utils.d.c(projectMapPreviewActivity.f5079e - f2));
        projectMapPreviewActivity.g().mapView.w(BitmapDescriptorFactory.HUE_RED, -20.0f);
        projectMapPreviewActivity.g().mapView.r();
    }

    private final void p(PreviewSimpleModel previewSimpleModel) {
        Pos pos = previewSimpleModel.c().get(0).r.end;
        Pos pos2 = previewSimpleModel.c().get(0).r.start;
        float[] fArrB = g().mapView.b((float) pos.x, (float) pos.y);
        kotlin.jvm.internal.r.d(fArrB, "viewBinding.mapView.conv…oat(), start.y.toFloat())");
        float[] fArrB2 = g().mapView.b((float) pos2.x, (float) pos2.y);
        kotlin.jvm.internal.r.d(fArrB2, "viewBinding.mapView.conv…Float(), end.y.toFloat())");
        float degrees = (float) Math.toDegrees(new Pos(fArrB[0], fArrB[1]).angleTo(new Pos(fArrB2[0], fArrB2[1])));
        float currentRotateDegrees = (float) g().mapView.getCurrentRotateDegrees();
        this.f5078d = currentRotateDegrees;
        this.f5079e = cn.mucang.android.jiakaoyi.signal.utils.d.c(currentRotateDegrees - degrees);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "项目效果预览";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText("项目地图预览");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProjectMapPreviewActivity.j(this.f5121a, view);
            }
        });
        PreviewSimpleModel previewSimpleModel = new PreviewSimpleModel();
        previewSimpleModel.f();
        m(previewSimpleModel);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g().mapView.c();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        g().mapView.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        g().mapView.n();
    }
}
