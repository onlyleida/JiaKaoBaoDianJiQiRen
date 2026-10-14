package cn.mucang.jiakaoyi.uilib.ui.setting.tts;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import com.mucang.android.jiakaoyi.uilib.databinding.ItemVoicePackBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.tts.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ItemVoicePackBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VoicePackItemBinder extends ViewBindingBinder<String, ItemVoicePackBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(String item, View view) {
        r.e(item, "$item");
        try {
            TtsManager.s("测试语音包", TtsGrade.ExamTip, Integer.parseInt((String) StringsKt__StringsKt.p0(item, new String[]{"."}, false, 0, 6, null).get(0)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<ItemVoicePackBinding> holder, final String item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((ItemVoicePackBinding) holder.getViewBinding()).tvName.setText(item);
        ((ItemVoicePackBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoicePackItemBinder.p(item, view);
            }
        });
    }
}
