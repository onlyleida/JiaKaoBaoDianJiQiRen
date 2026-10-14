package cn.mucang.jiakaoyi.uilib.splash;

import android.app.Activity;
import android.view.View;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.sundial.client.SundialListener;
import cn.mucang.jiakaoyi.uilib.activate.ActivateModel;
import cn.mucang.jiakaoyi.uilib.activate.DialogInfo;
import cn.mucang.jiakaoyi.uilib.api.CacheDeviceApi;
import cn.mucang.jiakaoyi.uilib.model.DeviceSettingInfo;
import cn.mucang.jiakaoyi.uilib.utils.DeviceSettingUtils;
import cn.mucang.jiakaoyi.uilib.utils.DeviceTypeUtils;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.splash.CheckViewModel$startVerify$1", f = "CheckViewModel.kt", l = {81}, m = "invokeSuspend")
final class CheckViewModel$startVerify$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ String $hardwareNumber;
    int label;
    final /* synthetic */ CheckViewModel this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.splash.CheckViewModel$startVerify$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.splash.CheckViewModel$startVerify$1$2", f = "CheckViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ ActivateModel $model;
        int label;
        final /* synthetic */ CheckViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ActivateModel activateModel, CheckViewModel checkViewModel, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$model = activateModel;
            this.this$0 = checkViewModel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
        public static final void m113invokeSuspend$lambda0(ActivateModel activateModel, CheckViewModel checkViewModel, View view) {
            DialogInfo dialog = activateModel.getDialog();
            if (dialog != null && dialog.closeable) {
                if (activateModel.getStatus() == 40) {
                    checkViewModel.k().l(0);
                } else {
                    cn.mucang.android.core.utils.u.h("设备无法使用");
                    MucangConfig.i().finish();
                }
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$model, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String str;
            String str2;
            String str3;
            String str4;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            if (n0.e(this.$model.getDeviceNum()) || (n0.g(this.$model.getDeviceNum()) && this.$model.getStatus() != 10)) {
                if (this.$model.getDialog() != null) {
                    DialogInfo dialog = this.$model.getDialog();
                    String str5 = (dialog == null || (str = dialog.title) == null) ? "提示" : str;
                    DialogInfo dialog2 = this.$model.getDialog();
                    String str6 = (dialog2 == null || (str2 = dialog2.content) == null) ? "" : str2;
                    DialogInfo dialog3 = this.$model.getDialog();
                    String str7 = dialog3 != null && dialog3.closeable ? "确定" : null;
                    final ActivateModel activateModel = this.$model;
                    final CheckViewModel checkViewModel = this.this$0;
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.a
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            CheckViewModel$startVerify$1.AnonymousClass2.m113invokeSuspend$lambda0(activateModel, checkViewModel, view);
                        }
                    };
                    DialogInfo dialog4 = activateModel.getDialog();
                    JCommonDialog.DialogParams dialogParams = new JCommonDialog.DialogParams(str5, str6, null, null, str7, onClickListener, dialog4 == null ? false : dialog4.closeable);
                    Activity activityI = MucangConfig.i();
                    kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
                    new JCommonDialog(activityI, dialogParams).show();
                } else if (this.$model.getStatus() == 40) {
                    this.this$0.k().l(kotlin.coroutines.jvm.internal.a.d(0));
                } else {
                    cn.mucang.android.core.utils.u.h("设备无法使用");
                    MucangConfig.i().finish();
                }
            } else if (this.$model.getDialog() != null) {
                DialogInfo dialog5 = this.$model.getDialog();
                String str8 = (dialog5 == null || (str3 = dialog5.title) == null) ? "提示" : str3;
                DialogInfo dialog6 = this.$model.getDialog();
                String str9 = (dialog6 == null || (str4 = dialog6.content) == null) ? "" : str4;
                final CheckViewModel checkViewModel2 = this.this$0;
                final ActivateModel activateModel2 = this.$model;
                View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CheckViewModel.i(checkViewModel2, activateModel2);
                    }
                };
                DialogInfo dialog7 = activateModel2.getDialog();
                JCommonDialog.DialogParams dialogParams2 = new JCommonDialog.DialogParams(str8, str9, null, null, "确定", onClickListener2, dialog7 == null ? false : dialog7.closeable);
                Activity activityI2 = MucangConfig.i();
                kotlin.jvm.internal.r.d(activityI2, "getCurrentActivity()");
                new JCommonDialog(activityI2, dialogParams2).show();
            } else {
                this.this$0.j(this.$model);
            }
            return kotlin.v.f15822a;
        }
    }

    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$1$1", "Lcn/mucang/jiakaoyi/sundial/client/SundialListener;", "enableSundial", "", "getImei", "", "getTenantId", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements SundialListener {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.sundial.client.SundialListener
        public boolean a() {
            DeviceSettingInfo deviceSettingInfoA = DeviceSettingUtils.f9578a.a();
            if (deviceSettingInfoA == null) {
                return false;
            }
            return deviceSettingInfoA.enableSundialEntrance;
        }

        @Override // cn.mucang.jiakaoyi.sundial.client.SundialListener
        public String b() {
            return "";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckViewModel$startVerify$1(String str, CheckViewModel checkViewModel, Continuation<? super CheckViewModel$startVerify$1> continuation) {
        super(2, continuation);
        this.$hardwareNumber = str;
        this.this$0 = checkViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CheckViewModel$startVerify$1(this.$hardwareNumber, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CheckViewModel$startVerify$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable cause;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        String message = null;
        try {
            if (i == 0) {
                kotlin.k.b(obj);
                DeviceSettingUtils.f9578a.c();
                SundialClient sundialClient = SundialClient.f9111a;
                SundialClient.a aVar = new SundialClient.a();
                aVar.c(true);
                aVar.e(new a());
                kotlin.v vVar = kotlin.v.f15822a;
                sundialClient.u(aVar);
                Thread.sleep(500L);
                if (MucangConfig.v()) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m("检测激活状态：", this.$hardwareNumber));
                }
                this.this$0.l().l("正在查询设备状态...");
                ActivateModel activateModelB = new CacheDeviceApi().b(true);
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("获取设备状态结果：", JSON.toJSON(activateModelB)));
                DeviceTypeUtils.f9579a.a(activateModelB);
                d2 d2VarC = w0.c();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(activateModelB, this.this$0, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(d2VarC, anonymousClass2, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
        } catch (Exception e2) {
            LoadingViewModel.d(this.this$0, false, "查询设备状态失败", 1, null);
            if ((e2 instanceof ApiException) || (e2 instanceof HttpException) || (e2 instanceof InternalException)) {
                StringBuilder sb = new StringBuilder();
                sb.append((Object) e2.getMessage());
                sb.append((char) 65306);
                Throwable cause2 = e2.getCause();
                sb.append((Object) (cause2 == null ? null : cause2.getMessage()));
                sb.append(' ');
                Throwable cause3 = e2.getCause();
                if (cause3 != null && (cause = cause3.getCause()) != null) {
                    message = cause.getMessage();
                }
                sb.append((Object) message);
                cn.mucang.android.core.utils.u.h(sb.toString());
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("查询设备状态：", q0.d(e2)));
        }
        return kotlin.v.f15822a;
    }
}
