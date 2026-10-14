package cn.mucang.jiakaoyi.uilib.deduct;

import android.widget.TextView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import com.mucang.android.jiakaoyi.uilib.databinding.DeductSettingModifyItemBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.a0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/DeductModifyItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingModifyItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductModifyItemBinder extends ViewBindingBinder<DeductEntity, DeductSettingModifyItemBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<DeductSettingModifyItemBinding> holder, DeductEntity item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        TextView textView = ((DeductSettingModifyItemBinding) holder.getViewBinding()).descTv;
        StringBuilder sb = new StringBuilder();
        sb.append((Object) item.getDesc());
        sb.append('(');
        sb.append(item.getDeductScore());
        sb.append(')');
        textView.setText(sb.toString());
        Step stepFindWithType = Step.findWithType(item.getStepId());
        if (stepFindWithType == null) {
            ((DeductSettingModifyItemBinding) holder.getViewBinding()).stepRuleCode.setText("stepId " + item.getStepId() + '(' + item.getCode() + ')');
        } else {
            TextView textView2 = ((DeductSettingModifyItemBinding) holder.getViewBinding()).stepRuleCode;
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) stepFindWithType.zhStepName);
            sb2.append('(');
            sb2.append(item.getCode());
            sb2.append(')');
            textView2.setText(sb2.toString());
        }
        int judgeType = item.getJudgeType();
        if (judgeType == 0) {
            ((DeductSettingModifyItemBinding) holder.getViewBinding()).valueTv.setText("系统");
            return;
        }
        if (judgeType == 1) {
            ((DeductSettingModifyItemBinding) holder.getViewBinding()).valueTv.setText("人工");
        } else if (judgeType != 2) {
            ((DeductSettingModifyItemBinding) holder.getViewBinding()).valueTv.setText("不评判");
        } else {
            ((DeductSettingModifyItemBinding) holder.getViewBinding()).valueTv.setText("系统和人工");
        }
    }
}
