package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.CarModelDbListItemBinding;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.x, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u001e\u0010\u0016\u001a\u00020\u00142\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00182\u0006\u0010\u0015\u001a\u00020\u0002H\u0016R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;", "agencyUser", "", "agencyData", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;ZZLandroidx/fragment/app/FragmentManager;)V", "getAgencyData", "()Z", "getAgencyUser", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "getViewModel", "()Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;", "addToMyCar", "", "item", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarModelDbItemBinder extends ViewBindingBinder<HpCarMapModel, CarModelDbListItemBinding> {
    private final CarModelDbViewModel b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5060d;

    public CarModelDbItemBinder(CarModelDbViewModel viewModel, boolean z, boolean z2, FragmentManager supportFragmentManager) {
        kotlin.jvm.internal.r.e(viewModel, "viewModel");
        kotlin.jvm.internal.r.e(supportFragmentManager, "supportFragmentManager");
        this.b = viewModel;
        this.c = z;
        this.f5060d = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(CarModelDbItemBinder this$0, HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.getB().r((int) item.id, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(final CarModelDbItemBinder this$0, final HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams((String) null, "是否确定删除", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CarModelDbItemBinder.C(this.f5059a, item, view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(CarModelDbItemBinder this$0, HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.getB().o(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        PosCollectActivity.N(view.getContext(), item);
    }

    private final void n(HpCarMapModel hpCarMapModel) {
        this.b.n((int) hpCarMapModel.id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(final CarModelDbItemBinder this$0, final HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        if (view.isSelected()) {
            return;
        }
        if (cn.mucang.android.jiakaoyi.mapcollect.collect.car.d.h() == null) {
            this$0.n(item);
            return;
        }
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams((String) null, "是否替换当前已有的车身数据", "取消", (View.OnClickListener) null, "确定", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CarModelDbItemBinder.y(this.f5058a, item, view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(CarModelDbItemBinder this$0, HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.n(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(final CarModelDbItemBinder this$0, final HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams((String) null, "是否将此数据设置成官方数据", "取消", (View.OnClickListener) null, "确定", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CarModelDbItemBinder.A(this.f5056a, item, view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final CarModelDbViewModel getB() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<CarModelDbListItemBinding> holder, final HpCarMapModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((CarModelDbListItemBinding) holder.getViewBinding()).carTitle.setText(item.title);
        if (this.c) {
            ((CarModelDbListItemBinding) holder.getViewBinding()).addToMyCar.setVisibility(0);
            ((CarModelDbListItemBinding) holder.getViewBinding()).carBodyEdit.setVisibility(8);
            ((CarModelDbListItemBinding) holder.getViewBinding()).setToOfficial.setVisibility(8);
            ((CarModelDbListItemBinding) holder.getViewBinding()).delete.setVisibility(8);
        } else if (this.f5060d) {
            ((CarModelDbListItemBinding) holder.getViewBinding()).carBodyEdit.setVisibility(8);
            ((CarModelDbListItemBinding) holder.getViewBinding()).addToMyCar.setVisibility(0);
            ((CarModelDbListItemBinding) holder.getViewBinding()).setToOfficial.setVisibility(0);
            ((CarModelDbListItemBinding) holder.getViewBinding()).delete.setVisibility(8);
        } else {
            ((CarModelDbListItemBinding) holder.getViewBinding()).carBodyEdit.setVisibility(0);
            ((CarModelDbListItemBinding) holder.getViewBinding()).addToMyCar.setVisibility(0);
            ((CarModelDbListItemBinding) holder.getViewBinding()).setToOfficial.setVisibility(8);
            ((CarModelDbListItemBinding) holder.getViewBinding()).delete.setVisibility(0);
        }
        ((CarModelDbListItemBinding) holder.getViewBinding()).addToMyCar.setSelected(item.hasAdd);
        ((CarModelDbListItemBinding) holder.getViewBinding()).addToMyCar.setText(item.hasAdd ? "已添加" : "添加到我的车身数据");
        ((CarModelDbListItemBinding) holder.getViewBinding()).addToMyCar.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarModelDbItemBinder.x(this.f5053a, item, view);
            }
        });
        ((CarModelDbListItemBinding) holder.getViewBinding()).setToOfficial.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarModelDbItemBinder.z(this.f5057a, item, view);
            }
        });
        ((CarModelDbListItemBinding) holder.getViewBinding()).delete.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarModelDbItemBinder.B(this.f5055a, item, view);
            }
        });
        ((CarModelDbListItemBinding) holder.getViewBinding()).carBodyEdit.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarModelDbItemBinder.D(item, view);
            }
        });
    }
}
