package cn.mucang.android.jiakaoyi.teachingk2.calibration;

import android.view.View;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemCalibarBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.calibration.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibarItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCalibarBinding;", "onSave", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CalibarItemBinder extends ViewBindingBinder<CalibrationItem, ItemCalibarBinding> {
    private final Function1<CalibrationItem, v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public CalibarItemBinder(Function1<? super CalibrationItem, v> onSave) {
        r.e(onSave, "onSave");
        this.b = onSave;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CalibrationItem item, View view) {
        r.e(item, "$item");
        TtsManager.H();
        TtsManager.r(item.startText, TtsGrade.GlobalTip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(CalibrationItem item, ViewBindingHolder holder, CalibarItemBinder this$0, View view) {
        r.e(item, "$item");
        r.e(holder, "$holder");
        r.e(this$0, "this$0");
        try {
            if (item.needInputValue) {
                item.value = Integer.parseInt(((ItemCalibarBinding) holder.getViewBinding()).etValue.getText().toString());
            }
            this$0.b.invoke(item);
        } catch (Exception unused) {
            u.h("请输入整数");
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<ItemCalibarBinding> holder, final CalibrationItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((ItemCalibarBinding) holder.getViewBinding()).startTv.setVisibility(item.isStart ? 0 : 8);
        ((ItemCalibarBinding) holder.getViewBinding()).warningTv.setVisibility(n0.g(item.tip) ? 0 : 8);
        ((ItemCalibarBinding) holder.getViewBinding()).warningTv.setText(item.tip);
        if (item.isStart) {
            ((ItemCalibarBinding) holder.getViewBinding()).startTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CalibarItemBinder.q(item, view);
                }
            });
        }
        ((ItemCalibarBinding) holder.getViewBinding()).stepName.setText(item.stepName);
        ((ItemCalibarBinding) holder.getViewBinding()).head.setText(item.head);
        if (item.needInputValue) {
            ((ItemCalibarBinding) holder.getViewBinding()).etValue.setVisibility(0);
            ((ItemCalibarBinding) holder.getViewBinding()).etValue.setText(String.valueOf(item.value));
        } else {
            ((ItemCalibarBinding) holder.getViewBinding()).etValue.setVisibility(8);
        }
        ((ItemCalibarBinding) holder.getViewBinding()).confirm.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibarItemBinder.r(item, holder, this, view);
            }
        });
    }
}
