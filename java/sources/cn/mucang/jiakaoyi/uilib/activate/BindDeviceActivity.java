package cn.mucang.jiakaoyi.uilib.activate;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.x;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.signal.ai.AIOtaMsgResult;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PasswordDialog;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import cn.mucang.jiakaoyi.uilib.utils.MainPageUtils;
import com.mobile.auth.gatewayauth.Constant;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityBindDeviceBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\u0012\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\b\u0010\u0015\u001a\u00020\u000fH\u0014J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\rH\u0002J\b\u0010\u0018\u001a\u00020\u000fH\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "rollCheckActiveStateTask", "cn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$rollCheckActiveStateTask$1", "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$rollCheckActiveStateTask$1;", Constant.START_TIME, "", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;", "viewModel", "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;", "getStatName", "", "initViewModel", "", "initViews", "loadBindInfo", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "showError", "error", "startRollTask", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BindDeviceActivity extends BaseActivity {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f9181e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f9182a;
    private ActivityBindDeviceBinding b;
    private BindDeviceViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f9183d = new c();

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$Companion;", "", "()V", "BIND_DEVICE_URL", "", "ROLL_TIME", "", "TIME_OUT", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            Intent intent = new Intent(context, (Class<?>) BindDeviceActivity.class);
            intent.setFlags(268468224);
            context.startActivity(intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9184a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9184a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$rollCheckActiveStateTask$1", "Ljava/lang/Runnable;", "run", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BindDeviceActivity.this.f9182a == 0) {
                BindDeviceActivity.this.f9182a = SystemClock.elapsedRealtime();
            }
            if (SystemClock.elapsedRealtime() - BindDeviceActivity.this.f9182a > 600000) {
                BindDeviceActivity.this.A("二维码过期，请重试");
                return;
            }
            BindDeviceViewModel bindDeviceViewModel = BindDeviceActivity.this.c;
            if (bindDeviceViewModel == null) {
                r.u("viewModel");
                throw null;
            }
            bindDeviceViewModel.l();
            u.d(this, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(String str) {
        ActivityBindDeviceBinding activityBindDeviceBinding = this.b;
        if (activityBindDeviceBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        ((TextView) activityBindDeviceBinding.stateLayout.getErrorView().findViewById(R.id.msg)).setText(str);
        ActivityBindDeviceBinding activityBindDeviceBinding2 = this.b;
        if (activityBindDeviceBinding2 != null) {
            activityBindDeviceBinding2.stateLayout.e();
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        this.f9182a = 0L;
        u.e(this.f9183d);
        u.d(this.f9183d, 1000L);
    }

    private final void initViewModel() {
        j0 j0VarA = new m0(this).a(BindDeviceViewModel.class);
        r.d(j0VarA, "ViewModelProvider(this).…iceViewModel::class.java)");
        BindDeviceViewModel bindDeviceViewModel = (BindDeviceViewModel) j0VarA;
        this.c = bindDeviceViewModel;
        if (bindDeviceViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        bindDeviceViewModel.b().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.activate.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                BindDeviceActivity.m(this.f9188a, (LoadingState) obj);
            }
        });
        BindDeviceViewModel bindDeviceViewModel2 = this.c;
        if (bindDeviceViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        bindDeviceViewModel2.i().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.activate.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                BindDeviceActivity.n(this.f9191a, (BindDeviceInfo) obj);
            }
        });
        BindDeviceViewModel bindDeviceViewModel3 = this.c;
        if (bindDeviceViewModel3 != null) {
            bindDeviceViewModel3.j().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.activate.f
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    BindDeviceActivity.o(this.f9192a, (Integer) obj);
                }
            });
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(BindDeviceActivity this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9184a[loadingState.ordinal()];
        if (i == 1) {
            ActivityBindDeviceBinding activityBindDeviceBinding = this$0.b;
            if (activityBindDeviceBinding != null) {
                activityBindDeviceBinding.stateLayout.f();
                return;
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
        if (i == 2) {
            if (x.e()) {
                this$0.A(loadingState.getMsg());
                return;
            } else {
                this$0.A("网络异常，请重试");
                return;
            }
        }
        if (i != 3) {
            return;
        }
        ActivityBindDeviceBinding activityBindDeviceBinding2 = this$0.b;
        if (activityBindDeviceBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        activityBindDeviceBinding2.stateLayout.c();
        this$0.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(BindDeviceActivity this$0, BindDeviceInfo bindDeviceInfo) {
        r.e(this$0, "this$0");
        String data = bindDeviceInfo.getData();
        List listP0 = data == null ? null : StringsKt__StringsKt.p0(data, new String[]{","}, false, 0, 6, null);
        byte[] bArrDecode = Base64.decode(listP0 == null ? null : (String) listP0.get(1), 0);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        ActivityBindDeviceBinding activityBindDeviceBinding = this$0.b;
        if (activityBindDeviceBinding != null) {
            activityBindDeviceBinding.iconQr.setImageBitmap(bitmapDecodeByteArray);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(final BindDeviceActivity this$0, Integer num) {
        r.e(this$0, "this$0");
        if (num != null && num.intValue() == 1) {
            CarSelectActivity.l.b(this$0);
            this$0.finish();
        } else if (num != null && num.intValue() == 2) {
            SundialClient.f9111a.x(this$0, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViewModel$3$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainPageUtils.a(this.this$0);
                    this.this$0.finish();
                }
            });
        } else {
            this$0.finish();
        }
    }

    private final void p() {
        ActivityBindDeviceBinding activityBindDeviceBinding = this.b;
        if (activityBindDeviceBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        activityBindDeviceBinding.titleLayout.titleTv.setText("设备绑定");
        ActivityBindDeviceBinding activityBindDeviceBinding2 = this.b;
        if (activityBindDeviceBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        activityBindDeviceBinding2.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.activate.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindDeviceActivity.q(this.f9189a, view);
            }
        });
        ActivityBindDeviceBinding activityBindDeviceBinding3 = this.b;
        if (activityBindDeviceBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        activityBindDeviceBinding3.titleLayout.titleTv.setOnClickListener(new MultiClickListener(0, 0L, new Function1<View, v>() { // from class: cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(View view) {
                invoke2(view);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                r.e(it, "it");
                Context context = it.getContext();
                r.d(context, "it.context");
                PasswordDialog passwordDialog = new PasswordDialog(context, PasswordDialog.PasswordType.Egg);
                final BindDeviceActivity bindDeviceActivity = this.this$0;
                passwordDialog.i(new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2.1

                    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2$1$1, reason: invalid class name and collision with other inner class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
                    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2$1$1", f = "BindDeviceActivity.kt", l = {162, AIOtaMsgResult.Success}, m = "invokeSuspend")
                    static final class C01551 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
                        final /* synthetic */ cn.mucang.android.account.ui.a $loadingDialog;
                        int label;

                        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2$1$1$1, reason: invalid class name and collision with other inner class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
                        @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2$1$1$1", f = "BindDeviceActivity.kt", l = {}, m = "invokeSuspend")
                        static final class C01561 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
                            final /* synthetic */ boolean $isBindDevice;
                            final /* synthetic */ cn.mucang.android.account.ui.a $loadingDialog;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C01561(boolean z, cn.mucang.android.account.ui.a aVar, Continuation<? super C01561> continuation) {
                                super(2, continuation);
                                this.$isBindDevice = z;
                                this.$loadingDialog = aVar;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                                return new C01561(this.$isBindDevice, this.$loadingDialog, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                                return ((C01561) create(i0Var, continuation)).invokeSuspend(v.f15822a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) throws Throwable {
                                kotlin.coroutines.intrinsics.b.d();
                                if (this.label != 0) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                k.b(obj);
                                if (!this.$isBindDevice) {
                                    u.h("绑定失败,请重试");
                                }
                                this.$loadingDialog.dismiss();
                                return v.f15822a;
                            }
                        }

                        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2$1$1$2, reason: invalid class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
                        @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2$1$1$2", f = "BindDeviceActivity.kt", l = {}, m = "invokeSuspend")
                        static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
                            final /* synthetic */ cn.mucang.android.account.ui.a $loadingDialog;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            AnonymousClass2(cn.mucang.android.account.ui.a aVar, Continuation<? super AnonymousClass2> continuation) {
                                super(2, continuation);
                                this.$loadingDialog = aVar;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                                return new AnonymousClass2(this.$loadingDialog, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                                return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) throws Throwable {
                                kotlin.coroutines.intrinsics.b.d();
                                if (this.label != 0) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                k.b(obj);
                                this.$loadingDialog.dismiss();
                                return v.f15822a;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C01551(cn.mucang.android.account.ui.a aVar, Continuation<? super C01551> continuation) {
                            super(2, continuation);
                            this.$loadingDialog = aVar;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                            return new C01551(this.$loadingDialog, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                            return ((C01551) create(i0Var, continuation)).invokeSuspend(v.f15822a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) throws Throwable {
                            Object objD = kotlin.coroutines.intrinsics.b.d();
                            int i = this.label;
                            try {
                                if (i == 0) {
                                    k.b(obj);
                                    boolean zM = new ActivateApi().m();
                                    d2 d2VarC = w0.c();
                                    C01561 c01561 = new C01561(zM, this.$loadingDialog, null);
                                    this.label = 1;
                                    if (kotlinx.coroutines.f.c(d2VarC, c01561, this) == objD) {
                                        return objD;
                                    }
                                } else {
                                    if (i != 1) {
                                        if (i != 2) {
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                        k.b(obj);
                                        u.h("绑定失败,请重试");
                                        return v.f15822a;
                                    }
                                    k.b(obj);
                                }
                            } catch (Exception unused) {
                                d2 d2VarC2 = w0.c();
                                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$loadingDialog, null);
                                this.label = 2;
                                if (kotlinx.coroutines.f.c(d2VarC2, anonymousClass2, this) == objD) {
                                    return objD;
                                }
                            }
                            return v.f15822a;
                        }
                    }

                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        cn.mucang.android.account.ui.a aVar = new cn.mucang.android.account.ui.a(bindDeviceActivity);
                        aVar.b("绑定中..");
                        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new C01551(aVar, null), 3, null);
                    }
                });
                passwordDialog.show();
            }
        }, 3, null));
        ActivityBindDeviceBinding activityBindDeviceBinding4 = this.b;
        if (activityBindDeviceBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        activityBindDeviceBinding4.refresh.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.activate.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindDeviceActivity.r(this.f9187a, view);
            }
        });
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_bind_error, (ViewGroup) null);
        viewInflate.findViewById(R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.activate.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BindDeviceActivity.s(this.f9190a, view);
            }
        });
        ActivityBindDeviceBinding activityBindDeviceBinding5 = this.b;
        if (activityBindDeviceBinding5 != null) {
            activityBindDeviceBinding5.stateLayout.setErrorView(viewInflate);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(BindDeviceActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(BindDeviceActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(BindDeviceActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.z();
    }

    private final void z() {
        String stringExtra = getIntent().getStringExtra("bind_device_url");
        if (!n0.g(stringExtra)) {
            BindDeviceViewModel bindDeviceViewModel = this.c;
            if (bindDeviceViewModel != null) {
                bindDeviceViewModel.k();
                return;
            } else {
                r.u("viewModel");
                throw null;
            }
        }
        ActivityBindDeviceBinding activityBindDeviceBinding = this.b;
        if (activityBindDeviceBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        activityBindDeviceBinding.titleLayout.titleTv.setText("特殊设备绑定");
        ActivityBindDeviceBinding activityBindDeviceBinding2 = this.b;
        if (activityBindDeviceBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        activityBindDeviceBinding2.tip.setText("请扫码进行激活");
        ActivityBindDeviceBinding activityBindDeviceBinding3 = this.b;
        if (activityBindDeviceBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        activityBindDeviceBinding3.refresh.setVisibility(8);
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new BindDeviceActivity$loadBindInfo$1(stringExtra, this, null), 3, null);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "绑定设备号";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityBindDeviceBinding activityBindDeviceBindingInflate = ActivityBindDeviceBinding.inflate(getLayoutInflater());
        r.d(activityBindDeviceBindingInflate, "inflate(layoutInflater)");
        this.b = activityBindDeviceBindingInflate;
        if (activityBindDeviceBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(activityBindDeviceBindingInflate.getRoot());
        p();
        initViewModel();
        z();
        ExamSiteUtil.f9582a.a();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        u.e(this.f9183d);
    }
}
