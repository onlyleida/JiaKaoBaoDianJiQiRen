package cn.mucang.android.jiakaoyi.teachingk2.safe.ui;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogChooseBarrierBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemChooseBarrierBinding;
import cn.mucang.android.jiakaoyi.teachingk2.AppTeachExtensionsKt;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.x, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0010\u001a\f\u0012\b\u0012\u00060\u000bR\u00020\u00000\nH\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\f\u0012\b\u0012\u00060\u000bR\u00020\u00000\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", SocialConstants.PARAM_APP_DESC, "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "data", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog$BarrierItem;", "getDesc", "()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;", "createData", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "BarrierBinder", "BarrierItem", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class ChooseBarrierDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CarBrakeDesc f7888a;
    private DialogChooseBarrierBinding b;
    private final List<b> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f7889d;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.x$a */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u0012\u0012\b\u0012\u00060\u0002R\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0005¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog$BarrierBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog$BarrierItem;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<b, ItemChooseBarrierBinding> {
        final /* synthetic */ ChooseBarrierDialog b;

        public a(ChooseBarrierDialog this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(b item, ChooseBarrierDialog this$0, a this$1, ViewBindingHolder holder, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            kotlin.jvm.internal.r.e(holder, "$holder");
            item.g(!item.getC());
            if (!item.getF7892e()) {
                this$1.a().notifyItemChanged(holder.getAdapterPosition());
                return;
            }
            for (b bVar : this$0.c) {
                if (!bVar.getF7892e()) {
                    bVar.f(!item.getC());
                }
                if (!bVar.getF7891d()) {
                    bVar.g(false);
                }
            }
            this$1.a().notifyDataSetChanged();
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<ItemChooseBarrierBinding> holder, final b item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemChooseBarrierBinding) holder.getViewBinding()).iconIv.setImageResource(item.getB());
            TextView textView = ((ItemChooseBarrierBinding) holder.getViewBinding()).descTv;
            kotlin.jvm.internal.r.d(textView, "holder.viewBinding.descTv");
            AppTeachExtensionsKt.h(textView, R.drawable.selector_barrier_choice, 28);
            ((ItemChooseBarrierBinding) holder.getViewBinding()).descTv.setText(item.getF7890a());
            ((ItemChooseBarrierBinding) holder.getViewBinding()).descTv.setSelected(item.getC());
            if (!item.getF7891d()) {
                ((ItemChooseBarrierBinding) holder.getViewBinding()).getRoot().setAlpha(0.3f);
                ((ItemChooseBarrierBinding) holder.getViewBinding()).getRoot().setOnClickListener(null);
            } else {
                ((ItemChooseBarrierBinding) holder.getViewBinding()).getRoot().setAlpha(1.0f);
                ConstraintLayout root = ((ItemChooseBarrierBinding) holder.getViewBinding()).getRoot();
                final ChooseBarrierDialog chooseBarrierDialog = this.b;
                root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ChooseBarrierDialog.a.p(item, chooseBarrierDialog, this, holder, view);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.x$b */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007¢\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000e\"\u0004\b\u0015\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog$BarrierItem;", "", SocialConstants.PARAM_APP_DESC, "", "icon", "", "isSelected", "", "enable", "none", "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog;Ljava/lang/String;IZZZ)V", "getDesc", "()Ljava/lang/String;", "getEnable", "()Z", "setEnable", "(Z)V", "getIcon", "()I", "setSelected", "getNone", "setNone", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f7890a;
        private final int b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f7891d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f7892e;

        public b(ChooseBarrierDialog this$0, String desc, int i, boolean z, boolean z2, boolean z3) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(desc, "desc");
            this.f7890a = desc;
            this.b = i;
            this.c = z;
            this.f7891d = z2;
            this.f7892e = z3;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF7890a() {
            return this.f7890a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final boolean getF7891d() {
            return this.f7891d;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final int getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final boolean getF7892e() {
            return this.f7892e;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final boolean getC() {
            return this.c;
        }

        public final void f(boolean z) {
            this.f7891d = z;
        }

        public final void g(boolean z) {
            this.c = z;
        }

        public /* synthetic */ b(ChooseBarrierDialog chooseBarrierDialog, String str, int i, boolean z, boolean z2, boolean z3, int i2, kotlin.jvm.internal.o oVar) {
            this(chooseBarrierDialog, str, i, z, (i2 & 8) != 0 ? true : z2, (i2 & 16) != 0 ? false : z3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseBarrierDialog(Context context, CarBrakeDesc desc) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(desc, "desc");
        this.f7888a = desc;
        this.c = b();
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(b.class, new a(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f7889d = fVar;
    }

    private final List<b> b() {
        ArrayList arrayList = new ArrayList();
        String strA = k0.a(R.string.teachbase_flowers);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_flowers)");
        boolean z = false;
        boolean z2 = false;
        arrayList.add(new b(this, strA, R.drawable.icon_barrier_flower, false, z, z2, 24, null));
        String strA2 = k0.a(R.string.teachbase_trees);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_trees)");
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i = 24;
        kotlin.jvm.internal.o oVar = null;
        arrayList.add(new b(this, strA2, R.drawable.icon_barrier_tree, z3, z4, z5, i, oVar));
        String strA3 = k0.a(R.string.teachbase_luyazi);
        kotlin.jvm.internal.r.d(strA3, "getString(R.string.teachbase_luyazi)");
        boolean z6 = false;
        int i2 = 24;
        kotlin.jvm.internal.o oVar2 = null;
        arrayList.add(new b(this, strA3, R.drawable.icon_barrier_luyazi, z, z2, z6, i2, oVar2));
        String strA4 = k0.a(R.string.teachbase_car);
        kotlin.jvm.internal.r.d(strA4, "getString(R.string.teachbase_car)");
        arrayList.add(new b(this, strA4, R.drawable.icon_barrier_car, z3, z4, z5, i, oVar));
        String strA5 = k0.a(R.string.teachbase_people);
        kotlin.jvm.internal.r.d(strA5, "getString(R.string.teachbase_people)");
        arrayList.add(new b(this, strA5, R.drawable.icon_barrier_people, z, z2, z6, i2, oVar2));
        String strA6 = k0.a(R.string.teachbase_wall);
        kotlin.jvm.internal.r.d(strA6, "getString(R.string.teachbase_wall)");
        arrayList.add(new b(this, strA6, R.drawable.icon_barrier_wall, z3, z4, z5, i, oVar));
        String strA7 = k0.a(R.string.teachbase_other_obj);
        kotlin.jvm.internal.r.d(strA7, "getString(R.string.teachbase_other_obj)");
        arrayList.add(new b(this, strA7, R.drawable.icon_barrier_other, z, z2, z6, i2, oVar2));
        String strA8 = k0.a(R.string.teachbase_nothing_all);
        kotlin.jvm.internal.r.d(strA8, "getString(R.string.teachbase_nothing_all)");
        arrayList.add(new b(this, strA8, R.drawable.icon_barrier_none, z3, z4, true, 8, oVar));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ChooseBarrierDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ChooseBarrierDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        StringBuilder sb = new StringBuilder();
        for (b bVar : this$0.c) {
            if (bVar.getC()) {
                sb.append(bVar.getF7890a());
                sb.append(",");
            }
        }
        String string = StringsKt__StringsKt.j0(sb, ",").toString();
        if (n0.e(string)) {
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_select_obstacle));
        } else {
            BrakeGlobalMonitor.f7792a.l(string);
            DialogExtensionKt.b(this$0);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogChooseBarrierBinding dialogChooseBarrierBindingInflate = DialogChooseBarrierBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogChooseBarrierBindingInflate, "inflate(layoutInflater)");
        this.b = dialogChooseBarrierBindingInflate;
        if (dialogChooseBarrierBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogChooseBarrierBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_1060), -2);
        }
        DialogChooseBarrierBinding dialogChooseBarrierBinding = this.b;
        if (dialogChooseBarrierBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogChooseBarrierBinding.rv.setLayoutManager(new GridLayoutManager(getContext(), 4));
        DialogChooseBarrierBinding dialogChooseBarrierBinding2 = this.b;
        if (dialogChooseBarrierBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogChooseBarrierBinding2.rv.setItemAnimator(null);
        DialogChooseBarrierBinding dialogChooseBarrierBinding3 = this.b;
        if (dialogChooseBarrierBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogChooseBarrierBinding3.rv.setAdapter(this.f7889d);
        this.f7889d.i(this.c);
        this.f7889d.notifyDataSetChanged();
        if (n0.g(this.f7888a.src)) {
            DialogChooseBarrierBinding dialogChooseBarrierBinding4 = this.b;
            if (dialogChooseBarrierBinding4 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            TextView textView = dialogChooseBarrierBinding4.titleTv;
            if (dialogChooseBarrierBinding4 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            String string = textView.getText().toString();
            String strA = k0.a(R.string.teachbase_nearby);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_nearby)");
            String str = this.f7888a.src;
            kotlin.jvm.internal.r.d(str, "desc.src");
            textView.setText(kotlin.text.t.x(string, strA, str, false, 4, null));
        }
        DialogChooseBarrierBinding dialogChooseBarrierBinding5 = this.b;
        if (dialogChooseBarrierBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogChooseBarrierBinding5.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseBarrierDialog.e(this.f7850a, view);
            }
        });
        DialogChooseBarrierBinding dialogChooseBarrierBinding6 = this.b;
        if (dialogChooseBarrierBinding6 != null) {
            dialogChooseBarrierBinding6.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChooseBarrierDialog.f(this.f7855a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
