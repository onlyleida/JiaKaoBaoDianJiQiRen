package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.CarCodeManagerItemBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.w, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarCodeManagerItemBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;", "(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarCodeItemBinder extends ViewBindingBinder<HpCarMapModel, CarCodeManagerItemBinding> {
    private final CarCodeViewModel b;

    public CarCodeItemBinder(CarCodeViewModel viewModel) {
        kotlin.jvm.internal.r.e(viewModel, "viewModel");
        this.b = viewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        PosCollectActivity.N(view.getContext(), item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(CarCodeItemBinder this$0, HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.b.n(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(final CarCodeItemBinder this$0, final HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams("提示", "车型数据库删除后， \n 其他设备车身数据库此车型也会被删除", "取消", (View.OnClickListener) null, "确认", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CarCodeItemBinder.v(this.f5041a, item, view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(CarCodeItemBinder this$0, HpCarMapModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.b.m(item.id);
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<CarCodeManagerItemBinding> holder, final HpCarMapModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((CarCodeManagerItemBinding) holder.getViewBinding()).carTitle.setText(item.title);
        ((CarCodeManagerItemBinding) holder.getViewBinding()).carDesc.setText("时间：" + ((Object) FormatUtils.d("yyyy-MM-dd HH:mm:ss", item.createTime)) + "    备注：" + ((Object) item.describe));
        if (item.hasAdd) {
            ((CarCodeManagerItemBinding) holder.getViewBinding()).enableCarData.setSelected(true);
            ((CarCodeManagerItemBinding) holder.getViewBinding()).enableCarData.setText("已启用");
            ((CarCodeManagerItemBinding) holder.getViewBinding()).enableCarData.setEnabled(false);
        } else {
            ((CarCodeManagerItemBinding) holder.getViewBinding()).enableCarData.setSelected(false);
            ((CarCodeManagerItemBinding) holder.getViewBinding()).enableCarData.setText("启用");
            ((CarCodeManagerItemBinding) holder.getViewBinding()).enableCarData.setEnabled(true);
        }
        ((CarCodeManagerItemBinding) holder.getViewBinding()).carBodyEdit.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarCodeItemBinder.s(item, view);
            }
        });
        ((CarCodeManagerItemBinding) holder.getViewBinding()).enableCarData.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarCodeItemBinder.t(this.f5038a, item, view);
            }
        });
        ((CarCodeManagerItemBinding) holder.getViewBinding()).delete.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarCodeItemBinder.u(this.f5039a, item, view);
            }
        });
    }
}
