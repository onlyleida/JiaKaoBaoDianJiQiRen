package cn.mucang.jiakaoyi.uilib.rule;

import android.widget.TextView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleSettingModifyItemBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.h0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RuleModifyItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingModifyItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleModifyItemBinder extends ViewBindingBinder<RuleConfigEntity, RuleSettingModifyItemBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RuleSettingModifyItemBinding> holder, RuleConfigEntity item) {
        String str;
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((RuleSettingModifyItemBinding) holder.getViewBinding()).descTv.setText(item.getName());
        TextView textView = ((RuleSettingModifyItemBinding) holder.getViewBinding()).stepRuleCode;
        Step stepFindWithType = Step.findWithType(item.getStepId());
        if (stepFindWithType == null) {
            str = null;
        } else {
            str = stepFindWithType.zhStepName + '(' + item.getRuleId() + ')';
        }
        textView.setText(str);
        int valueType = item.getValueType();
        if (valueType == 3) {
            ((RuleSettingModifyItemBinding) holder.getViewBinding()).valueTv.setText(kotlin.jvm.internal.r.a(item.getValue(), "true") ? "是" : "否");
            return;
        }
        if (valueType != 4) {
            if (valueType != 5) {
                ((RuleSettingModifyItemBinding) holder.getViewBinding()).valueTv.setText(item.getValue());
                return;
            }
            ((RuleSettingModifyItemBinding) holder.getViewBinding()).valueTv.setText(item.getValue() + " ~ " + item.getValue2());
            return;
        }
        String value = item.getValue();
        kotlin.jvm.internal.r.d(value, "item.value");
        int size = Integer.parseInt(value);
        String options = item.getOptions();
        kotlin.jvm.internal.r.d(options, "item.options");
        List listP0 = StringsKt__StringsKt.p0(options, new String[]{","}, false, 0, 6, null);
        if (size > listP0.size() - 1) {
            size = listP0.size() - 1;
        }
        ((RuleSettingModifyItemBinding) holder.getViewBinding()).valueTv.setText((CharSequence) listP0.get(size));
    }
}
