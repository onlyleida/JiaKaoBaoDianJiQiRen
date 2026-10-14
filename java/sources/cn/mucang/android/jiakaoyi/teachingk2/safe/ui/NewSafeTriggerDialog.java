package cn.mucang.android.jiakaoyi.teachingk2.safe.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogSafeTriggerNewBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutItemUnbrakeBinding;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioStatus;
import cn.mucang.android.jiakaoyi.teachingk2.config.JxConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.JxConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.Safer;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.LockCarManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0012\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!H\u0017R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;", "Landroid/app/Dialog;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "context", "Landroid/content/Context;", "brakeModel", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "getBrakeModel", "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "brakeTime", "", "hasPlayDesc", "", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;", "missDialog", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioStatus;", "tipPlayTime", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "ConditionBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NewSafeTriggerDialog extends Dialog implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BrakeModel f7839a;
    private DialogSafeTriggerNewBinding b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f7841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Dialog f7842f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.drakeet.multitype.f f7843g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<UnBrakeChecker> f7844h;
    private final a0<AudioStatus> i;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$ConditionBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemUnbrakeBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<UnBrakeChecker, LayoutItemUnbrakeBinding> {
        public a(NewSafeTriggerDialog this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<LayoutItemUnbrakeBinding> holder, UnBrakeChecker item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((LayoutItemUnbrakeBinding) holder.getViewBinding()).image.setBackgroundResource(item.a());
            ((LayoutItemUnbrakeBinding) holder.getViewBinding()).text.setText(item.c());
            ((LayoutItemUnbrakeBinding) holder.getViewBinding()).image.setSelected(item.getF7896a());
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$onCreate$2", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "onIntercept", "", "onSpeakEnd", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            NewSafeTriggerDialog.this.c = true;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakBegin() {
            TtsListener.a.c(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            NewSafeTriggerDialog.this.c = true;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakPaused() {
            TtsListener.a.e(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakResumed() {
            TtsListener.a.g(this);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.NewSafeTriggerDialog$onCreate$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.safe.ui.NewSafeTriggerDialog$onCreate$5", f = "NewSafeTriggerDialog.kt", l = {Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "invokeSuspend")
    static final class AnonymousClass5 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        int label;

        AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
        public static final void m78invokeSuspend$lambda0(NewSafeTriggerDialog newSafeTriggerDialog, View view) {
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(newSafeTriggerDialog);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return NewSafeTriggerDialog.this.new AnonymousClass5(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass5) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                this.label = 1;
                if (s0.a(500L, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            Context context = NewSafeTriggerDialog.this.getContext();
            kotlin.jvm.internal.r.d(context, "context");
            String desc = NewSafeTriggerDialog.this.getF7839a().getReason().getDesc();
            String strA = k0.a(R.string.teachbase_handbrake_pull);
            final NewSafeTriggerDialog newSafeTriggerDialog = NewSafeTriggerDialog.this;
            new JCommonDialog(context, new JCommonDialog.DialogParams(desc, "", (String) null, (View.OnClickListener) null, strA, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NewSafeTriggerDialog.AnonymousClass5.m78invokeSuspend$lambda0(newSafeTriggerDialog, view);
                }
            }, false, 12, (kotlin.jvm.internal.o) null)).show();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewSafeTriggerDialog(Context context, BrakeModel brakeModel) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(brakeModel, "brakeModel");
        this.f7839a = brakeModel;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(UnBrakeChecker.class, new a(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f7843g = fVar;
        this.f7844h = new ArrayList();
        this.i = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                NewSafeTriggerDialog.h(this.f7861a, (AudioStatus) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(NewSafeTriggerDialog this$0, AudioStatus audioStatus) {
        String strA;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding = this$0.b;
        if (dialogSafeTriggerNewBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogSafeTriggerNewBinding.callTv;
        int f6175a = audioStatus.getF6175a();
        if (f6175a != 1) {
            strA = f6175a != 2 ? k0.a(R.string.teachbase_call_monitoring_center) : k0.a(R.string.teachbase_hang_up);
        } else {
            strA = k0.a(R.string.teachbase_calling);
        }
        textView.setText(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(View view) {
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        Safer.f(activityI);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(View view) {
        AudioManager.C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(NewSafeTriggerDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.getF7839a().getReason() == BrakeReason.Radar) {
            Context context = this$0.getContext();
            kotlin.jvm.internal.r.d(context, "context");
            ChooseBarrierDialog chooseBarrierDialog = new ChooseBarrierDialog(context, this$0.getF7839a().getExtraDesc());
            this$0.f7842f = chooseBarrierDialog;
            if (chooseBarrierDialog == null) {
                return;
            }
            chooseBarrierDialog.show();
            return;
        }
        Context context2 = this$0.getContext();
        kotlin.jvm.internal.r.d(context2, "context");
        String strA = k0.a(R.string.teachbase_confirm_false_brake);
        String strA2 = k0.a(R.string.teachbase_confirm_false_brake_upload);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teach…nfirm_false_brake_upload)");
        JCommonDialog jCommonDialog = new JCommonDialog(context2, new JCommonDialog.DialogParams(strA, strA2, k0.a(R.string.teachbase_dialog_button_cancel), (View.OnClickListener) null, k0.a(R.string.teachbase_dialog_button_sure), (View.OnClickListener) new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewSafeTriggerDialog.l(view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null));
        this$0.f7842f = jCommonDialog;
        if (jCommonDialog == null) {
            return;
        }
        jCommonDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(View view) {
        BrakeGlobalMonitor.f7792a.l("");
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final BrakeModel getF7839a() {
        return this.f7839a;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        LiveBus.d(AudioStatus.class).m(this.i);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("刹车弹窗消失:", this));
        Dialog dialog = this.f7842f;
        if (dialog != null) {
            DialogExtensionKt.b(dialog);
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBindingInflate = DialogSafeTriggerNewBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogSafeTriggerNewBindingInflate, "inflate(layoutInflater)");
        this.b = dialogSafeTriggerNewBindingInflate;
        if (dialogSafeTriggerNewBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogSafeTriggerNewBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_1060), -2);
        }
        String extraTitle = (this.f7839a.getReason() == BrakeReason.Radar && n0.g(this.f7839a.getExtraTitle())) ? this.f7839a.getExtraTitle() : this.f7839a.getReason().getTitle();
        String desc = this.f7839a.getReason().getDesc();
        String strA = k0.a(R.string.teachbase_vehicle);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_vehicle)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA2 = k0.a(R.string.teachbase_vehicle2);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_vehicle2)");
        String str = String.format(strA2, Arrays.copyOf(new Object[]{this.f7839a.getExtraDesc().src}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        String strZ = kotlin.text.t.z(desc, strA, str, false, 4, null);
        String strZ2 = kotlin.text.t.z(this.f7839a.getReason().getZhDesc(), "车辆", kotlin.jvm.internal.r.m("车辆", this.f7839a.getExtraDesc().zhSrc), false, 4, null);
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding = this.b;
        if (dialogSafeTriggerNewBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSafeTriggerNewBinding.titleTv.setText(extraTitle);
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding2 = this.b;
        if (dialogSafeTriggerNewBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSafeTriggerNewBinding2.descTv.setText(strZ);
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding3 = this.b;
        if (dialogSafeTriggerNewBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        ImageView imageView = dialogSafeTriggerNewBinding3.settingIv;
        kotlin.jvm.internal.r.d(imageView, "viewBinding.settingIv");
        imageView.setVisibility(this.f7839a.getReason() != BrakeReason.RemoteFlame ? 0 : 8);
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding4 = this.b;
        if (dialogSafeTriggerNewBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSafeTriggerNewBinding4.settingIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NewSafeTriggerDialog.i(view);
            }
        });
        this.f7844h.addAll(this.f7839a.createUnBrakeChecker());
        this.f7843g.i(this.f7844h);
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding5 = this.b;
        if (dialogSafeTriggerNewBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSafeTriggerNewBinding5.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding6 = this.b;
        if (dialogSafeTriggerNewBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSafeTriggerNewBinding6.recyclerView.setItemAnimator(null);
        DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding7 = this.b;
        if (dialogSafeTriggerNewBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSafeTriggerNewBinding7.recyclerView.setAdapter(this.f7843g);
        TtsManager.u(strZ, TtsGrade.SpecialVoice, new b());
        cn.mucang.android.jiakaoyi.framework.log.f.d("刹车语音:" + strZ2 + ',' + this);
        if (this.f7839a.getReason().isNeedCall()) {
            DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding8 = this.b;
            if (dialogSafeTriggerNewBinding8 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            TextView textView = dialogSafeTriggerNewBinding8.reportTv;
            kotlin.jvm.internal.r.d(textView, "viewBinding.reportTv");
            textView.setVisibility(8);
            DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding9 = this.b;
            if (dialogSafeTriggerNewBinding9 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogSafeTriggerNewBinding9.callTv.setVisibility(0);
            DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding10 = this.b;
            if (dialogSafeTriggerNewBinding10 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogSafeTriggerNewBinding10.callTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NewSafeTriggerDialog.j(view);
                }
            });
            LiveBus.d(AudioStatus.class).i(this.i);
            LiveBus.d(AudioStatus.class).l(new AudioStatus(AudioManager.s()));
        } else {
            DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding11 = this.b;
            if (dialogSafeTriggerNewBinding11 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogSafeTriggerNewBinding11.callTv.setVisibility(8);
            DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding12 = this.b;
            if (dialogSafeTriggerNewBinding12 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            TextView textView2 = dialogSafeTriggerNewBinding12.reportTv;
            kotlin.jvm.internal.r.d(textView2, "viewBinding.reportTv");
            textView2.setVisibility(JxConfigManager.b(JxConfig.ShowMissBrake) ? 0 : 8);
            DialogSafeTriggerNewBinding dialogSafeTriggerNewBinding13 = this.b;
            if (dialogSafeTriggerNewBinding13 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogSafeTriggerNewBinding13.reportTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NewSafeTriggerDialog.k(this.f7864a, view);
                }
            });
        }
        if (this.f7839a.getShowConfirmDialog()) {
            kotlinx.coroutines.g.b(j0.b(), null, null, new AnonymousClass5(null), 3, null);
        } else {
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    @SuppressLint({"NotifyDataSetChanged"})
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        boolean z;
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (signalGetter.d().k()) {
            int i = 0;
            for (Object obj : this.f7844h) {
                int i2 = i + 1;
                if (i < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                if (((UnBrakeChecker) obj).f(signalGetter)) {
                    this.f7843g.notifyItemChanged(i);
                }
                i = i2;
            }
            Iterator<UnBrakeChecker> it = this.f7844h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                UnBrakeChecker next = it.next();
                if (!next.getF7896a()) {
                    if (LockCarManager.f7721a.g() || !this.c || signalGetter.d().L - this.f7841e <= DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                        z = false;
                        break;
                    } else {
                        this.f7841e = signalGetter.d().L;
                        TtsManager.r(next.d(), TtsGrade.SpecialVoice);
                        return;
                    }
                }
            }
            if (z) {
                if ((this.f7839a.getReason() == BrakeReason.RemoteFlame || this.f7839a.getReason() == BrakeReason.RemoteBrake || this.f7839a.getReason() == BrakeReason.RemoteLock) && signalGetter.d().L - this.f7841e > 10000) {
                    this.f7841e = signalGetter.d().L;
                    TtsManager.r(k0.a(R.string.teachbase_request_coach_release_brake), TtsGrade.SpecialVoice);
                }
                for (BrakeReason brakeReason : BrakeReason.values()) {
                    if (brakeReason.isByApp() && cn.mucang.android.jiakaoyi.teachingk2.safe.x.a(brakeReason)) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (jCurrentTimeMillis - this.f7840d > 3000) {
                            this.f7840d = jCurrentTimeMillis;
                            SafeCommandAdapter.f((byte) 1);
                        }
                    }
                }
            }
        }
    }
}
