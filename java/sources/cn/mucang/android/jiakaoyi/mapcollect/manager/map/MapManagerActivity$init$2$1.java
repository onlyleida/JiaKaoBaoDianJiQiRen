package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.app.ProgressDialog;
import android.view.View;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\n"}, d2 = {"<anonymous>", "", "schoolName", "", "siteName", "city", "cityCode", "gpsBaseId", "", "canPublic", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class MapManagerActivity$init$2$1 extends Lambda implements Function6<String, String, String, String, Long, Boolean, kotlin.v> {
    final /* synthetic */ View $it;
    final /* synthetic */ MapManagerActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MapManagerActivity$init$2$1(MapManagerActivity mapManagerActivity, View view) {
        super(6);
        this.this$0 = mapManagerActivity;
        this.$it = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-1, reason: not valid java name */
    public static final void m25invoke$lambda1(ExamSiteModel newModel, View view, MapManagerActivity this$0, ProgressDialog pd) {
        kotlin.jvm.internal.r.e(newModel, "$newModel");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(pd, "$pd");
        try {
            PosCollectActivity.O(view.getContext(), new GeneralBusinessApi().n(newModel, true));
            this$0.b = true;
        } catch (Exception e2) {
            if (e2 instanceof ApiException) {
                ApiResponse apiResponse = ((ApiException) e2).getApiResponse();
                cn.mucang.android.core.utils.u.h(apiResponse == null ? null : apiResponse.getMessage());
            } else {
                cn.mucang.android.core.utils.u.h(e2.getLocalizedMessage());
            }
        } finally {
            if (pd.isShowing()) {
                pd.dismiss();
            }
        }
    }

    @Override // kotlin.jvm.functions.Function6
    public /* bridge */ /* synthetic */ kotlin.v invoke(String str, String str2, String str3, String str4, Long l, Boolean bool) {
        invoke(str, str2, str3, str4, l, bool.booleanValue());
        return kotlin.v.f15822a;
    }

    public final void invoke(String schoolName, String siteName, String city, String str, Long l, boolean z) {
        kotlin.jvm.internal.r.e(schoolName, "schoolName");
        kotlin.jvm.internal.r.e(siteName, "siteName");
        kotlin.jvm.internal.r.e(city, "city");
        final ExamSiteModel examSiteModel = new ExamSiteModel();
        examSiteModel.driveSchoolName = schoolName;
        examSiteModel.examSiteName = siteName;
        examSiteModel.cityName = city;
        examSiteModel.cityCode = str;
        examSiteModel.canPublic = z;
        if (l != null) {
            examSiteModel.gpsBaseId = l.longValue();
        }
        if (examSiteModel.gpsBaseId <= 0) {
            cn.mucang.android.core.utils.u.h("无效的基站Id");
            return;
        }
        final ProgressDialog progressDialogShow = ProgressDialog.show(this.this$0, null, "正在创建...");
        kotlin.jvm.internal.r.d(progressDialogShow, "show(this, null, \"正在创建...\")");
        final View view = this.$it;
        final MapManagerActivity mapManagerActivity = this.this$0;
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.h0
            @Override // java.lang.Runnable
            public final void run() {
                MapManagerActivity$init$2$1.m25invoke$lambda1(examSiteModel, view, mapManagerActivity, progressDialogShow);
            }
        });
    }
}
