package cn.mucang.android.jiakaoyi.k3collect.manager.map;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.databinding.K3MapListItemBinding;
import cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity;
import cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.GpsBaseSelectActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0017R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Landroidx/fragment/app/FragmentManager;)V", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "getViewModel", "()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3MapItemBinder extends ViewBindingBinder<ExamSiteModel, K3MapListItemBinding> {
    private final K3MapViewModel b;

    public K3MapItemBinder(K3MapViewModel viewModel, FragmentManager supportFragmentManager) {
        kotlin.jvm.internal.r.e(viewModel, "viewModel");
        kotlin.jvm.internal.r.e(supportFragmentManager, "supportFragmentManager");
        this.b = viewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(final K3MapItemBinder this$0, final ExamSiteModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams((String) null, "是否确定删除", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                K3MapItemBinder.B(this.f4101a, item, view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(K3MapItemBinder this$0, ExamSiteModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.getB().m(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(androidx.appcompat.app.d activity, final ExamSiteModel item, final View view) {
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(item, "$item");
        cn.mucang.android.jiakaoyi.framework.log.f.o("预览高精度地图");
        new cn.mucang.android.jiakaoyi.k3collect.manager.h().a(activity, item, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.a
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3MapItemBinder.D(item, view, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(ExamSiteModel item, View view, String str) {
        kotlin.jvm.internal.r.e(item, "$item");
        item.mapData = str;
        if (str == null) {
            cn.mucang.android.core.utils.u.h("暂无线上地图数据");
        }
        K3MapPreviewActivity.a aVar = K3MapPreviewActivity.c;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        aVar.a(context, item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(final androidx.appcompat.app.d activity, final ExamSiteModel item, View view) {
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(item, "$item");
        cn.mucang.android.jiakaoyi.framework.log.f.o("迁移高精度地图");
        new cn.mucang.android.jiakaoyi.k3collect.manager.h().a(activity, item, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.g
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3MapItemBinder.F(item, activity, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(final ExamSiteModel item, final androidx.appcompat.app.d activity, String str) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(activity, "$activity");
        item.mapData = str;
        if (str == null) {
            cn.mucang.android.core.utils.u.h("暂无线上地图数据");
        }
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.f
            @Override // java.lang.Runnable
            public final void run() {
                K3MapItemBinder.G(activity, item);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(final androidx.appcompat.app.d activity, final ExamSiteModel item) {
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(item, "$item");
        GpsBaseSelectActivity.c.b(activity, item.cityCode, new Function2<Long, String, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapItemBinder$onBindViewHolder$4$1$1$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ kotlin.v invoke(Long l, String str) {
                invoke(l.longValue(), str);
                return kotlin.v.f15822a;
            }

            public final void invoke(long j, String gpsBaseName) {
                kotlin.jvm.internal.r.e(gpsBaseName, "gpsBaseName");
                if (j <= 0) {
                    return;
                }
                K3MigrateActivity.q.a(activity, item, j, gpsBaseName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(final androidx.appcompat.app.d activity, final ExamSiteModel item, View view) {
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(item, "$item");
        cn.mucang.android.jiakaoyi.framework.log.f.o("编辑高精度地图");
        new cn.mucang.android.jiakaoyi.k3collect.manager.h().a(activity, item, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.c
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3MapItemBinder.z(item, activity, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ExamSiteModel item, androidx.appcompat.app.d activity, String str) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(activity, "$activity");
        item.mapData = str;
        if (str == null) {
            cn.mucang.android.core.utils.u.h("暂无线上地图数据");
        }
        K3PosCollectActivity.I.b(activity, item);
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final K3MapViewModel getB() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<K3MapListItemBinding> holder, final ExamSiteModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        Activity activityA = ActivityUtils.a(((K3MapListItemBinding) holder.getViewBinding()).getRoot().getContext());
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        final androidx.appcompat.app.d dVar = (androidx.appcompat.app.d) activityA;
        ((K3MapListItemBinding) holder.getViewBinding()).cityTv.setText(item.cityName);
        ((K3MapListItemBinding) holder.getViewBinding()).tvExamSiteName.setText(item.examSiteName);
        ((K3MapListItemBinding) holder.getViewBinding()).mapEditTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MapItemBinder.y(dVar, item, view);
            }
        });
        ((K3MapListItemBinding) holder.getViewBinding()).deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MapItemBinder.A(this.f4100a, item, view);
            }
        });
        ((K3MapListItemBinding) holder.getViewBinding()).previewTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MapItemBinder.C(dVar, item, view);
            }
        });
        ((K3MapListItemBinding) holder.getViewBinding()).migrateTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MapItemBinder.E(dVar, item, view);
            }
        });
        ((K3MapListItemBinding) holder.getViewBinding()).mapEditTv.setVisibility(0);
        ((K3MapListItemBinding) holder.getViewBinding()).deleteTv.setVisibility(0);
        ((K3MapListItemBinding) holder.getViewBinding()).funcTv.setText("信息编辑");
        ((K3MapListItemBinding) holder.getViewBinding()).funcTv.setVisibility(8);
        if (item.canPublic) {
            ((K3MapListItemBinding) holder.getViewBinding()).openTv.setVisibility(8);
        } else {
            ((K3MapListItemBinding) holder.getViewBinding()).openTv.setVisibility(0);
        }
        if (item.official) {
            ((K3MapListItemBinding) holder.getViewBinding()).officialTv.setVisibility(0);
        } else {
            ((K3MapListItemBinding) holder.getViewBinding()).officialTv.setVisibility(8);
        }
    }
}
