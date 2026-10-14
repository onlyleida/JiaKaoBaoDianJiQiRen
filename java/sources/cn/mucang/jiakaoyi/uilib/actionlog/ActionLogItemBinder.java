package cn.mucang.jiakaoyi.uilib.actionlog;

import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.actionlog.c;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import com.mucang.android.jiakaoyi.uilib.databinding.ActionLogItemBinding;
import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.actionlog.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \n2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/framework/actionlog/ActionLogEntity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActionLogItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ActionLogItemBinder extends ViewBindingBinder<c, ActionLogItemBinding> {
    private static final SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.CHINA);

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<ActionLogItemBinding> holder, c item) {
        r.e(holder, "holder");
        r.e(item, "item");
        TextView textView = ((ActionLogItemBinding) holder.getViewBinding()).timeTv;
        SimpleDateFormat simpleDateFormat = b;
        String str = item.f3432a;
        r.d(str, "item.time");
        textView.setText(simpleDateFormat.format(Long.valueOf(Long.parseLong(str))));
        ((ActionLogItemBinding) holder.getViewBinding()).descTv.setText(item.b);
    }
}
