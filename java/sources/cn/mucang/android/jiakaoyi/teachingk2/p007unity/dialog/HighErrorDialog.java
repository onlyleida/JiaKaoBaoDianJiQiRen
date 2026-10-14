package cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.InProject;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.OutProject;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogHighErrorBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemErrorStepBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemErrorSubStepBinding;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepMapPreviewer;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.HighErrorModel;
import com.drakeet.multitype.f;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0002$%BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012.\u0010\u0007\u001a*\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\bj\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n`\f¢\u0006\u0002\u0010\rJ\b\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0002J\b\u0010\u001f\u001a\u00020\u001dH\u0016J\u0012\u0010 \u001a\u00020\u001d2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0015J\u0018\u0010\u0017\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R9\u0010\u0007\u001a*\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\bj\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n`\f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/HighErrorDialog;", "Landroid/app/Dialog;", "activity", "Landroid/app/Activity;", "step", "", "subStep", "data", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$HighErrorMenu;", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;", "Lkotlin/collections/HashMap;", "(Landroid/app/Activity;IILjava/util/HashMap;)V", "getActivity", "()Landroid/app/Activity;", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "currentIndex", "getData", "()Ljava/util/HashMap;", "previewer", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepMapPreviewer;", "selectStep", "getStep", "()I", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighErrorBinding;", "changeError", "", "changeStep", "dismiss", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "item", "ErrorStepBinder", "SubStepBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class HighErrorDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f8535a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<HighErrorModel.a, List<HighErrorModel>> f8536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DialogHighErrorBinding f8537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HighErrorModel.a f8538f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8539g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private StepMapPreviewer f8540h;
    private final f i;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.o$a */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/HighErrorDialog$ErrorStepBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$HighErrorMenu;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorStepBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/HighErrorDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<HighErrorModel.a, ItemErrorStepBinding> {
        final /* synthetic */ HighErrorDialog b;

        public a(HighErrorDialog this$0) {
            r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(HighErrorDialog this$0, HighErrorModel.a item, View view) {
            r.e(this$0, "this$0");
            r.e(item, "$item");
            this$0.q(item, 0);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemErrorStepBinding> holder, final HighErrorModel.a item) {
            r.e(holder, "holder");
            r.e(item, "item");
            ((ItemErrorStepBinding) holder.getViewBinding()).stepName.setText(item.getC());
            ((ItemErrorStepBinding) holder.getViewBinding()).stepName.setSelected(r.a(item, this.b.f8538f));
            TextView root = ((ItemErrorStepBinding) holder.getViewBinding()).getRoot();
            final HighErrorDialog highErrorDialog = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HighErrorDialog.a.p(highErrorDialog, item, view);
                }
            });
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.o$b */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/HighErrorDialog$SubStepBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/HighErrorDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<HighErrorModel, ItemErrorSubStepBinding> {
        final /* synthetic */ HighErrorDialog b;

        public b(HighErrorDialog this$0) {
            r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(HighErrorDialog this$0, ViewBindingHolder holder, View view) {
            r.e(this$0, "this$0");
            r.e(holder, "$holder");
            this$0.f8539g = holder.getAdapterPosition();
            DialogHighErrorBinding dialogHighErrorBinding = this$0.f8537e;
            if (dialogHighErrorBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            RecyclerView.Adapter adapter = dialogHighErrorBinding.subStepRv.getAdapter();
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
            this$0.g();
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<ItemErrorSubStepBinding> holder, HighErrorModel item) {
            r.e(holder, "holder");
            r.e(item, "item");
            TextView textView = ((ItemErrorSubStepBinding) holder.getViewBinding()).stepName;
            String stepPhaseName = item.getStepPhaseName();
            if (stepPhaseName == null) {
                stepPhaseName = item.getStepName();
            }
            textView.setText(stepPhaseName);
            ((ItemErrorSubStepBinding) holder.getViewBinding()).stepName.setSelected(holder.getAdapterPosition() == this.b.f8539g);
            TextView textView2 = ((ItemErrorSubStepBinding) holder.getViewBinding()).stepName;
            final HighErrorDialog highErrorDialog = this.b;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HighErrorDialog.b.p(highErrorDialog, holder, view);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HighErrorDialog(Activity activity, int i, int i2, HashMap<HighErrorModel.a, List<HighErrorModel>> data) {
        super(activity);
        r.e(activity, "activity");
        r.e(data, "data");
        this.f8535a = activity;
        this.b = i;
        this.c = i2;
        this.f8536d = data;
        f fVar = new f(null, 0, null, 7, null);
        fVar.g(HighErrorModel.class, new b(this));
        v vVar = v.f15822a;
        this.i = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        List<HighErrorModel> list = this.f8536d.get(this.f8538f);
        HighErrorModel highErrorModel = list == null ? null : (HighErrorModel) s.f0(list, this.f8539g);
        if (highErrorModel == null) {
            return;
        }
        DialogHighErrorBinding dialogHighErrorBinding = this.f8537e;
        if (dialogHighErrorBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogHighErrorBinding.errorTv.setText(highErrorModel.getErrorDesc());
        StepMapPreviewer stepMapPreviewer = this.f8540h;
        if (stepMapPreviewer == null) {
            return;
        }
        stepMapPreviewer.g(highErrorModel.getPosList());
    }

    private final void h() {
        StepMapPreviewer stepMapPreviewer = this.f8540h;
        if (stepMapPreviewer != null) {
            HighErrorModel.a aVar = this.f8538f;
            int f8395a = aVar == null ? 0 : aVar.getF8395a();
            HighErrorModel.a aVar2 = this.f8538f;
            StepMapPreviewer.e(stepMapPreviewer, f8395a, aVar2 != null ? aVar2.getF8396d() : 0, null, 4, null);
        }
        f fVar = this.i;
        List<HighErrorModel> listJ = this.f8536d.get(this.f8538f);
        if (listJ == null) {
            listJ = u.j();
        }
        fVar.i(listJ);
        this.i.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(HighErrorDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(HighErrorDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(HighErrorDialog this$0) {
        r.e(this$0, "this$0");
        Set<HighErrorModel.a> setKeySet = this$0.i().keySet();
        r.d(setKeySet, "data.keys");
        for (HighErrorModel.a it : setKeySet) {
            if (it.getF8395a() == this$0.getB()) {
                r.d(it, "it");
                this$0.q(it, this$0.c);
                return;
            } else {
                Set<HighErrorModel.a> setKeySet2 = this$0.i().keySet();
                r.d(setKeySet2, "data.keys");
                Object objB0 = s.b0(setKeySet2);
                r.d(objB0, "data.keys.first()");
                this$0.q((HighErrorModel.a) objB0, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(HighErrorModel.a aVar, int i) {
        List<HighErrorModel> list;
        this.f8538f = aVar;
        int i2 = 0;
        this.f8539g = 0;
        if (i > 0 && (list = i().get(this.f8538f)) != null) {
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    s.t();
                    throw null;
                }
                if (((HighErrorModel) obj).getStepPhase() == i) {
                    this.f8539g = i2;
                    break;
                }
                i2 = i3;
            }
        }
        DialogHighErrorBinding dialogHighErrorBinding = this.f8537e;
        if (dialogHighErrorBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        RecyclerView.Adapter adapter = dialogHighErrorBinding.stepRv.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        h();
        g();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        DialogHighErrorBinding dialogHighErrorBinding = this.f8537e;
        if (dialogHighErrorBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogHighErrorBinding.mapView.c();
        i0.k("keyInProjectBg", InProject.None.type);
        i0.k("keyOutProjectBg", OutProject.Black.type);
    }

    public final HashMap<HighErrorModel.a, List<HighErrorModel>> i() {
        return this.f8536d;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final int getB() {
        return this.b;
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        DialogHighErrorBinding dialogHighErrorBindingInflate = DialogHighErrorBinding.inflate(getLayoutInflater());
        r.d(dialogHighErrorBindingInflate, "inflate(layoutInflater)");
        this.f8537e = dialogHighErrorBindingInflate;
        if (dialogHighErrorBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogHighErrorBindingInflate.getRoot());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        DialogExtensionKt.c(this);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setBackgroundDrawableResource(R.color.TRANSPARENT);
        }
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_1380), -2);
        }
        Window window4 = getWindow();
        if (window4 != null) {
            window4.setFlags(16777216, 16777216);
        }
        DialogHighErrorBinding dialogHighErrorBinding = this.f8537e;
        if (dialogHighErrorBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogHighErrorBinding.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HighErrorDialog.n(this.f8524a, view);
            }
        });
        DialogHighErrorBinding dialogHighErrorBinding2 = this.f8537e;
        if (dialogHighErrorBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogHighErrorBinding2.iKnowTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HighErrorDialog.o(this.f8523a, view);
            }
        });
        DialogHighErrorBinding dialogHighErrorBinding3 = this.f8537e;
        if (dialogHighErrorBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogHighErrorBinding3.errorTv.setMovementMethod(ScrollingMovementMethod.getInstance());
        DialogHighErrorBinding dialogHighErrorBinding4 = this.f8537e;
        if (dialogHighErrorBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogHighErrorBinding4.subStepRv.setLayoutManager(new GridLayoutManager(getContext(), 5, 1, false));
        DialogHighErrorBinding dialogHighErrorBinding5 = this.f8537e;
        if (dialogHighErrorBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogHighErrorBinding5.subStepRv.setAdapter(this.i);
        DialogHighErrorBinding dialogHighErrorBinding6 = this.f8537e;
        if (dialogHighErrorBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        RecyclerView recyclerView = dialogHighErrorBinding6.stepRv;
        f fVar = new f(null, 0, null, 7, null);
        fVar.g(HighErrorModel.a.class, new a(this));
        Set<HighErrorModel.a> setKeySet = i().keySet();
        r.d(setKeySet, "data.keys");
        fVar.i(CollectionsKt___CollectionsKt.M0(setKeySet));
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        DialogHighErrorBinding dialogHighErrorBinding7 = this.f8537e;
        if (dialogHighErrorBinding7 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogHighErrorBinding7.mapView.setHasGesture(false);
        DialogHighErrorBinding dialogHighErrorBinding8 = this.f8537e;
        if (dialogHighErrorBinding8 == null) {
            r.u("viewBinding");
            throw null;
        }
        MapView mapView = dialogHighErrorBinding8.mapView;
        r.d(mapView, "viewBinding.mapView");
        this.f8540h = new StepMapPreviewer(mapView);
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.i
            @Override // java.lang.Runnable
            public final void run() {
                HighErrorDialog.p(this.f8527a);
            }
        }, 100L);
        DialogExtensionKt.a(this, this.f8535a);
    }
}
