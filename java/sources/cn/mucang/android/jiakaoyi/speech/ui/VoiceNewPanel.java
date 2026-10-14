package cn.mucang.android.jiakaoyi.speech.ui;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.u;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.speech.R;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.speech.databinding.LayoutVoiceNewPanelBinding;
import cn.mucang.android.jiakaoyi.speech.databinding.LayoutVoicePanelContainerBinding;
import cn.mucang.android.jiakaoyi.speech.model.FaceTypeMode;
import cn.mucang.android.jiakaoyi.speech.model.SingleAnswerModel;
import cn.mucang.android.jiakaoyi.speech.model.SingleAskModel;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.material.badge.BadgeDrawable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.ui.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u0000 52\u00020\u0001:\u00015B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0017J\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001cJ\u0012\u0010\u001d\u001a\u00020\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J$\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010\u0002\u001a\u00020\u00042\u0006\u0010&\u001a\u00020'H\u0016J\b\u0010(\u001a\u00020\u0004H\u0016J\u000e\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0017J\b\u0010+\u001a\u00020\u0004H\u0016J\u001a\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020!2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u00010\u0017H\u0016J\u000e\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u000204R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/ui/VoiceNewPanel;", "Landroidx/fragment/app/DialogFragment;", "onDismiss", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "items", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "type", "", "getType", "()I", "setType", "(I)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/speech/databinding/LayoutVoicePanelContainerBinding;", "dismiss", "onAnswerText", "text", "", "onAsrResult", "speak", "onAudioWrite", "data", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "dialog", "Landroid/content/DialogInterface;", "onResume", "onShowHint", "hint", "onStart", "onViewCreated", "view", "show", "manager", "Landroidx/fragment/app/FragmentManager;", "tag", "showQt", "isShow", "", "Companion", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class VoiceNewPanel extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0<v> f5923a;
    private LayoutVoicePanelContainerBinding b;
    private final ArrayList<Object> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f5924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5925e;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.ui.k$a */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"cn/mucang/android/jiakaoyi/speech/ui/VoiceNewPanel$onViewCreated$2", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends RecyclerView.n {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.n
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.z state) {
            r.e(outRect, "outRect");
            r.e(view, "view");
            r.e(parent, "parent");
            r.e(state, "state");
            if (parent.getChildLayoutPosition(view) == VoiceNewPanel.this.f5924d.getItemCount() - 1) {
                outRect.set(0, 0, 0, view.getResources().getDimensionPixelSize(R.dimen.dp_16));
            } else {
                outRect.set(0, 0, 0, 0);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VoiceNewPanel() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public VoiceNewPanel(Function0<v> function0) {
        this.f5923a = function0;
        this.c = new ArrayList<>();
        this.f5924d = new com.drakeet.multitype.f(null, 0, null, 7, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(VoiceNewPanel this$0, View view) {
        r.e(this$0, "this$0");
        androidx.fragment.app.d activity = this$0.getActivity();
        FragmentManager supportFragmentManager = activity == null ? null : activity.getSupportFragmentManager();
        if (supportFragmentManager == null) {
            return;
        }
        VoiceHelperDialog.a aVar = VoiceHelperDialog.b;
        if (supportFragmentManager.j0(aVar.a()) == null) {
            new VoiceHelperDialog().show(supportFragmentManager, aVar.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(VoiceNewPanel this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismiss();
        if (this$0.getF5925e() == 0) {
            SpeechManager.f5839a.t();
        } else if (this$0.getF5925e() == 1) {
            SpeechManager.f5839a.g();
        }
    }

    public final void B(int i) {
        this.f5925e = i;
    }

    public final void C(boolean z) {
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding;
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding2;
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding3;
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding4;
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding5;
        ImageView imageView = null;
        if (this.f5925e != 0) {
            LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding = this.b;
            AudioWaveView audioWaveView = (layoutVoicePanelContainerBinding == null || (layoutVoiceNewPanelBinding = layoutVoicePanelContainerBinding.panel) == null) ? null : layoutVoiceNewPanelBinding.waveView;
            if (audioWaveView != null) {
                audioWaveView.setVisibility(8);
            }
            LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding2 = this.b;
            if (layoutVoicePanelContainerBinding2 != null && (layoutVoiceNewPanelBinding2 = layoutVoicePanelContainerBinding2.panel) != null) {
                imageView = layoutVoiceNewPanelBinding2.ivQt;
            }
            if (imageView == null) {
                return;
            }
            imageView.setVisibility(8);
            return;
        }
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding3 = this.b;
        AudioWaveView audioWaveView2 = (layoutVoicePanelContainerBinding3 == null || (layoutVoiceNewPanelBinding3 = layoutVoicePanelContainerBinding3.panel) == null) ? null : layoutVoiceNewPanelBinding3.waveView;
        if (audioWaveView2 != null) {
            audioWaveView2.setVisibility(0);
        }
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding4 = this.b;
        AudioWaveView audioWaveView3 = (layoutVoicePanelContainerBinding4 == null || (layoutVoiceNewPanelBinding4 = layoutVoicePanelContainerBinding4.panel) == null) ? null : layoutVoiceNewPanelBinding4.waveView;
        if (audioWaveView3 != null) {
            audioWaveView3.setSelected(z);
        }
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding5 = this.b;
        if (layoutVoicePanelContainerBinding5 != null && (layoutVoiceNewPanelBinding5 = layoutVoicePanelContainerBinding5.panel) != null) {
            imageView = layoutVoiceNewPanelBinding5.ivQt;
        }
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(z ? 0 : 8);
    }

    @Override // androidx.fragment.app.c
    public void dismiss() {
        try {
            Result.Companion companion = Result.INSTANCE;
            SpeechLogUtils.c("VoiceNewPanel", "dismiss");
            super.dismissAllowingStateLoss();
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SpeechLogUtils.c("VoiceNewPanel", "onCreate");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding;
        ImageView imageView;
        Window window;
        Window window2;
        Window window3;
        r.e(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window3 = dialog.getWindow()) != null) {
            window3.addFlags(8);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window2 = dialog2.getWindow()) != null) {
            window2.requestFeature(1);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null && (window = dialog3.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBindingInflate = LayoutVoicePanelContainerBinding.inflate(inflater);
        this.b = layoutVoicePanelContainerBindingInflate;
        if (layoutVoicePanelContainerBindingInflate != null && (layoutVoiceNewPanelBinding = layoutVoicePanelContainerBindingInflate.panel) != null && (imageView = layoutVoiceNewPanelBinding.closeIv) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.speech.ui.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoiceNewPanel.y(this.f5920a, view);
                }
            });
        }
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding = this.b;
        r.c(layoutVoicePanelContainerBinding);
        FrameLayout root = layoutVoicePanelContainerBinding.getRoot();
        r.d(root, "viewBinding!!.root");
        return root;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        r.e(dialog, "dialog");
        super.onDismiss(dialog);
        LiveBus.c(new FaceTypeMode(FaceTypeMode.f5889a.a()));
        Function0<v> function0 = this.f5923a;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        Resources resources;
        Resources resources2;
        Resources resources3;
        Dialog dialog = getDialog();
        WindowManager.LayoutParams attributes = (dialog == null || (window = dialog.getWindow()) == null) ? null : window.getAttributes();
        int dimensionPixelSize = 0;
        if (attributes != null) {
            Context context = getContext();
            attributes.width = (context == null || (resources3 = context.getResources()) == null) ? 0 : resources3.getDimensionPixelSize(R.dimen.dp_352);
        }
        if (attributes != null) {
            attributes.height = -2;
        }
        if (attributes != null) {
            attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
        }
        if (attributes != null) {
            attributes.gravity = BadgeDrawable.TOP_START;
            int i = attributes.x;
            Context context2 = getContext();
            attributes.x = i + ((context2 == null || (resources = context2.getResources()) == null) ? 0 : resources.getDimensionPixelSize(R.dimen.dp_139));
            int i2 = attributes.y;
            Context context3 = getContext();
            if (context3 != null && (resources2 = context3.getResources()) != null) {
                dimensionPixelSize = resources2.getDimensionPixelSize(R.dimen.dp_72);
            }
            attributes.y = i2 + dimensionPixelSize;
        }
        Dialog dialog2 = getDialog();
        Window window2 = dialog2 != null ? dialog2.getWindow() : null;
        if (window2 != null) {
            window2.setAttributes(attributes);
        }
        super.onResume();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        try {
            Result.Companion companion = Result.INSTANCE;
            super.onStart();
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding = this.b;
        r.c(layoutVoicePanelContainerBinding);
        layoutVoicePanelContainerBinding.panel.ivQt.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.speech.ui.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceNewPanel.A(this.f5919a, view2);
            }
        });
        layoutVoicePanelContainerBinding.panel.waveView.setColor(-16544257);
        this.f5924d.g(SingleAskModel.class, new SingleAskItemBinder());
        this.f5924d.g(SingleAnswerModel.class, new SingleAnswerItemBinder());
        this.f5924d.i(this.c);
        layoutVoicePanelContainerBinding.panel.recycleView.addItemDecoration(new a());
        layoutVoicePanelContainerBinding.panel.recycleView.setAdapter(this.f5924d);
    }

    /* JADX INFO: renamed from: s, reason: from getter */
    public final int getF5925e() {
        return this.f5925e;
    }

    @Override // androidx.fragment.app.c
    public void show(FragmentManager manager, String tag) {
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding;
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding2;
        r.e(manager, "manager");
        try {
            Result.Companion companion = Result.INSTANCE;
            u uVarM = manager.m();
            uVarM.q(this);
            uVarM.j();
            Result.m139constructorimpl(Boolean.valueOf(manager.f0()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
        try {
            LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding = this.b;
            ImageView imageView = null;
            AudioWaveView audioWaveView = (layoutVoicePanelContainerBinding == null || (layoutVoiceNewPanelBinding = layoutVoicePanelContainerBinding.panel) == null) ? null : layoutVoiceNewPanelBinding.waveView;
            int i = 0;
            if (audioWaveView != null) {
                audioWaveView.setVisibility(this.f5925e == 0 ? 0 : 8);
            }
            LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding2 = this.b;
            if (layoutVoicePanelContainerBinding2 != null && (layoutVoiceNewPanelBinding2 = layoutVoicePanelContainerBinding2.panel) != null) {
                imageView = layoutVoiceNewPanelBinding2.ivQt;
            }
            if (imageView != null) {
                if (this.f5925e != 0) {
                    i = 8;
                }
                imageView.setVisibility(i);
            }
            super.show(manager, tag);
        } catch (Exception unused) {
            u uVarM2 = manager.m();
            r.d(uVarM2, "manager.beginTransaction()");
            uVarM2.e(this, tag);
            uVarM2.j();
        }
    }

    public final void v(String text) {
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding;
        RecyclerView recyclerView;
        r.e(text, "text");
        this.f5925e = 0;
        this.c.add(new SingleAnswerModel(text));
        this.f5924d.notifyDataSetChanged();
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding = this.b;
        if (layoutVoicePanelContainerBinding == null || (layoutVoiceNewPanelBinding = layoutVoicePanelContainerBinding.panel) == null || (recyclerView = layoutVoiceNewPanelBinding.recycleView) == null) {
            return;
        }
        recyclerView.scrollToPosition(this.c.size() - 1);
    }

    public final void w(String speak) {
        r.e(speak, "speak");
        this.f5925e = 0;
        this.c.add(new SingleAskModel(speak));
        this.f5924d.notifyDataSetChanged();
    }

    public final void x(byte[] data) {
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding;
        AudioWaveView audioWaveView;
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding2;
        AudioWaveView audioWaveView2;
        LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding3;
        AudioWaveView audioWaveView3;
        r.e(data, "data");
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding = this.b;
        boolean z = false;
        if (layoutVoicePanelContainerBinding != null && (layoutVoiceNewPanelBinding3 = layoutVoicePanelContainerBinding.panel) != null && (audioWaveView3 = layoutVoiceNewPanelBinding3.waveView) != null && !audioWaveView3.isSelected()) {
            z = true;
        }
        if (z) {
            LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding2 = this.b;
            if (layoutVoicePanelContainerBinding2 == null || (layoutVoiceNewPanelBinding2 = layoutVoicePanelContainerBinding2.panel) == null || (audioWaveView2 = layoutVoiceNewPanelBinding2.waveView) == null) {
                return;
            }
            audioWaveView2.setData(data);
            return;
        }
        LayoutVoicePanelContainerBinding layoutVoicePanelContainerBinding3 = this.b;
        if (layoutVoicePanelContainerBinding3 == null || (layoutVoiceNewPanelBinding = layoutVoicePanelContainerBinding3.panel) == null || (audioWaveView = layoutVoiceNewPanelBinding.waveView) == null) {
            return;
        }
        audioWaveView.e();
    }

    public final void z(String hint) {
        r.e(hint, "hint");
        this.f5925e = 1;
        this.c.clear();
        this.c.add(new SingleAnswerModel(hint));
        this.f5924d.i(this.c);
        this.f5924d.notifyDataSetChanged();
    }

    public /* synthetic */ VoiceNewPanel(Function0 function0, int i, o oVar) {
        this((i & 1) != 0 ? null : function0);
    }
}
