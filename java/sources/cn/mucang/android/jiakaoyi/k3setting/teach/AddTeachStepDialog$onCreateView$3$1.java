package cn.mucang.android.jiakaoyi.k3setting.teach;

import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.AddTeachStepDialog$onCreateView$3$1", f = "AddTeachStepDialog.kt", l = {93, 103, 103, 103}, m = "invokeSuspend")
final class AddTeachStepDialog$onCreateView$3$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ JLoadingDialog $jLoadingDialog;
    final /* synthetic */ String $remark;
    Object L$0;
    boolean Z$0;
    int label;
    final /* synthetic */ AddTeachStepDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.AddTeachStepDialog$onCreateView$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.AddTeachStepDialog$onCreateView$3$1$1", f = "AddTeachStepDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        int label;
        final /* synthetic */ AddTeachStepDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JLoadingDialog jLoadingDialog, AddTeachStepDialog addTeachStepDialog, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
            this.this$0 = addTeachStepDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$jLoadingDialog, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.$jLoadingDialog.dismiss();
            this.this$0.dismiss();
            this.this$0.u().invoke();
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.AddTeachStepDialog$onCreateView$3$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.AddTeachStepDialog$onCreateView$3$1$2", f = "AddTeachStepDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(JLoadingDialog jLoadingDialog, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$jLoadingDialog, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.$jLoadingDialog.dismiss();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AddTeachStepDialog$onCreateView$3$1(AddTeachStepDialog addTeachStepDialog, String str, JLoadingDialog jLoadingDialog, Continuation<? super AddTeachStepDialog$onCreateView$3$1> continuation) {
        super(2, continuation);
        this.this$0 = addTeachStepDialog;
        this.$remark = str;
        this.$jLoadingDialog = jLoadingDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new AddTeachStepDialog$onCreateView$3$1(this.this$0, this.$remark, this.$jLoadingDialog, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((AddTeachStepDialog$onCreateView$3$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean zM;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        try {
            try {
                if (i != 0) {
                    if (i == 1) {
                        zM = this.Z$0;
                        kotlin.k.b(obj);
                    } else {
                        if (i != 2 && i != 3) {
                            if (i != 4) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            Throwable th = (Throwable) this.L$0;
                            kotlin.k.b(obj);
                            throw th;
                        }
                        kotlin.k.b(obj);
                    }
                    return kotlin.v.f15822a;
                }
                kotlin.k.b(obj);
                zM = new K3TeachApi().m(this.this$0.getF4657a(), this.this$0.f4658d, this.$remark);
                if (zM) {
                    d2 d2VarC = w0.c();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$jLoadingDialog, this.this$0, null);
                    this.Z$0 = zM;
                    this.label = 1;
                    if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                        return objD;
                    }
                }
                cn.mucang.android.core.utils.u.h(zM ? "添加成功" : "添加失败");
                d2 d2VarC2 = w0.c();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$jLoadingDialog, null);
                this.label = 2;
                if (kotlinx.coroutines.f.c(d2VarC2, anonymousClass2, this) == objD) {
                    return objD;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                d2 d2VarC3 = w0.c();
                AnonymousClass2 anonymousClass3 = new AnonymousClass2(this.$jLoadingDialog, null);
                this.label = 3;
                if (kotlinx.coroutines.f.c(d2VarC3, anonymousClass3, this) == objD) {
                    return objD;
                }
            }
            return kotlin.v.f15822a;
        } catch (Throwable th2) {
            d2 d2VarC4 = w0.c();
            AnonymousClass2 anonymousClass4 = new AnonymousClass2(this.$jLoadingDialog, null);
            this.L$0 = th2;
            this.label = 4;
            if (kotlinx.coroutines.f.c(d2VarC4, anonymousClass4, this) == objD) {
                return objD;
            }
            throw th2;
        }
    }
}
