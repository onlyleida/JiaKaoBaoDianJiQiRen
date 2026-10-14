package cn.mucang.android.jiakaoyi.k3setting.order;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.databinding.ActivityOrderPositionSelectBinding;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightOrderItemPlayPositionBinding;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\b\tB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;", "()V", "getStatName", "", "init", "", "Companion", "VoiceCodeItemBinder", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OrderVoiceCodeSelectActivity extends BaseViewBindingActivity<ActivityOrderPositionSelectBinding> {
    public static final a b = new a(null);

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\u0010\u000fJ\u001c\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0012H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$Companion;", "", "()V", "KEY_CHOOSE_CODE", "", "KEY_CHOOSE_RESULT", "KEY_VOICE_CODES", "launch", "", "context", "Landroid/app/Activity;", "voiceCode", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lkotlin/Function1;", "(Landroid/app/Activity;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V", "loadVoiceCodes", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(Function1 listener, int i, int i2, Intent intent) {
            kotlin.jvm.internal.r.e(listener, "$listener");
            if (i2 == -1) {
                listener.invoke(intent.getStringExtra("key_choose_result"));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private final ArrayList<String> d() {
            File fileC = cn.mucang.android.jiakaoyi.framework.tts.i.c.d().c();
            if (fileC == null || !fileC.exists() || !fileC.isDirectory()) {
                return null;
            }
            File[] fileArrListFiles = fileC.listFiles();
            ArrayList<String> arrayList = new ArrayList<>();
            if (fileArrListFiles != null) {
                if (!(fileArrListFiles.length == 0)) {
                    int length = fileArrListFiles.length;
                    int i = 0;
                    while (i < length) {
                        File file = fileArrListFiles[i];
                        i++;
                        if (file != null && file.isFile()) {
                            String name = file.getName();
                            kotlin.jvm.internal.r.d(name, "itemFile.name");
                            List listP0 = StringsKt__StringsKt.p0(name, new String[]{"."}, false, 0, 6, null);
                            if ((!listP0.isEmpty()) && cn.mucang.android.core.utils.n0.g((String) listP0.get(0)) && ((String) listP0.get(0)).length() == 5 && kotlin.text.s.j((String) listP0.get(0)) != null && Integer.parseInt((String) listP0.get(0)) > 10000) {
                                arrayList.add(listP0.get(0));
                            }
                        }
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                arrayList.add(0, "无");
            }
            return arrayList;
        }

        public final void b(Activity context, Integer num, final Function1<? super String, kotlin.v> listener) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(listener, "listener");
            ArrayList<String> arrayListD = d();
            if (arrayListD == null || arrayListD.isEmpty()) {
                cn.mucang.android.core.utils.u.h("本地没有可以选择的灯光语音,请到设置->发音设置中下载语音包");
                return;
            }
            Intent intent = new Intent(context, (Class<?>) OrderVoiceCodeSelectActivity.class);
            if (num != null) {
                num.intValue();
                intent.putExtra("key_choose_code", num.intValue());
            }
            intent.putStringArrayListExtra("key_voice_codes", arrayListD);
            f.a.a.a.j.a.a(context).c(intent, 1001, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.v1
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent2) {
                    OrderVoiceCodeSelectActivity.a.c(listener, i, i2, intent2);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B#\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u001e\u0010\r\u001a\u00020\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$VoiceCodeItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;", "selectCodeName", "itemSelectCallback", "Lkotlin/Function1;", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "getItemSelectCallback", "()Lkotlin/jvm/functions/Function1;", "getSelectCodeName", "()Ljava/lang/String;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends ViewBindingBinder<String, LightOrderItemPlayPositionBinding> {
        private final String b;
        private final Function1<String, kotlin.v> c;

        /* JADX WARN: Multi-variable type inference failed */
        public b(String str, Function1<? super String, kotlin.v> itemSelectCallback) {
            kotlin.jvm.internal.r.e(itemSelectCallback, "itemSelectCallback");
            this.b = str;
            this.c = itemSelectCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(String item, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            if (kotlin.text.s.j(item) == null) {
                TtsManager.r("这不是一个标准的语音扣分码", TtsGrade.GlobalTip);
            } else {
                TtsManager.s("找不到此语音扣分码", TtsGrade.GlobalTip, Integer.parseInt(item));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(b this$0, String item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.n().invoke(item);
        }

        public final Function1<String, kotlin.v> n() {
            return this.c;
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<LightOrderItemPlayPositionBinding> holder, final String item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).tvPlayPosition.setText(item);
            ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).checkBox.setEnabled(false);
            if (item.equals("无")) {
                ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).playCodeTv.setVisibility(8);
            } else {
                ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).playCodeTv.setVisibility(0);
            }
            ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).playCodeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.y1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OrderVoiceCodeSelectActivity.b.r(item, view);
                }
            });
            ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).checkBox.setChecked(kotlin.jvm.internal.r.a(item, this.b));
            ((LightOrderItemPlayPositionBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.x1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OrderVoiceCodeSelectActivity.b.s(this.f4485a, item, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(OrderVoiceCodeSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "选择音频文件码";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.w1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderVoiceCodeSelectActivity.j(this.f4482a, view);
            }
        });
        g().titleLayout.titleTv.setText("选择音频文件码");
        String stringExtra = getIntent().getStringExtra("key_choose_code");
        List<? extends Object> stringArrayListExtra = getIntent().getStringArrayListExtra("key_voice_codes");
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(String.class, new b(stringExtra, new Function1<String, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.OrderVoiceCodeSelectActivity$init$adapter$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(String str) {
                invoke2(str);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                kotlin.jvm.internal.r.e(it, "it");
                Intent intent = new Intent();
                intent.putExtra("key_choose_result", it);
                this.this$0.setResult(-1, intent);
                this.this$0.finish();
            }
        }));
        if (stringArrayListExtra == null) {
            stringArrayListExtra = kotlin.collections.u.j();
        }
        fVar.i(stringArrayListExtra);
        g().recyclerView.addItemDecoration(new androidx.recyclerview.widget.d(this, 1));
        g().recyclerView.setAdapter(fVar);
    }
}
