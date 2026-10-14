package cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogErrorPointBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemErrorStepBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.ErrorPointModel;
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

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u001aB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012.\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005j\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007`\t¢\u0006\u0002\u0010\nJ\b\u0010\u0014\u001a\u00020\u0015H\u0002J\u0012\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0015J\u0010\u0010\u0011\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0006H\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R9\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005j\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007`\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/ErrorPointDialog;", "Landroid/app/Dialog;", "activity", "Landroid/app/Activity;", "data", "Ljava/util/HashMap;", "", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;", "Lkotlin/collections/HashMap;", "(Landroid/app/Activity;Ljava/util/HashMap;)V", "getActivity", "()Landroid/app/Activity;", "currentIndex", "", "getData", "()Ljava/util/HashMap;", "selectStep", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;", "changeError", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "item", "ErrorItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorPointDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f8532a;
    private final HashMap<String, List<ErrorPointModel>> b;
    private DialogErrorPointBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8534e;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.n$a */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/ErrorPointDialog$ErrorItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorStepBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/ErrorPointDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<String, ItemErrorStepBinding> {
        final /* synthetic */ ErrorPointDialog b;

        public a(ErrorPointDialog this$0) {
            r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(ErrorPointDialog this$0, String item, View view) {
            r.e(this$0, "this$0");
            r.e(item, "$item");
            this$0.k(item);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemErrorStepBinding> holder, final String item) {
            r.e(holder, "holder");
            r.e(item, "item");
            ((ItemErrorStepBinding) holder.getViewBinding()).stepName.setText(item);
            ((ItemErrorStepBinding) holder.getViewBinding()).stepName.setSelected(r.a(item, this.b.f8533d));
            TextView root = ((ItemErrorStepBinding) holder.getViewBinding()).getRoot();
            final ErrorPointDialog errorPointDialog = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ErrorPointDialog.a.p(errorPointDialog, item, view);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorPointDialog(Activity activity, HashMap<String, List<ErrorPointModel>> data) {
        super(activity, R.style.jiakaoyi__dialog);
        r.e(activity, "activity");
        r.e(data, "data");
        this.f8532a = activity;
        this.b = data;
    }

    private final void c() {
        List<ErrorPointModel> list = this.b.get(this.f8533d);
        ErrorPointModel errorPointModel = list == null ? null : (ErrorPointModel) s.f0(list, this.f8534e);
        if (errorPointModel == null) {
            return;
        }
        DialogErrorPointBinding dialogErrorPointBinding = this.c;
        if (dialogErrorPointBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogErrorPointBinding.errorTv.setText(errorPointModel.getErrorDesc(this.f8534e));
        DialogErrorPointBinding dialogErrorPointBinding2 = this.c;
        if (dialogErrorPointBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogErrorPointBinding2.imageIv.d(errorPointModel.getImgUrl(), 0);
        DialogErrorPointBinding dialogErrorPointBinding3 = this.c;
        if (dialogErrorPointBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        ImageView imageView = dialogErrorPointBinding3.leftIv;
        r.d(imageView, "viewBinding.leftIv");
        imageView.setVisibility(this.f8534e != 0 ? 0 : 8);
        DialogErrorPointBinding dialogErrorPointBinding4 = this.c;
        if (dialogErrorPointBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        ImageView imageView2 = dialogErrorPointBinding4.rightIv;
        r.d(imageView2, "viewBinding.rightIv");
        int i = this.f8534e;
        List<ErrorPointModel> list2 = this.b.get(this.f8533d);
        imageView2.setVisibility((list2 != null && i == u.l(list2)) ^ true ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ErrorPointDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ErrorPointDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.f8534e--;
        this$0.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ErrorPointDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.f8534e++;
        this$0.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NotifyDataSetChanged"})
    public final void k(String str) {
        this.f8533d = str;
        this.f8534e = 0;
        DialogErrorPointBinding dialogErrorPointBinding = this.c;
        if (dialogErrorPointBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        RecyclerView.Adapter adapter = dialogErrorPointBinding.stepRv.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        c();
    }

    public final HashMap<String, List<ErrorPointModel>> d() {
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
        DialogErrorPointBinding dialogErrorPointBindingInflate = DialogErrorPointBinding.inflate(getLayoutInflater());
        r.d(dialogErrorPointBindingInflate, "inflate(layoutInflater)");
        this.c = dialogErrorPointBindingInflate;
        if (dialogErrorPointBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogErrorPointBindingInflate.getRoot());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        DialogExtensionKt.c(this);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1230.0f) / 1920.0f), -2);
        }
        DialogErrorPointBinding dialogErrorPointBinding = this.c;
        if (dialogErrorPointBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogErrorPointBinding.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ErrorPointDialog.h(this.f8522a, view);
            }
        });
        DialogErrorPointBinding dialogErrorPointBinding2 = this.c;
        if (dialogErrorPointBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogErrorPointBinding2.leftIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ErrorPointDialog.i(this.f8519a, view);
            }
        });
        DialogErrorPointBinding dialogErrorPointBinding3 = this.c;
        if (dialogErrorPointBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogErrorPointBinding3.rightIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ErrorPointDialog.j(this.f8520a, view);
            }
        });
        DialogErrorPointBinding dialogErrorPointBinding4 = this.c;
        if (dialogErrorPointBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        RecyclerView recyclerView = dialogErrorPointBinding4.stepRv;
        f fVar = new f(null, 0, null, 7, null);
        fVar.g(String.class, new a(this));
        Set<String> setKeySet = d().keySet();
        r.d(setKeySet, "data.keys");
        fVar.i(CollectionsKt___CollectionsKt.M0(setKeySet));
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        Set<String> setKeySet2 = this.b.keySet();
        r.d(setKeySet2, "data.keys");
        Object objB0 = s.b0(setKeySet2);
        r.d(objB0, "data.keys.first()");
        k((String) objB0);
        DialogExtensionKt.a(this, this.f8532a);
    }
}
