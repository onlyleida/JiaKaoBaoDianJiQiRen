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
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogNextLevelBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemNextLevelBinding;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import com.alibaba.fastjson.asm.Opcodes;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0015R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "param", "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;)V", "mainLaunch", "Lkotlinx/coroutines/Job;", "time", "", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "ItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NextLevelDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f7246a;
    private DialogNextLevelBinding b;
    private t1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7247d;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog$ItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelItemStatus;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNextLevelBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends cn.mucang.android.jiakaoyi.framework.base.f<r, ItemNextLevelBinding> {
        public a(NextLevelDialog r2) {
            kotlin.jvm.internal.r.e(r2, "this$0");
        }

        @Override // com.drakeet.multitype.c
        public /* bridge */ /* synthetic */ void c(RecyclerView.c0 r1, Object r2) {
            n((cn.mucang.android.jiakaoyi.framework.base.h) r1, (r) r2);
        }

        @SuppressLint({"SetTextI18n"})
        public void n(cn.mucang.android.jiakaoyi.framework.base.h<ItemNextLevelBinding> r3, r r4) {
            kotlin.jvm.internal.r.e(r3, "holder");
            kotlin.jvm.internal.r.e(r4, "item");
            ((ItemNextLevelBinding) r3.getViewBinding()).nameTv.setText(r4.a());
            ((ItemNextLevelBinding) r3.getViewBinding()).standardTv.setText(r4.c());
            int r5 = r4.b();
            if (r5 != 1) goto L5;
            ((ItemNextLevelBinding) r3.getViewBinding()).statusTv.setText(k0.a(R.string.teachbase_training));
            ((ItemNextLevelBinding) r3.getViewBinding()).statusTv.setTextColor(Color.parseColor("#008AFF"));
            return;
        L5:
            if (r5 != 2) goto L7;
            ((ItemNextLevelBinding) r3.getViewBinding()).statusTv.setText(k0.a(R.string.teachbase_completed));
            ((ItemNextLevelBinding) r3.getViewBinding()).statusTv.setTextColor(Color.parseColor("#02CCB4"));
            return;
        L7:
            if (r5 == 3) goto L9;
            ((ItemNextLevelBinding) r3.getViewBinding()).statusTv.setText(k0.a(R.string.teachbase_wait_train));
            ((ItemNextLevelBinding) r3.getViewBinding()).statusTv.setTextColor(Color.parseColor("#ABB5C1"));
            return;
        L9:
            ((ItemNextLevelBinding) r3.getViewBinding()).statusTv.setText(k0.a(R.string.teachbase_recommend_train3));
            ((ItemNextLevelBinding) r3.getViewBinding()).statusTv.setTextColor(Color.parseColor("#FF4D4D"));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6", f = "NextLevelDialog.kt", l = {Opcodes.IF_ICMPGT}, m = "invokeSuspend")
    static final class AnonymousClass6 extends SuspendLambda implements kotlin.jvm.b.p<i0, kotlin.coroutines.c<? super v>, Object> {
        int label;
        final /* synthetic */ NextLevelDialog this$0;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$1", f = "NextLevelDialog.kt", l = {96, 97}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.flow.d<? super Integer>, kotlin.coroutines.c<? super v>, Object> {
            int I$0;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ NextLevelDialog this$0;

            AnonymousClass1(NextLevelDialog r1, kotlin.coroutines.c<? super AnonymousClass1> r2) {
                this.this$0 = r1;
                super(2, r2);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final kotlin.coroutines.c<v> create(Object r3, kotlin.coroutines.c<?> r4) {
                AnonymousClass1 r0 = new AnonymousClass1(this.this$0, r4);
                r0.L$0 = r3;
                return r0;
            }

            @Override // kotlin.jvm.b.p
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, kotlin.coroutines.c<? super v> r2) {
                return invoke2(r1, r2);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r1, kotlin.coroutines.c<? super v> r2) {
                return ((AnonymousClass1) create(r1, r2)).invokeSuspend(v.f15822a);
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005e -> B:20:0x0061). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object r8) {
                Object r0 = kotlin.coroutines.intrinsics.a.d();
                int r1 = this.label;
                if (r1 == 0) goto L10;
                if (r1 == 1) goto L9;
                if (r1 != 2) goto L8;
                int r2 = this.I$0;
                kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) this.L$0;
                kotlin.k.b(r8);
                kotlinx.coroutines.flow.d r9 = r4;
                AnonymousClass1 r5 = this;
            L20:
                if (1 > r2) goto L22;
            L13:
                int r6 = r2 - 1;
                Integer r3 = kotlin.coroutines.jvm.internal.a.d(r2);
                r5.L$0 = r9;
                r5.I$0 = r6;
                r5.label = 1;
                if (r9.emit(r3, r5) != r0) goto L16;
                return r0;
            L16:
                r2 = r6;
            L17:
                r5.L$0 = r9;
                r5.I$0 = r2;
                r5.label = 2;
                if (s0.a(1000, r5) != r0) goto L20;
                return r0;
            L22:
                return v.f15822a;
            L8:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            L9:
                r2 = this.I$0;
                kotlinx.coroutines.flow.d r7 = (kotlinx.coroutines.flow.d) this.L$0;
                kotlin.k.b(r8);
                r9 = r7;
                r5 = this;
                goto L17
            L10:
                kotlin.k.b(r8);
                r9 = (kotlinx.coroutines.flow.d) this.L$0;
                r2 = NextLevelDialog.b(this.this$0);
                if (1 > r2) goto L22;
                r5 = this;
                goto L13
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "cause", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$2", f = "NextLevelDialog.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements kotlin.jvm.b.q<kotlinx.coroutines.flow.d<? super Integer>, Throwable, kotlin.coroutines.c<? super v>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ NextLevelDialog this$0;

            AnonymousClass2(NextLevelDialog r1, kotlin.coroutines.c<? super AnonymousClass2> r2) {
                this.this$0 = r1;
                super(3, r2);
            }

            @Override // kotlin.jvm.b.q
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, Throwable r2, kotlin.coroutines.c<? super v> r3) {
                return invoke2(r1, r2, r3);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r2, Throwable r3, kotlin.coroutines.c<? super v> r4) {
                AnonymousClass2 r5 = new AnonymousClass2(this.this$0, r4);
                r5.L$0 = r3;
                return r5.invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object r2) {
                kotlin.coroutines.intrinsics.a.d();
                if (this.label != 0) goto L14;
                kotlin.k.b(r2);
                if (((Throwable) this.L$0) != null) goto L12;
                cn.mucang.android.jiakaoyi.framework.log.f.o("导训弹窗倒计时结束");
                DialogNextLevelBinding r3 = NextLevelDialog.c(this.this$0);
                if (r3 == null) goto L9;
                r3.btnTv.performClick();
                goto L12
            L9:
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            L12:
                return v.f15822a;
            L14:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.NextLevelDialog$onCreate$6$a */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class a implements kotlinx.coroutines.flow.d<Integer> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ NextLevelDialog f7248a;

            public a(NextLevelDialog r1) {
                this.f7248a = r1;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(Integer r3, kotlin.coroutines.c r4) {
                int r5 = r3.intValue();
                DialogNextLevelBinding r6 = NextLevelDialog.c(this.f7248a);
                if (r6 == null) goto L6;
                r6.btnTv.setText(NextLevelDialog.a(this.f7248a).a() + '(' + r5 + "s)");
                return v.f15822a;
            L6:
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }

        AnonymousClass6(NextLevelDialog r1, kotlin.coroutines.c<? super AnonymousClass6> r2) {
            this.this$0 = r1;
            super(2, r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<v> create(Object r2, kotlin.coroutines.c<?> r3) {
            return new AnonymousClass6(this.this$0, r3);
        }

        @Override // kotlin.jvm.b.p
        public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return invoke2(r1, r2);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return ((AnonymousClass6) create(r1, r2)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r6) {
            Object r0 = kotlin.coroutines.intrinsics.a.d();
            int r1 = this.label;
            if (r1 == 0) goto L8;
            if (r1 != 1) goto L7;
            kotlin.k.b(r6);
        L12:
            return v.f15822a;
        L7:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        L8:
            kotlin.k.b(r6);
            kotlinx.coroutines.flow.c r7 = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.t(new AnonymousClass1(this.this$0, null)), new AnonymousClass2(this.this$0, null));
            a r3 = new a(this.this$0);
            this.label = 1;
            if (r7.d(r3, this) != r0) goto L12;
            return r0;
        }
    }

    public NextLevelDialog(Context r2, p r3) {
        kotlin.jvm.internal.r.e(r2, "context");
        kotlin.jvm.internal.r.e(r3, "param");
        super(r2, R.style.jiakaoyi__dialog);
        this.f7246a = r3;
        this.f7247d = 8;
    }

    public static final /* synthetic */ p a(NextLevelDialog r0) {
        return r0.f7246a;
    }

    public static final /* synthetic */ int b(NextLevelDialog r0) {
        return r0.f7247d;
    }

    public static final /* synthetic */ DialogNextLevelBinding c(NextLevelDialog r0) {
        return r0.b;
    }

    public static /* synthetic */ void d(NextLevelDialog r0, View r1) {
        j(r0, r1);
    }

    public static /* synthetic */ void e(View r0) {
        i(r0);
    }

    public static /* synthetic */ void f(NextLevelDialog r0, View r1) {
        k(r0, r1);
    }

    public static /* synthetic */ void g(NextLevelDialog r0, View r1) {
        h(r0, r1);
    }

    private static final void h(NextLevelDialog r1, View r2) {
        kotlin.jvm.internal.r.e(r1, "this$0");
        cn.mucang.android.jiakaoyi.framework.log.f.o("关卡-点击开始训练，" + r1.f7246a.b() + 65292 + r1.f7246a.d());
        if ((MucangConfig.i() instanceof UnityMainActivity) == true) goto L5;
    L8:
        DialogExtensionKt.b(r1);
        return;
    L5:
        if (n0.g(r1.f7246a.d()) == false) goto L7;
        f.a.a.a.i.h.e(r1.f7246a.d());
    L7:
        f.a.a.a.i.h.e(r1.f7246a.b());
        goto L8
    }

    private static final void i(View r0) {
        UserLevelManager.C();
    }

    private static final void j(NextLevelDialog r0, View r1) {
        kotlin.jvm.internal.r.e(r0, "this$0");
        DialogExtensionKt.b(r0);
    }

    private static final void k(NextLevelDialog r0, View r1) {
        kotlin.jvm.internal.r.e(r0, "this$0");
        f.a.a.a.i.h.e(r0.f7246a.b());
        DialogExtensionKt.b(r0);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("导训弹窗消失：", this));
        t1 r0 = this.c;
        if (r0 == null) goto L6;
        t1.a.a(r0, null, 1, null);
    L6:
        super.dismiss();
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle r11) {
        super.onCreate(r11);
        Window r12 = getWindow();
        if (r12 == null) goto L6;
        r12.requestFeature(1);
    L6:
        DialogNextLevelBinding r13 = DialogNextLevelBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(r13, "inflate(layoutInflater)");
        this.b = r13;
        if (r13 == null) goto L78;
        setContentView(r13.getRoot());
        int r14 = 0;
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window r2 = getWindow();
        if (r2 == null) goto L12;
        r2.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1200.0f) / 1920.0f), -2);
    L12:
        DialogNextLevelBinding r3 = this.b;
        if (r3 == null) goto L76;
        r3.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        DialogNextLevelBinding r4 = this.b;
        if (r4 == null) goto L74;
        RecyclerView r5 = r4.recyclerView;
        com.drakeet.multitype.f r9 = new com.drakeet.multitype.f(null, 0, null, 7, null);
        r9.g(r.class, new a(this));
        r9.i(this.f7246a.e());
        v r6 = v.f15822a;
        r5.setAdapter(r9);
        DialogNextLevelBinding r7 = this.b;
        if (r7 == null) goto L72;
        r7.titleTv.setText(this.f7246a.h());
        DialogNextLevelBinding r8 = this.b;
        if (r8 == null) goto L70;
        r8.descTv.setText(this.f7246a.c());
        DialogNextLevelBinding r10 = this.b;
        if (r10 == null) goto L68;
        ImageView r15 = r10.closeIv;
        kotlin.jvm.internal.r.d(r15, "viewBinding.closeIv");
        if (this.f7246a.g() == true) goto L26;
        r14 = 8;
    L26:
        r15.setVisibility(r14);
        cn.mucang.android.jiakaoyi.framework.tts.g.r(this.f7246a.h() + ',' + this.f7246a.c(), TtsGrade.Teach);
        DialogNextLevelBinding r16 = this.b;
        if (r16 == null) goto L66;
        r16.recommendTv.setText(this.f7246a.f());
        DialogNextLevelBinding r17 = this.b;
        if (r17 == null) goto L64;
        r17.btnTv.setText(this.f7246a.a());
        DialogNextLevelBinding r18 = this.b;
        if (r18 == null) goto L62;
        r18.btnTv.setOnClickListener(new h(this));
        DialogNextLevelBinding r19 = this.b;
        if (r19 == null) goto L60;
        r19.guideTv.setOnClickListener(f.f7261a);
        DialogNextLevelBinding r110 = this.b;
        if (r110 == null) goto L58;
        r110.closeIv.setOnClickListener(new e(this));
        if (n0.e(this.f7246a.f()) == false) goto L55;
        DialogNextLevelBinding r111 = this.b;
        if (r111 == null) goto L53;
        TextView r112 = r111.recommendTv;
        kotlin.jvm.internal.r.d(r112, "viewBinding.recommendTv");
        r112.setVisibility(8);
        DialogNextLevelBinding r113 = this.b;
        if (r113 == null) goto L51;
        ImageView r114 = r113.robotIv;
        kotlin.jvm.internal.r.d(r114, "viewBinding.robotIv");
        r114.setVisibility(8);
        DialogNextLevelBinding r115 = this.b;
        if (r115 == null) goto L49;
        r115.btnTv.setText(k0.a(R.string.teachbase_i_knew));
        DialogNextLevelBinding r116 = this.b;
        if (r116 == null) goto L47;
        r116.btnTv.setOnClickListener(new g(this));
    L56:
        cn.mucang.android.jiakaoyi.framework.log.f.o("导训弹窗展示：" + this + 65292 + this.f7246a.h() + 65292 + this.f7246a.f());
        return;
    L47:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L49:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L51:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L53:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L55:
        this.c = kotlinx.coroutines.f.b(j0.b(), null, null, new AnonymousClass6(this, null), 3, null);
        goto L56
    L58:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L60:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L62:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L64:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L66:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L68:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L70:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L72:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L74:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L76:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    L78:
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    }
}
