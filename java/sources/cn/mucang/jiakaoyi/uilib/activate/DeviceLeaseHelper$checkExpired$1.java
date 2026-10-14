package cn.mucang.jiakaoyi.uilib.activate;

import android.app.Activity;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.jiakaoyi.uilib.model.DeviceExpiredInfo;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.activate.DeviceLeaseHelper$checkExpired$1", f = "DeviceLeaseHelper.kt", l = {}, m = "invokeSuspend")
final class DeviceLeaseHelper$checkExpired$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.activate.DeviceLeaseHelper$checkExpired$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.activate.DeviceLeaseHelper$checkExpired$1$1", f = "DeviceLeaseHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ DeviceExpiredInfo $rentExpiredInfo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DeviceExpiredInfo deviceExpiredInfo, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$rentExpiredInfo = deviceExpiredInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
        public static final void m105invokeSuspend$lambda0(View view) {
            Activity activityI = MucangConfig.i();
            if (activityI != null) {
                activityI.finish();
            }
            System.exit(0);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$rentExpiredInfo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            Activity activityI = MucangConfig.i();
            r.d(activityI, "getCurrentActivity()");
            String str = this.$rentExpiredInfo.message;
            if (str == null) {
                str = "";
            }
            new CommonAlertDialog(activityI, new CommonAlertDialog.DialogParams(" 租金缴费提醒", str, "确定", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.activate.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DeviceLeaseHelper$checkExpired$1.AnonymousClass1.m105invokeSuspend$lambda0(view);
                }
            }, null, 16, null)).show();
            return v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.activate.DeviceLeaseHelper$checkExpired$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.activate.DeviceLeaseHelper$checkExpired$1$2", f = "DeviceLeaseHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ DeviceExpiredInfo $rentExpiredInfo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(DeviceExpiredInfo deviceExpiredInfo, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$rentExpiredInfo = deviceExpiredInfo;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$rentExpiredInfo, continuation);
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
            Activity activityI = MucangConfig.i();
            r.d(activityI, "getCurrentActivity()");
            String str = this.$rentExpiredInfo.message;
            if (str == null) {
                str = "";
            }
            new CommonAlertDialog(activityI, new CommonAlertDialog.DialogParams(" 租金缴费提醒", str, "确定", null, null, 24, null)).show();
            return v.f15822a;
        }
    }

    DeviceLeaseHelper$checkExpired$1(Continuation<? super DeviceLeaseHelper$checkExpired$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new DeviceLeaseHelper$checkExpired$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((DeviceLeaseHelper$checkExpired$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            DeviceExpiredInfo deviceExpiredInfoM = new cn.mucang.jiakaoyi.uilib.k.b.a().m();
            if (deviceExpiredInfoM.cooperationMode == 2) {
                if (deviceExpiredInfoM.expired) {
                    kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new AnonymousClass1(deviceExpiredInfoM, null), 3, null);
                } else if (deviceExpiredInfoM.showMsg) {
                    String strG = cn.mucang.android.jiakaoyi.framework.utils.i0.g("keyLeaseDialogTime", "");
                    String strD = p0.d(System.currentTimeMillis());
                    if (!strG.equals(strD)) {
                        kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new AnonymousClass2(deviceExpiredInfoM, null), 3, null);
                        cn.mucang.android.jiakaoyi.framework.utils.i0.m("keyLeaseDialogTime", strD);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("获取租赁到期失败：", t.g(e2)));
        }
        return v.f15822a;
    }
}
