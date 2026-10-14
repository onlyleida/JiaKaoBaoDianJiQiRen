package cn.mucang.android.jiakaoyi.speech.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import cn.mucang.android.jiakaoyi.speech.R;
import cn.mucang.android.jiakaoyi.speech.databinding.LayoutDialogVoiceHelperBinding;
import com.amap.api.fence.GeoFence;
import com.bumptech.glide.Glide;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import f.a.a.a.p009n.dialog.SafeDialogFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.ui.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/ui/VoiceHelperDialog;", "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;", "()V", "viewbinding", "Lcn/mucang/android/jiakaoyi/speech/databinding/LayoutDialogVoiceHelperBinding;", "onCreateDialog", "Landroid/app/Dialog;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onResume", "", "onViewCreated", "view", "Companion", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VoiceHelperDialog extends SafeDialogFragment {
    public static final a b = new a(null);
    private static final String c = "VoiceHelperDialog";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LayoutDialogVoiceHelperBinding f5922a;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.ui.j$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/ui/VoiceHelperDialog$Companion;", "", "()V", "TAG", "", "getTAG$annotations", "getTAG", "()Ljava/lang/String;", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final String a() {
            return VoiceHelperDialog.c;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.ui.j$b */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/speech/ui/VoiceHelperDialog$onCreateDialog$1", "Landroid/app/Dialog;", "onTouchEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "Landroid/view/MotionEvent;", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends Dialog {
        b(Context context, int i) {
            super(context, i);
        }

        @Override // android.app.Dialog
        public boolean onTouchEvent(MotionEvent event) {
            r.e(event, "event");
            if (event.getAction() != 4) {
                return false;
            }
            cancel();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(VoiceHelperDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(VoiceHelperDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return new b(requireContext(), getTheme());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Window window;
        Window window2;
        Window window3;
        r.e(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window3 = dialog.getWindow()) != null) {
            window3.setBackgroundDrawableResource(R.drawable.voice__shape_panel_desc);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window2 = dialog2.getWindow()) != null) {
            window2.addFlags(8);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null && (window = dialog3.getWindow()) != null) {
            window.addFlags(262144);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null) {
            dialog4.setCanceledOnTouchOutside(true);
        }
        Dialog dialog5 = getDialog();
        if (dialog5 != null) {
            dialog5.setCancelable(true);
        }
        LayoutDialogVoiceHelperBinding layoutDialogVoiceHelperBindingInflate = LayoutDialogVoiceHelperBinding.inflate(LayoutInflater.from(getContext()));
        this.f5922a = layoutDialogVoiceHelperBindingInflate;
        if (layoutDialogVoiceHelperBindingInflate == null) {
            return null;
        }
        return layoutDialogVoiceHelperBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        Resources resources;
        super.onResume();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        Context context = getContext();
        int dimensionPixelSize = 0;
        if (context != null && (resources = context.getResources()) != null) {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.dp_540);
        }
        window.setLayout(dimensionPixelSize, -2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        LayoutDialogVoiceHelperBinding layoutDialogVoiceHelperBinding = this.f5922a;
        r.c(layoutDialogVoiceHelperBinding);
        layoutDialogVoiceHelperBinding.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.speech.ui.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceHelperDialog.u(this.f5917a, view2);
            }
        });
        layoutDialogVoiceHelperBinding.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.speech.ui.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceHelperDialog.v(this.f5918a, view2);
            }
        });
        Glide.with(layoutDialogVoiceHelperBinding.getRoot()).load(Integer.valueOf(R.drawable.gif_1)).into(layoutDialogVoiceHelperBinding.gift1);
        Glide.with(layoutDialogVoiceHelperBinding.getRoot()).load(Integer.valueOf(R.drawable.gif_2)).into(layoutDialogVoiceHelperBinding.gift2);
    }
}
