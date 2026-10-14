package cn.mucang.jiakaoyi.uilib.ui.setting.signal;

import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.m0;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.jiakaoyi.uilib.manager.SignalValueManager;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.binder.SignalReverseBinder;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalReverseItem;
import com.mucang.android.jiakaoyi.uilib.databinding.SignalReverseActivityBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014J\b\u0010\t\u001a\u00020\u0006H\u0002¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "uploadReverseSignals", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalReverseActivity extends BaseActivity {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(SignalReverseActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(SignalReverseActivity this$0, SignalReverseViewModel viewModel, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        cn.mucang.android.account.ui.a aVar = new cn.mucang.android.account.ui.a(this$0);
        aVar.b("恢复默认信号中");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new SignalReverseActivity$onCreate$2$1(aVar, viewModel, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(SignalReverseActivity$onCreate$adapter$1 adapter, List it) {
        kotlin.jvm.internal.r.e(adapter, "$adapter");
        kotlin.jvm.internal.r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        if (SignalValueManager.f9459a.a()) {
            kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new SignalReverseActivity$uploadReverseSignals$1(null), 3, null);
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "信号反转";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [androidx.recyclerview.widget.RecyclerView$Adapter, cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalReverseActivity$onCreate$adapter$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SignalReverseActivityBinding signalReverseActivityBindingInflate = SignalReverseActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(signalReverseActivityBindingInflate, "inflate(layoutInflater)");
        setContentView(signalReverseActivityBindingInflate.getRoot());
        androidx.lifecycle.j0 j0VarA = new m0(this).a(SignalReverseViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…rseViewModel::class.java)");
        final SignalReverseViewModel signalReverseViewModel = (SignalReverseViewModel) j0VarA;
        signalReverseActivityBindingInflate.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalReverseActivity.k(this.f10239a, view);
            }
        });
        signalReverseActivityBindingInflate.titleLayout.titleTv.setText("信号反转");
        if (SignalValueManager.f9459a.a()) {
            signalReverseActivityBindingInflate.titleLayout.actionTv.setVisibility(0);
            signalReverseActivityBindingInflate.titleLayout.actionTv.setText("获取车型默认值");
            signalReverseActivityBindingInflate.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SignalReverseActivity.l(this.f10238a, signalReverseViewModel, view);
                }
            });
        }
        signalReverseActivityBindingInflate.titleLayout.divider.setVisibility(0);
        final ?? r1 = new com.drakeet.multitype.f() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalReverseActivity$onCreate$adapter$1
            {
                super(null, 0, null, 7, null);
                g(SignalReverseItem.class, new SignalReverseBinder(new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalReverseActivity$onCreate$adapter$1.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        signalReverseActivity.n();
                    }
                }));
            }
        };
        signalReverseActivityBindingInflate.recyclerView.setAdapter(r1);
        signalReverseViewModel.a().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.u
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SignalReverseActivity.m(r1, (List) obj);
            }
        });
        signalReverseViewModel.b();
    }
}
