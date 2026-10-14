package cn.mucang.sundial.library.binder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import cn.mucang.sundial.library.databinding.TtViewInputKeyBinding;
import cn.mucang.sundial.library.entity.InputKeyItem;
import cn.mucang.sundial.library.widget.ViewBindingBinder;
import cn.mucang.sundial.library.widget.ViewBindingHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\u0011\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\b\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/binder/InputKeyBinder;", "Lcn/mucang/sundial/library/widget/ViewBindingBinder;", "Lcn/mucang/sundial/library/entity/InputKeyItem;", "Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;", "Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "holder", "item", "Lkotlin/v;", "onBindViewHolder", "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/InputKeyItem;)V", "Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;", "<init>", "(Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;)V", "KeyListener", "library_release"}, k = 1, mv = {1, 1, 15})
public final class InputKeyBinder extends ViewBindingBinder<InputKeyItem, TtViewInputKeyBinding> {
    private final KeyListener listener;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;", "", "", "key", "Lkotlin/v;", "onClick", "(Ljava/lang/String;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public interface KeyListener {
        void onClick(String key);
    }

    public InputKeyBinder(KeyListener keyListener) {
        this.listener = keyListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    public void onBindViewHolder(ViewBindingHolder<TtViewInputKeyBinding> holder, final InputKeyItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        TtViewInputKeyBinding ttViewInputKeyBinding = (TtViewInputKeyBinding) holder.getViewBinding();
        if (r.a(item.getKeyName(), InputIdCardActivity.DELETE)) {
            TextView textView = ttViewInputKeyBinding.number;
            textView.setText("");
            textView.setVisibility(8);
            ImageView delete = ttViewInputKeyBinding.delete;
            r.d(delete, "delete");
            delete.setVisibility(0);
        } else {
            TextView textView2 = ttViewInputKeyBinding.number;
            textView2.setText(item.getKeyName());
            textView2.setVisibility(0);
            ImageView delete2 = ttViewInputKeyBinding.delete;
            r.d(delete2, "delete");
            delete2.setVisibility(8);
        }
        ttViewInputKeyBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.binder.InputKeyBinder$onBindViewHolder$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputKeyBinder.KeyListener keyListener = this.this$0.listener;
                if (keyListener != null) {
                    keyListener.onClick(item.getKeyName());
                }
            }
        });
    }
}
