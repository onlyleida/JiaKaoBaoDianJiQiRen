package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogNextLevelBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemNextLevelBinding;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import com.alibaba.fastjson.asm.Opcodes;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0015R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "param", "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;)V", "mainLaunch", "Lkotlinx/coroutines/Job;", "time", "", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "ItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NextLevelDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LevelDialogParam f7246a;
    private DialogNextLevelBinding b;
    private t1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7247d;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog$ItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelItemStatus;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNextLevelBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<LevelItemStatus, ItemNextLevelBinding> {
        public a(NextLevelDialog this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemNextLevelBinding> holder, LevelItemStatus item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemNextLevelBinding) holder.getViewBinding()).nameTv.setText(item.getF7277a());
            ((ItemNextLevelBinding) holder.getViewBinding()).standardTv.setText(item.getB());
            int c = item.getC();
            if (c == 1) {
                ((ItemNextLevelBinding) holder.getViewBinding()).statusTv.setText(k0.a(R.string.teachbase_training));
                ((ItemNextLevelBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#008AFF"));
            } else if (c == 2) {
                ((ItemNextLevelBinding) holder.getViewBinding()).statusTv.setText(k0.a(R.string.teachbase_completed));
                ((ItemNextLevelBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#02CCB4"));
            } else if (c != 3) {
                ((ItemNextLevelBinding) holder.getViewBinding()).statusTv.setText(k0.a(R.string.teachbase_wait_train));
                ((ItemNextLevelBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#ABB5C1"));
            } else {
                ((ItemNextLevelBinding) holder.getViewBinding()).statusTv.setText(k0.a(R.string.teachbase_recommend_train3));
                ((ItemNextLevelBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#FF4D4D"));
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6", f = "NextLevelDialog.kt", l = {Opcodes.IF_ICMPGT}, m = "invokeSuspend")
    static final class AnonymousClass6 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$1", f = "NextLevelDialog.kt", l = {96, 97}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super Integer>, Continuation<? super v>, Object> {
            int I$0;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ NextLevelDialog this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(NextLevelDialog nextLevelDialog, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = nextLevelDialog;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Continuation<? super v> continuation) {
                return ((AnonymousClass1) create(dVar, continuation)).invokeSuspend(v.f15822a);
            }

            /* JADX WARN: Code duplicated, block: B:19:0x0060 A[RETURN] */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
            
                if (1 > r1) goto L21;
             */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005e -> B:20:0x0061). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Throwable {
                /*
                    r7 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
                    int r1 = r7.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L2e
                    if (r1 == r3) goto L22
                    if (r1 != r2) goto L1a
                    int r1 = r7.I$0
                    java.lang.Object r4 = r7.L$0
                    kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) r4
                    kotlin.k.b(r8)
                    r8 = r4
                    r4 = r7
                    goto L61
                L1a:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r8.<init>(r0)
                    throw r8
                L22:
                    int r1 = r7.I$0
                    java.lang.Object r4 = r7.L$0
                    kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) r4
                    kotlin.k.b(r8)
                    r8 = r4
                    r4 = r7
                    goto L52
                L2e:
                    kotlin.k.b(r8)
                    java.lang.Object r8 = r7.L$0
                    kotlinx.coroutines.flow.d r8 = (kotlinx.coroutines.flow.d) r8
                    cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog r1 = r7.this$0
                    int r1 = cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog.b(r1)
                    if (r3 > r1) goto L63
                    r4 = r7
                L3e:
                    int r5 = r1 + (-1)
                    java.lang.Integer r1 = kotlin.coroutines.jvm.internal.a.d(r1)
                    r4.L$0 = r8
                    r4.I$0 = r5
                    r4.label = r3
                    java.lang.Object r1 = r8.emit(r1, r4)
                    if (r1 != r0) goto L51
                    return r0
                L51:
                    r1 = r5
                L52:
                    r5 = 1000(0x3e8, double:4.94E-321)
                    r4.L$0 = r8
                    r4.I$0 = r1
                    r4.label = r2
                    java.lang.Object r5 = kotlinx.coroutines.s0.a(r5, r4)
                    if (r5 != r0) goto L61
                    return r0
                L61:
                    if (r3 <= r1) goto L3e
                L63:
                    kotlin.v r8 = kotlin.v.f15822a
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog.AnonymousClass6.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "cause", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$2", f = "NextLevelDialog.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.d<? super Integer>, Throwable, Continuation<? super v>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ NextLevelDialog this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(NextLevelDialog nextLevelDialog, Continuation<? super AnonymousClass2> continuation) {
                super(3, continuation);
                this.this$0 = nextLevelDialog;
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Throwable th, Continuation<? super v> continuation) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
                anonymousClass2.L$0 = th;
                return anonymousClass2.invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                if (((Throwable) this.L$0) == null) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("导训弹窗倒计时结束");
                    DialogNextLevelBinding dialogNextLevelBinding = this.this$0.b;
                    if (dialogNextLevelBinding == null) {
                        kotlin.jvm.internal.r.u("viewBinding");
                        throw null;
                    }
                    dialogNextLevelBinding.btnTv.performClick();
                }
                return v.f15822a;
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$a */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class a implements kotlinx.coroutines.flow.d<Integer> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ NextLevelDialog f7248a;

            public a(NextLevelDialog nextLevelDialog) {
                this.f7248a = nextLevelDialog;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(Integer num, Continuation continuation) {
                int iIntValue = num.intValue();
                DialogNextLevelBinding dialogNextLevelBinding = this.f7248a.b;
                if (dialogNextLevelBinding == null) {
                    kotlin.jvm.internal.r.u("viewBinding");
                    throw null;
                }
                dialogNextLevelBinding.btnTv.setText(this.f7248a.f7246a.getF7271d() + '(' + iIntValue + "s)");
                return v.f15822a;
            }
        }

        AnonymousClass6(Continuation<? super AnonymousClass6> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return NextLevelDialog.this.new AnonymousClass6(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass6) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                kotlinx.coroutines.flow.c cVarX = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.t(new AnonymousClass1(NextLevelDialog.this, null)), new AnonymousClass2(NextLevelDialog.this, null));
                a aVar = new a(NextLevelDialog.this);
                this.label = 1;
                if (cVarX.d(aVar, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NextLevelDialog(Context context, LevelDialogParam param) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(param, "param");
        this.f7246a = param;
        this.f7247d = 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(NextLevelDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.log.f.o("关卡-点击开始训练，" + this$0.f7246a.getF7272e() + (char) 65292 + ((Object) this$0.f7246a.getF7273f()));
        if (MucangConfig.i() instanceof UnityMainActivity) {
            if (n0.g(this$0.f7246a.getF7273f())) {
                f.a.a.a.activity.h.e(this$0.f7246a.getF7273f());
            }
            f.a.a.a.activity.h.e(this$0.f7246a.getF7272e());
        }
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(View view) {
        UserLevelManager.C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(NextLevelDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(NextLevelDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        f.a.a.a.activity.h.e(this$0.f7246a.getF7272e());
        DialogExtensionKt.b(this$0);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("导训弹窗消失：", this));
        t1 t1Var = this.c;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        DialogNextLevelBinding dialogNextLevelBindingInflate = DialogNextLevelBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogNextLevelBindingInflate, "inflate(layoutInflater)");
        this.b = dialogNextLevelBindingInflate;
        if (dialogNextLevelBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogNextLevelBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1200.0f) / 1920.0f), -2);
        }
        DialogNextLevelBinding dialogNextLevelBinding = this.b;
        if (dialogNextLevelBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogNextLevelBinding.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        DialogNextLevelBinding dialogNextLevelBinding2 = this.b;
        if (dialogNextLevelBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        RecyclerView recyclerView = dialogNextLevelBinding2.recyclerView;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(LevelItemStatus.class, new a(this));
        fVar.i(this.f7246a.e());
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        DialogNextLevelBinding dialogNextLevelBinding3 = this.b;
        if (dialogNextLevelBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogNextLevelBinding3.titleTv.setText(this.f7246a.getF7270a());
        DialogNextLevelBinding dialogNextLevelBinding4 = this.b;
        if (dialogNextLevelBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogNextLevelBinding4.descTv.setText(this.f7246a.getB());
        DialogNextLevelBinding dialogNextLevelBinding5 = this.b;
        if (dialogNextLevelBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        ImageView imageView = dialogNextLevelBinding5.closeIv;
        kotlin.jvm.internal.r.d(imageView, "viewBinding.closeIv");
        imageView.setVisibility(this.f7246a.getF7275h() ? 0 : 8);
        TtsManager.r(this.f7246a.getF7270a() + ',' + this.f7246a.getB(), TtsGrade.Teach);
        DialogNextLevelBinding dialogNextLevelBinding6 = this.b;
        if (dialogNextLevelBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogNextLevelBinding6.recommendTv.setText(this.f7246a.getC());
        DialogNextLevelBinding dialogNextLevelBinding7 = this.b;
        if (dialogNextLevelBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogNextLevelBinding7.btnTv.setText(this.f7246a.getF7271d());
        DialogNextLevelBinding dialogNextLevelBinding8 = this.b;
        if (dialogNextLevelBinding8 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogNextLevelBinding8.btnTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NextLevelDialog.h(this.f7263a, view);
            }
        });
        DialogNextLevelBinding dialogNextLevelBinding9 = this.b;
        if (dialogNextLevelBinding9 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogNextLevelBinding9.guideTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NextLevelDialog.i(view);
            }
        });
        DialogNextLevelBinding dialogNextLevelBinding10 = this.b;
        if (dialogNextLevelBinding10 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogNextLevelBinding10.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NextLevelDialog.j(this.f7260a, view);
            }
        });
        if (n0.e(this.f7246a.getC())) {
            DialogNextLevelBinding dialogNextLevelBinding11 = this.b;
            if (dialogNextLevelBinding11 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            TextView textView = dialogNextLevelBinding11.recommendTv;
            kotlin.jvm.internal.r.d(textView, "viewBinding.recommendTv");
            textView.setVisibility(8);
            DialogNextLevelBinding dialogNextLevelBinding12 = this.b;
            if (dialogNextLevelBinding12 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            ImageView imageView2 = dialogNextLevelBinding12.robotIv;
            kotlin.jvm.internal.r.d(imageView2, "viewBinding.robotIv");
            imageView2.setVisibility(8);
            DialogNextLevelBinding dialogNextLevelBinding13 = this.b;
            if (dialogNextLevelBinding13 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogNextLevelBinding13.btnTv.setText(k0.a(R.string.teachbase_i_knew));
            DialogNextLevelBinding dialogNextLevelBinding14 = this.b;
            if (dialogNextLevelBinding14 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogNextLevelBinding14.btnTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NextLevelDialog.k(this.f7262a, view);
                }
            });
        } else {
            this.c = kotlinx.coroutines.g.b(j0.b(), null, null, new AnonymousClass6(null), 3, null);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("导训弹窗展示：" + this + (char) 65292 + this.f7246a.getF7270a() + (char) 65292 + this.f7246a.getC());
    }
}
