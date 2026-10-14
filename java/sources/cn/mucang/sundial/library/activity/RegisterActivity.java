package cn.mucang.sundial.library.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.RegisterResponseEvent;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.binder.RegisterItemBinder;
import cn.mucang.sundial.library.databinding.TtActivityRegisterBinding;
import cn.mucang.sundial.library.entity.RegisterInfoItem;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ToastUtil;
import cn.mucang.sundial.library.viewmodel.RegisterViewModel;
import cn.mucang.sundial.library.widget.ListDividerItemDecoration;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import me.drakeet.multitype.Items;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcn/mucang/sundial/library/activity/RegisterActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "initView", "()V", "", "index", "", "getInputByIndex", "(I)Ljava/lang/String;", "initData", "initViewModel", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;", "viewModel", "Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;", "Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;", "binding$delegate", "Lkotlin/f;", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;", "binding", "Lme/drakeet/multitype/d;", "adapter", "Lme/drakeet/multitype/d;", "Lme/drakeet/multitype/Items;", "items", "Lme/drakeet/multitype/Items;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class RegisterActivity extends BaseActivity {
    private final d adapter;

    /* JADX INFO: renamed from: binding$delegate, reason: from kotlin metadata */
    private final Lazy binding = new ViewBindingLazy(TtActivityRegisterBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.RegisterActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });
    private final Items items;
    private RegisterViewModel viewModel;

    public RegisterActivity() {
        Items items = new Items();
        this.items = items;
        this.adapter = new d(items);
    }

    public static final /* synthetic */ RegisterViewModel access$getViewModel$p(RegisterActivity registerActivity) {
        RegisterViewModel registerViewModel = registerActivity.viewModel;
        if (registerViewModel != null) {
            return registerViewModel;
        }
        r.u("viewModel");
        throw null;
    }

    private final TtActivityRegisterBinding getBinding() {
        return (TtActivityRegisterBinding) this.binding.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getInputByIndex(int index) {
        View childAt;
        EditText editText;
        if (index < 0 || index >= this.items.size() || (childAt = getBinding().listView.getChildAt(index)) == null || (editText = (EditText) childAt.findViewById(R.id.content)) == null) {
            return null;
        }
        String string = editText.getText().toString();
        Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.CharSequence");
        return StringsKt__StringsKt.J0(string).toString();
    }

    private final void initView() {
        TtActivityRegisterBinding binding = getBinding();
        RecyclerView listView = binding.listView;
        r.d(listView, "listView");
        listView.setLayoutManager(new LinearLayoutManager(this));
        this.adapter.f(RegisterInfoItem.class, new RegisterItemBinder());
        RecyclerView listView2 = binding.listView;
        r.d(listView2, "listView");
        listView2.setAdapter(this.adapter);
        binding.listView.addItemDecoration(new ListDividerItemDecoration());
        binding.cancel.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.RegisterActivity$initView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.finish();
            }
        });
        binding.register.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.RegisterActivity$initView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final DeviceInfo deviceInfoE = RegisterActivity.access$getViewModel$p(this.this$0).getDeviceInfoData().e();
                if (deviceInfoE != null) {
                    r.d(deviceInfoE, "viewModel.deviceInfoData…return@setOnClickListener");
                    final String inputByIndex = this.this$0.getInputByIndex(0);
                    final String inputByIndex2 = this.this$0.getInputByIndex(1);
                    if (!(inputByIndex == null || inputByIndex.length() == 0)) {
                        if (!(inputByIndex2 == null || inputByIndex2.length() == 0)) {
                            if (DeviceUtils.hasNetWork()) {
                                this.this$0.showLoadingDialog("");
                                ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.activity.RegisterActivity$initView$$inlined$with$lambda$2.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        deviceInfoE.setCarNo(inputByIndex);
                                        deviceInfoE.setDevicePhone(inputByIndex2);
                                        if (!SundialManager.getInstance().register(deviceInfoE)) {
                                            int i = R.string.tt_voice_register_fail;
                                            u.g(i);
                                            String string = RegisterActivity$initView$$inlined$with$lambda$2.this.this$0.getString(i);
                                            r.d(string, "getString(R.string.tt_voice_register_fail)");
                                            Tts.speak$default(string, null, 2, null);
                                            RegisterActivity$initView$$inlined$with$lambda$2.this.this$0.hideLoadingDialog();
                                        }
                                        RegisterActivity$initView$$inlined$with$lambda$2.this.this$0.getBaseViewModel().m120getBaseInfo();
                                    }
                                });
                                return;
                            } else {
                                String string = this.this$0.getString(R.string.tt_net_error);
                                r.d(string, "getString(R.string.tt_net_error)");
                                Tts.speak$default(string, null, 2, null);
                                return;
                            }
                        }
                    }
                    ToastUtil.INSTANCE.showToastOnce(R.string.tt_please_input_all_field);
                }
            }
        });
        RegisterViewModel registerViewModel = this.viewModel;
        if (registerViewModel != null) {
            registerViewModel.getDeviceInfo();
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initData() {
        super.initData();
        this.items.addAll(kotlin.collections.u.p(new RegisterInfoItem("车牌号", "", 0, 4, null), new RegisterInfoItem("终端手机号", "", 0, 4, null)));
        LiveBus.INSTANCE.with(RegisterResponseEvent.class).q(this, new a0<RegisterResponseEvent>() { // from class: cn.mucang.sundial.library.activity.RegisterActivity.initData.1
            /* JADX WARN: Code duplicated, block: B:10:0x002f  */
            /* JADX WARN: Code duplicated, block: B:7:0x0028  */
            @Override // androidx.lifecycle.a0
            public final void onChanged(RegisterResponseEvent it) {
                String errorMessage;
                RegisterActivity.this.hideLoadingDialog();
                r.d(it, "it");
                if (it.isSuccess()) {
                    SundialManager sundialManager = SundialManager.getInstance();
                    r.d(sundialManager, "SundialManager.getInstance()");
                    if (sundialManager.isRegister()) {
                        errorMessage = RegisterActivity.this.getString(R.string.tt_voice_register_success);
                    } else {
                        errorMessage = it.getErrorMessage();
                        if (errorMessage == null) {
                            errorMessage = RegisterActivity.this.getString(R.string.tt_voice_register_fail);
                            r.d(errorMessage, "getString(R.string.tt_voice_register_fail)");
                        }
                    }
                } else {
                    errorMessage = it.getErrorMessage();
                    if (errorMessage == null) {
                        errorMessage = RegisterActivity.this.getString(R.string.tt_voice_register_fail);
                        r.d(errorMessage, "getString(R.string.tt_voice_register_fail)");
                    }
                }
                r.d(errorMessage, "if (it.isSuccess && Sund…r_fail)\n                }");
                Tts.speak$default(errorMessage, null, 2, null);
                SundialManager sundialManager2 = SundialManager.getInstance();
                r.d(sundialManager2, "SundialManager.getInstance()");
                if (sundialManager2.isRegister()) {
                    RegisterActivity.this.finish();
                }
            }
        });
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initViewModel() {
        super.initViewModel();
        RegisterViewModel registerViewModel = (RegisterViewModel) vm(this, RegisterViewModel.class);
        this.viewModel = registerViewModel;
        if (registerViewModel != null) {
            registerViewModel.getDeviceInfoData().q(this, new a0<DeviceInfo>() { // from class: cn.mucang.sundial.library.activity.RegisterActivity.initViewModel.1
                @Override // androidx.lifecycle.a0
                public final void onChanged(DeviceInfo deviceInfo) {
                    if (deviceInfo != null) {
                        RegisterActivity.this.items.clear();
                        RegisterActivity.this.items.addAll(kotlin.collections.u.p(new RegisterInfoItem("车牌号", deviceInfo.getCarNo(), 0, 4, null), new RegisterInfoItem("终端手机号", deviceInfo.getDevicePhone(), 0, 4, null)));
                        RegisterActivity.this.adapter.notifyDataSetChanged();
                    }
                }
            });
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        initView();
        LinearLayout root = getBinding().getRoot();
        r.d(root, "binding.root");
        return root;
    }
}
