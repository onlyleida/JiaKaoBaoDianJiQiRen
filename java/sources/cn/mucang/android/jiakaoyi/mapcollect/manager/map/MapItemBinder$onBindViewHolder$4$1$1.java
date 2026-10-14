package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.app.ProgressDialog;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.MapListItemBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", Constant.PROTOCOL_WEBVIEW_NAME, ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class MapItemBinder$onBindViewHolder$4$1$1 extends Lambda implements Function1<String, kotlin.v> {
    final /* synthetic */ ViewBindingHolder<MapListItemBinding> $holder;
    final /* synthetic */ ExamSiteModel $item;
    final /* synthetic */ MapViewModel $viewModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MapItemBinder$onBindViewHolder$4$1$1(ExamSiteModel examSiteModel, ViewBindingHolder<MapListItemBinding> viewBindingHolder, MapViewModel mapViewModel) {
        super(1);
        this.$item = examSiteModel;
        this.$holder = viewBindingHolder;
        this.$viewModel = mapViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m18invoke$lambda0(ProgressDialog pd) {
        kotlin.jvm.internal.r.e(pd, "$pd");
        if (pd.isShowing()) {
            pd.dismiss();
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(String str) {
        invoke2(str);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(String name) {
        Runnable runnable;
        kotlin.jvm.internal.r.e(name, "name");
        ExamSiteModel examSiteModel = new ExamSiteModel();
        ExamSiteModel examSiteModel2 = this.$item;
        examSiteModel.driveSchoolName = examSiteModel2.driveSchoolName;
        examSiteModel.examSiteName = name;
        examSiteModel.cityName = examSiteModel2.cityName;
        examSiteModel.cityCode = examSiteModel2.cityCode;
        examSiteModel.canPublic = examSiteModel2.canPublic;
        examSiteModel.originLatitude = examSiteModel2.originLatitude;
        examSiteModel.originLongitude = examSiteModel2.originLongitude;
        examSiteModel.originAltitude = examSiteModel2.originAltitude;
        examSiteModel.mapDataMd5 = examSiteModel2.mapDataMd5;
        examSiteModel.mapDataUrl = examSiteModel2.mapDataUrl;
        examSiteModel.gpsBaseId = examSiteModel2.gpsBaseId;
        final ProgressDialog progressDialogShow = ProgressDialog.show(((MapListItemBinding) this.$holder.getViewBinding()).copyTv.getContext(), null, "正在复制...");
        kotlin.jvm.internal.r.d(progressDialogShow, "show(holder.viewBinding.…context, null, \"正在复制...\")");
        try {
            this.$viewModel.m(examSiteModel);
            runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.u
                @Override // java.lang.Runnable
                public final void run() {
                    MapItemBinder$onBindViewHolder$4$1$1.m18invoke$lambda0(progressDialogShow);
                }
            };
        } catch (Throwable th) {
            try {
                cn.mucang.android.core.utils.u.h("服务异常");
                cn.mucang.android.core.utils.t.d("TAG", kotlin.jvm.internal.r.m("create error : ", th.getLocalizedMessage()));
                runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        MapItemBinder$onBindViewHolder$4$1$1.m18invoke$lambda0(progressDialogShow);
                    }
                };
            } catch (Throwable th2) {
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        MapItemBinder$onBindViewHolder$4$1$1.m18invoke$lambda0(progressDialogShow);
                    }
                });
                throw th2;
            }
        }
        cn.mucang.android.core.utils.u.c(runnable);
    }
}
