package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityVoiceTestItemBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.a1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/VoiceTestItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoiceTestItemBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "MyClickListener", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VoiceTestItemBinder extends ViewBindingBinder<TtsGrade, ActivityVoiceTestItemBinding> {

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.a1$a */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/VoiceTestItemBinder$MyClickListener;", "Landroid/view/View$OnClickListener;", "ttsGrade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "index", "", "(Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V", "onClick", "", "v", "Landroid/view/View;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TtsGrade f9899a;
        private final int b;

        public a(TtsGrade ttsGrade, int i) {
            kotlin.jvm.internal.r.e(ttsGrade, "ttsGrade");
            this.f9899a = ttsGrade;
            this.b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            TtsManager.r(this.f9899a.getTypeName() + "语音" + this.b + this.b, this.f9899a);
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<ActivityVoiceTestItemBinding> holder, TtsGrade item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((ActivityVoiceTestItemBinding) holder.getViewBinding()).gradeName.setText(item.getTypeName());
        ((ActivityVoiceTestItemBinding) holder.getViewBinding()).voice1.setOnClickListener(new a(item, 1));
        ((ActivityVoiceTestItemBinding) holder.getViewBinding()).voice2.setOnClickListener(new a(item, 2));
        ((ActivityVoiceTestItemBinding) holder.getViewBinding()).voice3.setOnClickListener(new a(item, 3));
        ((ActivityVoiceTestItemBinding) holder.getViewBinding()).voice4.setOnClickListener(new a(item, 4));
        ((ActivityVoiceTestItemBinding) holder.getViewBinding()).voice5.setOnClickListener(new a(item, 5));
    }
}
