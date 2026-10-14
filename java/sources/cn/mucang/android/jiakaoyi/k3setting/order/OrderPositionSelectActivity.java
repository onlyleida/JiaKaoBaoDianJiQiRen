package cn.mucang.android.jiakaoyi.k3setting.order;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.k3setting.databinding.ActivityOrderPositionSelectBinding;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightOrderItemPlayPositionBinding;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\b\tB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;", "()V", "getStatName", "", "init", "", "Companion", "PositionItemBinder", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OrderPositionSelectActivity extends BaseViewBindingActivity<ActivityOrderPositionSelectBinding> {

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u001e\u0010\r\u001a\u00020\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$PositionItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;", "position", "itemSelectCallback", "Lkotlin/Function1;", "", "(ILkotlin/jvm/functions/Function1;)V", "getItemSelectCallback", "()Lkotlin/jvm/functions/Function1;", "getPosition", "()I", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends ViewBindingBinder<Integer, LightOrderItemPlayPositionBinding> {
        private final int b;
        private final Function1<Integer, kotlin.v> c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(int i, Function1<? super Integer, kotlin.v> itemSelectCallback) {
            kotlin.jvm.internal.r.e(itemSelectCallback, "itemSelectCallback");
            this.b = i;
            this.c = itemSelectCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(a this$0, int i, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.n().invoke(Integer.valueOf(i));
        }

        @Override // com.drakeet.multitype.c
        public /* bridge */ /* synthetic */ void c(RecyclerView.c0 c0Var, Object obj) {
            p((ViewBindingHolder) c0Var, ((Number) obj).intValue());
        }

        public final Function1<Integer, kotlin.v> n() {
            return this.c;
        }

        public void p(ViewBindingHolder<LightOrderItemPlayPositionBinding> holder, int i) {
            kotlin.jvm.internal.r.e(holder, "holder");
            final int adapterPosition = holder.getAdapterPosition();
            if (i == 0) {
                ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).tvPlayPosition.setText("随机播放");
            } else if (i >= 20) {
                ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).tvPlayPosition.setText("最后一条");
            } else {
                TextView textView = ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).tvPlayPosition;
                StringBuilder sb = new StringBuilder();
                sb.append((char) 31532);
                sb.append(adapterPosition);
                sb.append((char) 26465);
                textView.setText(sb.toString());
            }
            ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).checkBox.setEnabled(false);
            ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).checkBox.setChecked(adapterPosition == this.b);
            ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.p1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OrderPositionSelectActivity.a.q(this.f4455a, adapterPosition, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(OrderPositionSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "随机播报序号";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.q1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderPositionSelectActivity.j(this.f4458a, view);
            }
        });
        g().titleLayout.titleTv.setText("随机播报序号");
        int i = 0;
        int intExtra = getIntent().getIntExtra("count", 0);
        int intExtra2 = getIntent().getIntExtra("position", -1);
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(Integer.class, new a(intExtra2, new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.OrderPositionSelectActivity$init$adapter$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Integer num) {
                invoke(num.intValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(int i2) {
                Intent intent = new Intent();
                intent.putExtra("key_choose_result", i2);
                this.this$0.setResult(-1, intent);
                this.this$0.finish();
            }
        }));
        ArrayList arrayList = new ArrayList();
        if (intExtra >= 0) {
            while (true) {
                int i2 = i + 1;
                arrayList.add(Integer.valueOf(i));
                if (i == intExtra) {
                    break;
                } else {
                    i = i2;
                }
            }
        }
        fVar.i(arrayList);
        g().recyclerView.addItemDecoration(new androidx.recyclerview.widget.d(this, 1));
        g().recyclerView.setAdapter(fVar);
    }
}
