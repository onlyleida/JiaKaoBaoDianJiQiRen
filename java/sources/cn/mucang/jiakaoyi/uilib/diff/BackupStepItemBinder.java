package cn.mucang.jiakaoyi.uilib.diff;

import android.view.View;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import com.mucang.android.jiakaoyi.uilib.databinding.BackupItemStepBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.diff.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/diff/BackupStepItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/StepItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/BackupItemStepBinding;", "callBack", "Lkotlin/Function1;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "", "(Lkotlin/jvm/functions/Function1;)V", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BackupStepItemBinder extends ViewBindingBinder<StepItem, BackupItemStepBinding> {
    private final Function1<Step, v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public BackupStepItemBinder(Function1<? super Step, v> callBack) {
        r.e(callBack, "callBack");
        this.b = callBack;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(BackupStepItemBinder this$0, StepItem item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(item.getStep());
    }

    public final Function1<Step, v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<BackupItemStepBinding> holder, final StepItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((BackupItemStepBinding) holder.getViewBinding()).stepName.setText(item.getStep().getStepName());
        ((BackupItemStepBinding) holder.getViewBinding()).stepName.setSelected(item.getIsSelect());
        ((BackupItemStepBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.diff.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupStepItemBinder.q(this.f9296a, item, view);
            }
        });
    }
}
