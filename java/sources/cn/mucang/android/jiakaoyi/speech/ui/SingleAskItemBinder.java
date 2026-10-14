package cn.mucang.android.jiakaoyi.speech.ui;

import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.speech.databinding.LayoutItemSingleAskBinding;
import cn.mucang.android.jiakaoyi.speech.model.SingleAskModel;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.ui.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/ui/SingleAskItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/speech/model/SingleAskModel;", "Lcn/mucang/android/jiakaoyi/speech/databinding/LayoutItemSingleAskBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SingleAskItemBinder extends ViewBindingBinder<SingleAskModel, LayoutItemSingleAskBinding> {
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<LayoutItemSingleAskBinding> holder, SingleAskModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((LayoutItemSingleAskBinding) holder.getViewBinding()).text.setText(item.getF5891a());
    }
}
