package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "model", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;"}, k = 3, mv = {1, 5, 1}, xi = 48)
final class MapItemBinder$onBindViewHolder$1$1 extends Lambda implements Function1<ExamSiteModel, kotlin.v> {
    final /* synthetic */ View $it;
    final /* synthetic */ MapItemBinder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MapItemBinder$onBindViewHolder$1$1(MapItemBinder mapItemBinder, View view) {
        super(1);
        this.this$0 = mapItemBinder;
        this.$it = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m15invoke$lambda0(MapItemBinder this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        JLoadingDialog jLoadingDialog = this$0.b;
        if (jLoadingDialog == null) {
            return;
        }
        jLoadingDialog.b("正在加载地图数据...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-2, reason: not valid java name */
    public static final void m16invoke$lambda2(final ExamSiteModel model, final MapItemBinder this$0, final View view) {
        kotlin.jvm.internal.r.e(model, "$model");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.d(model, model.examSiteId);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.s
            @Override // java.lang.Runnable
            public final void run() {
                MapItemBinder$onBindViewHolder$1$1.m17invoke$lambda2$lambda1(this$0, view, model);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-2$lambda-1, reason: not valid java name */
    public static final void m17invoke$lambda2$lambda1(MapItemBinder this$0, View view, ExamSiteModel model) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(model, "$model");
        JLoadingDialog jLoadingDialog = this$0.b;
        if (jLoadingDialog != null) {
            jLoadingDialog.dismiss();
        }
        PosCollectActivity.O(view.getContext(), model);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(ExamSiteModel examSiteModel) {
        invoke2(examSiteModel);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final ExamSiteModel model) {
        kotlin.jvm.internal.r.e(model, "model");
        final MapItemBinder mapItemBinder = this.this$0;
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.r
            @Override // java.lang.Runnable
            public final void run() {
                MapItemBinder$onBindViewHolder$1$1.m15invoke$lambda0(mapItemBinder);
            }
        });
        final MapItemBinder mapItemBinder2 = this.this$0;
        final View view = this.$it;
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.t
            @Override // java.lang.Runnable
            public final void run() {
                MapItemBinder$onBindViewHolder$1$1.m16invoke$lambda2(model, mapItemBinder2, view);
            }
        });
    }
}
