package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.k3setting.databinding.K3TeachPointItemBinding;
import cn.mucang.android.jiakaoyi.k3setting.route.RouteApi;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import cn.mucang.jiakaoyi.uilib.model.TeachStepNode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteTeachPointItemBinder$onBindViewHolder$1$1", f = "RouteTeachEditLogic.kt", l = {l.Receive_AutoAssist_Error, 257, 257, 257}, m = "invokeSuspend")
final class RouteTeachPointItemBinder$onBindViewHolder$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ ViewBindingHolder<K3TeachPointItemBinding> $holder;
    final /* synthetic */ TeachStepNode $item;
    final /* synthetic */ JLoadingDialog $jLoadingDialog;
    Object L$0;
    int label;
    final /* synthetic */ RouteTeachPointItemBinder this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteTeachPointItemBinder$onBindViewHolder$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteTeachPointItemBinder$onBindViewHolder$1$1$1", f = "RouteTeachEditLogic.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ ViewBindingHolder<K3TeachPointItemBinding> $holder;
        final /* synthetic */ TeachStepNode $item;
        int label;
        final /* synthetic */ RouteTeachPointItemBinder this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TeachStepNode teachStepNode, RouteTeachPointItemBinder routeTeachPointItemBinder, ViewBindingHolder<K3TeachPointItemBinding> viewBindingHolder, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$item = teachStepNode;
            this.this$0 = routeTeachPointItemBinder;
            this.$holder = viewBindingHolder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$item, this.this$0, this.$holder, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            this.$item.setLatitude(null);
            this.$item.setLongitude(null);
            this.$item.setBearing(null);
            this.this$0.u(this.$item, this.$holder);
            return v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteTeachPointItemBinder$onBindViewHolder$1$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteTeachPointItemBinder$onBindViewHolder$1$1$2", f = "RouteTeachEditLogic.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(JLoadingDialog jLoadingDialog, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$jLoadingDialog, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            this.$jLoadingDialog.dismiss();
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RouteTeachPointItemBinder$onBindViewHolder$1$1(TeachStepNode teachStepNode, RouteTeachPointItemBinder routeTeachPointItemBinder, ViewBindingHolder<K3TeachPointItemBinding> viewBindingHolder, JLoadingDialog jLoadingDialog, Continuation<? super RouteTeachPointItemBinder$onBindViewHolder$1$1> continuation) {
        super(2, continuation);
        this.$item = teachStepNode;
        this.this$0 = routeTeachPointItemBinder;
        this.$holder = viewBindingHolder;
        this.$jLoadingDialog = jLoadingDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RouteTeachPointItemBinder$onBindViewHolder$1$1(this.$item, this.this$0, this.$holder, this.$jLoadingDialog, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RouteTeachPointItemBinder$onBindViewHolder$1$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v7, types: [cn.mucang.android.jiakaoyi.framework.base.dialog.t] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = b.d();
        int i = this.label;
        String str = " uid: ";
        try {
            try {
                if (i != 0) {
                    if (i == 1) {
                        k.b(obj);
                    } else {
                        if (i != 2 && i != 3) {
                            if (i != 4) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            Throwable th = (Throwable) this.L$0;
                            k.b(obj);
                            throw th;
                        }
                        k.b(obj);
                    }
                    return v.f15822a;
                }
                k.b(obj);
                RouteApi routeApi = new RouteApi();
                Long teachId = this.$item.getTeachId();
                r.c(teachId);
                long jLongValue = teachId.longValue();
                String uid = this.$item.getUid();
                r.c(uid);
                if (routeApi.o(jLongValue, uid)) {
                    d2 d2VarC = w0.c();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$item, this.this$0, this.$holder, null);
                    this.label = 1;
                    if (f.c(d2VarC, anonymousClass1, this) == objD) {
                        return objD;
                    }
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("清空教学点Gps失败 teachId: " + this.$item.getTeachId() + " uid: " + ((Object) this.$item.getUid()));
                }
                d2 d2VarC2 = w0.c();
                str = this.$jLoadingDialog;
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(str, null);
                this.label = 2;
                if (f.c(d2VarC2, anonymousClass2, this) == objD) {
                    return objD;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                cn.mucang.android.jiakaoyi.framework.log.f.o("清空教学点Gps接口报错 teachId: " + this.$item.getTeachId() + str + this.$item.getUid() + ' ' + e2.getLocalizedMessage());
                d2 d2VarC3 = w0.c();
                AnonymousClass2 anonymousClass3 = new AnonymousClass2(this.$jLoadingDialog, null);
                this.label = 3;
                if (f.c(d2VarC3, anonymousClass3, this) == objD) {
                    return objD;
                }
            }
            return v.f15822a;
        } catch (Throwable th2) {
            d2 d2VarC4 = w0.c();
            AnonymousClass2 anonymousClass4 = new AnonymousClass2(this.$jLoadingDialog, null);
            this.L$0 = th2;
            this.label = 4;
            if (f.c(d2VarC4, anonymousClass4, this) == objD) {
                return objD;
            }
            throw th2;
        }
    }
}
