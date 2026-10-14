package cn.mucang.jiakaoyi.uilib.rule;

import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleModifyTimeItemBinding;
import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.e0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \n2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/ModifyTimeBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleModifyTimeItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ModifyTimeBinder extends ViewBindingBinder<Long, RuleModifyTimeItemBinding> {
    private static final SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.CHINA);

    @Override // com.drakeet.multitype.c
    public /* bridge */ /* synthetic */ void c(RecyclerView.c0 c0Var, Object obj) {
        n((ViewBindingHolder) c0Var, ((Number) obj).longValue());
    }

    public void n(ViewBindingHolder<RuleModifyTimeItemBinding> holder, long j) {
        kotlin.jvm.internal.r.e(holder, "holder");
        ((RuleModifyTimeItemBinding) holder.getViewBinding()).timeTv.setText(b.format(Long.valueOf(j)));
    }
}
