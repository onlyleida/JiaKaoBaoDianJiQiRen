package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.MapListItemBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function6;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0017R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;", "()V", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MapItemBinder extends ViewBindingBinder<ExamSiteModel, MapListItemBinding> {
    private JLoadingDialog b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(ExamSiteModel item, ViewBindingHolder holder, MapViewModel viewModel, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(holder, "$holder");
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        CopyMapDialog copyMapDialog = new CopyMapDialog(context);
        copyMapDialog.h(new MapItemBinder$onBindViewHolder$4$1$1(item, holder, viewModel));
        copyMapDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(androidx.appcompat.app.d activity, ExamSiteModel item, MapItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ExamSiteUtil.b(activity, item, false, new MapItemBinder$onBindViewHolder$5$1(this$0, view));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(androidx.appcompat.app.d activity, ExamSiteModel item, MapItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ExamSiteUtil.b(activity, item, false, new MapItemBinder$onBindViewHolder$6$1(this$0, view));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(androidx.appcompat.app.d activity, ExamSiteModel item, MapItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ExamSiteUtil.b(activity, item, false, new MapItemBinder$onBindViewHolder$1$1(this$0, view));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(final ExamSiteModel item, final MapViewModel viewModel, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        if (ExamSiteUtil.e(0L) == item.examSiteId) {
            cn.mucang.android.core.utils.u.h("该考场正在启用，不能删除");
            return;
        }
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams((String) null, "是否确定删除", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MapItemBinder.y(viewModel, item, view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(MapViewModel viewModel, ExamSiteModel item, View view) {
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        kotlin.jvm.internal.r.e(item, "$item");
        viewModel.n(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(final ExamSiteModel item, androidx.appcompat.app.d activity, final MapViewModel viewModel, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        SiteMapEditDialog siteMapEditDialog = new SiteMapEditDialog();
        siteMapEditDialog.G(item);
        siteMapEditDialog.show(activity.getSupportFragmentManager(), "type_edit");
        siteMapEditDialog.F(new Function6<String, String, String, String, Long, Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapItemBinder$onBindViewHolder$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(6);
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
                ExamSiteModel examSiteModel = item;
                examSiteModel.driveSchoolName = schoolName;
                examSiteModel.examSiteName = siteName;
                examSiteModel.cityName = city;
                examSiteModel.cityCode = str;
                examSiteModel.canPublic = z;
                viewModel.o(examSiteModel);
            }
        });
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<MapListItemBinding> holder, final ExamSiteModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        Activity activityA = ActivityUtils.a(((MapListItemBinding) holder.getViewBinding()).getRoot().getContext());
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        final androidx.appcompat.app.d dVar = (androidx.appcompat.app.d) activityA;
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(dVar).a(MapViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(activi…MapViewModel::class.java)");
        final MapViewModel mapViewModel = (MapViewModel) j0VarA;
        this.b = new JLoadingDialog(dVar);
        ((MapListItemBinding) holder.getViewBinding()).schoolTv.setText(item.driveSchoolName);
        ((MapListItemBinding) holder.getViewBinding()).siteTv.setText(item.examSiteName);
        ((MapListItemBinding) holder.getViewBinding()).mapEditTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapItemBinder.w(dVar, item, this, view);
            }
        });
        ((MapListItemBinding) holder.getViewBinding()).deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapItemBinder.x(item, mapViewModel, view);
            }
        });
        ((MapListItemBinding) holder.getViewBinding()).funcTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapItemBinder.z(item, dVar, mapViewModel, view);
            }
        });
        ((MapListItemBinding) holder.getViewBinding()).copyTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapItemBinder.A(item, holder, mapViewModel, view);
            }
        });
        ((MapListItemBinding) holder.getViewBinding()).previewTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapItemBinder.B(dVar, item, this, view);
            }
        });
        ((MapListItemBinding) holder.getViewBinding()).migrate.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapItemBinder.C(dVar, item, this, view);
            }
        });
        ((MapListItemBinding) holder.getViewBinding()).mapEditTv.setVisibility(0);
        ((MapListItemBinding) holder.getViewBinding()).deleteTv.setVisibility(0);
        ((MapListItemBinding) holder.getViewBinding()).funcTv.setText("信息编辑");
        ((MapListItemBinding) holder.getViewBinding()).funcTv.setVisibility(0);
        if (item.canPublic) {
            ((MapListItemBinding) holder.getViewBinding()).openTv.setVisibility(8);
        } else {
            ((MapListItemBinding) holder.getViewBinding()).openTv.setVisibility(8);
        }
    }
}
