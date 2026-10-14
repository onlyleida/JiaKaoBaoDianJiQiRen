package cn.mucang.jiakaoyi.uilib.ui.setting.signal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JListDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.signal.center.config.CarSignal;
import cn.mucang.android.jiakaoyi.signal.center.config.SerialExtension;
import com.mobile.auth.gatewayauth.Constant;
import com.mucang.android.jiakaoyi.uilib.databinding.ExtensionSelectActivityBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.ExtensionSelectItemBinding;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \t2\u00020\u0001:\u0003\t\n\u000bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014¨\u0006\f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "ItemBinder", "ItemModel", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExtensionSelectActivity extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f10201a = new a(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) ExtensionSelectActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0003¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$ItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$ItemModel;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "setName", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    final class b extends ViewBindingBinder<c, ExtensionSelectItemBinding> {
        public b(ExtensionSelectActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(final c item, final ViewBindingHolder holder, final b this$0, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(holder, "$holder");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            SerialExtension serialExtension = SerialExtension.parse(item.getB());
            CarSignal carSignalE = cn.mucang.android.jiakaoyi.signal.center.config.a.h().e(serialExtension);
            ArrayList arrayList = new ArrayList();
            final CarSignal[] carSignalArrValues = CarSignal.values();
            int length = carSignalArrValues.length;
            int i = 0;
            while (i < length) {
                CarSignal carSignal = carSignalArrValues[i];
                final SerialExtension serialExtension2 = serialExtension;
                SerialExtension serialExtension3 = serialExtension;
                JListDialog.c cVar = new JListDialog.c(carSignal.signalName, new JListDialog.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.a
                    @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.JListDialog.b
                    public final void a(int i2) {
                        ExtensionSelectActivity.b.r(serialExtension2, carSignalArrValues, this$0, item, holder, i2);
                    }
                });
                cVar.e(carSignalE == carSignal);
                arrayList.add(cVar);
                i++;
                serialExtension = serialExtension3;
            }
            JListDialog.d dVar = new JListDialog.d();
            dVar.b("选择信号源");
            dVar.a(true);
            JListDialog jListDialog = new JListDialog(((ExtensionSelectItemBinding) holder.getViewBinding()).getRoot().getContext(), dVar, arrayList);
            jListDialog.setCancelable(false);
            jListDialog.setCanceledOnTouchOutside(false);
            jListDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(SerialExtension serialExtension, CarSignal[] carSignalList, b this$0, c item, ViewBindingHolder holder, int i) {
            kotlin.jvm.internal.r.e(carSignalList, "$carSignalList");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(holder, "$holder");
            cn.mucang.android.jiakaoyi.signal.center.config.a.h().a(serialExtension, carSignalList[i]);
            this$0.s(item, holder);
        }

        @SuppressLint({"SetTextI18n"})
        private final void s(c cVar, ViewBindingHolder<ExtensionSelectItemBinding> viewBindingHolder) {
            String str;
            CarSignal carSignalE = cn.mucang.android.jiakaoyi.signal.center.config.a.h().e(SerialExtension.parse(cVar.getB()));
            if (carSignalE == null) {
                ((ExtensionSelectItemBinding) viewBindingHolder.getViewBinding()).tv.setText(cVar.getF10202a());
                return;
            }
            String str2 = carSignalE.signalName;
            kotlin.jvm.internal.r.d(str2, "carSignal.signalName");
            if (StringsKt__StringsKt.G(str2, cVar.getF10202a(), false, 2, null)) {
                str = carSignalE.signalName;
            } else {
                str = cVar.getF10202a() + '(' + ((Object) carSignalE.signalName) + ')';
            }
            ((ExtensionSelectItemBinding) viewBindingHolder.getViewBinding()).tv.setText(str);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<ExtensionSelectItemBinding> holder, final c item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            s(item, holder);
            ((ExtensionSelectItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExtensionSelectActivity.b.q(item, holder, this, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$ItemModel;", "", Constant.PROTOCOL_WEBVIEW_NAME, "", "extensionId", "", "(Ljava/lang/String;I)V", "getExtensionId", "()I", "setExtensionId", "(I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f10202a;
        private int b;

        public c(String name, int i) {
            kotlin.jvm.internal.r.e(name, "name");
            this.f10202a = name;
            this.b = i;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getF10202a() {
            return this.f10202a;
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$onCreate$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends com.drakeet.multitype.f {
        d() {
            super(null, 0, null, 7, null);
            g(c.class, new b(ExtensionSelectActivity.this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ExtensionSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "扩展选择页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ExtensionSelectActivityBinding extensionSelectActivityBindingInflate = ExtensionSelectActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(extensionSelectActivityBindingInflate, "inflate(layoutInflater)");
        setContentView(extensionSelectActivityBindingInflate.getRoot());
        extensionSelectActivityBindingInflate.titleLayout.titleTv.setText("扩展接口管理");
        extensionSelectActivityBindingInflate.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExtensionSelectActivity.h(this.f10219a, view);
            }
        });
        d dVar = new d();
        extensionSelectActivityBindingInflate.recyclerView.setAdapter(dVar);
        dVar.i(BoxSignalManager.f());
        dVar.notifyDataSetChanged();
    }
}
