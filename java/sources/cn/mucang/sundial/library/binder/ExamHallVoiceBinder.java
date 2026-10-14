package cn.mucang.sundial.library.binder;

import android.view.View;
import android.widget.TextView;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.ExamHallResEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.databinding.TtProjectVoiceItemBinding;
import cn.mucang.sundial.library.entity.ExamHallVoiceItem;
import cn.mucang.sundial.library.widget.ViewBindingBinder;
import cn.mucang.sundial.library.widget.ViewBindingHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\b\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;", "Lcn/mucang/sundial/library/widget/ViewBindingBinder;", "Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;", "Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;", "Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "holder", "item", "Lkotlin/v;", "onBindViewHolder", "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;)V", "", "lastClickTime", "J", "getLastClickTime", "()J", "setLastClickTime", "(J)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ExamHallVoiceBinder extends ViewBindingBinder<ExamHallVoiceItem, TtProjectVoiceItemBinding> {
    private long lastClickTime;

    public final long getLastClickTime() {
        return this.lastClickTime;
    }

    public final void setLastClickTime(long j) {
        this.lastClickTime = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    public void onBindViewHolder(ViewBindingHolder<TtProjectVoiceItemBinding> holder, final ExamHallVoiceItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        TextView textView = ((TtProjectVoiceItemBinding) holder.getViewBinding()).name;
        r.d(textView, "holder.viewBinding.name");
        textView.setText(item.getName());
        ((TtProjectVoiceItemBinding) holder.getViewBinding()).icon.setImageResource(item.getId());
        ((TtProjectVoiceItemBinding) holder.getViewBinding()).llLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.binder.ExamHallVoiceBinder.onBindViewHolder.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (System.currentTimeMillis() - ExamHallVoiceBinder.this.getLastClickTime() > 1000) {
                    ExamHallVoiceBinder.this.setLastClickTime(System.currentTimeMillis());
                    LiveBus.INSTANCE.post(new ExamHallResEvent(item.getVoiceName()));
                    SundialLog.normal("点击考试语音：" + item.getName());
                }
            }
        });
    }
}
