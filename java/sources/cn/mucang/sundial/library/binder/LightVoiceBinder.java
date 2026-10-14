package cn.mucang.sundial.library.binder;

import android.view.View;
import android.widget.TextView;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.databinding.TtLightVoiceItemBinding;
import cn.mucang.sundial.library.entity.ProjectVoiceItem;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.widget.ViewBindingBinder;
import cn.mucang.sundial.library.widget.ViewBindingHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\b\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcn/mucang/sundial/library/binder/LightVoiceBinder;", "Lcn/mucang/sundial/library/widget/ViewBindingBinder;", "Lcn/mucang/sundial/library/entity/ProjectVoiceItem;", "Lcn/mucang/sundial/library/databinding/TtLightVoiceItemBinding;", "Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "holder", "item", "Lkotlin/v;", "onBindViewHolder", "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/ProjectVoiceItem;)V", "", "lastClickTime", "J", "getLastClickTime", "()J", "setLastClickTime", "(J)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class LightVoiceBinder extends ViewBindingBinder<ProjectVoiceItem, TtLightVoiceItemBinding> {
    private long lastClickTime;

    public final long getLastClickTime() {
        return this.lastClickTime;
    }

    public final void setLastClickTime(long j) {
        this.lastClickTime = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    public void onBindViewHolder(ViewBindingHolder<TtLightVoiceItemBinding> holder, final ProjectVoiceItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        TextView textView = ((TtLightVoiceItemBinding) holder.getViewBinding()).name;
        r.d(textView, "holder.viewBinding.name");
        textView.setText(item.getName());
        ((TtLightVoiceItemBinding) holder.getViewBinding()).icon.setImageResource(item.getId());
        TextView textView2 = ((TtLightVoiceItemBinding) holder.getViewBinding()).desc;
        r.d(textView2, "holder.viewBinding.desc");
        textView2.setText(item.getVoiceTxt());
        ((TtLightVoiceItemBinding) holder.getViewBinding()).llLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.binder.LightVoiceBinder.onBindViewHolder.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (System.currentTimeMillis() - LightVoiceBinder.this.getLastClickTime() > 800) {
                    LightVoiceBinder.this.setLastClickTime(System.currentTimeMillis());
                    Tts.speak$default(item.getVoiceTxt(), null, 2, null);
                }
                SundialLog.normal("点击灯光语音：" + item.getVoiceTxt());
            }
        });
    }
}
