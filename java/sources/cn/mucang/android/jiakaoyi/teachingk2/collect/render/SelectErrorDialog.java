package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;
import androidx.constraintlayout.widget.Group;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogSelectErrorBinding;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.g2, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\u0002\u0010\u000bJ\u0012\u0010\u0011\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014R \u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0004\u0012\u00020\n0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/SelectErrorDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "showStop", "", "onConfirm", "Lkotlin/Function1;", "", "", "", "(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;", "views", "", "Landroid/widget/CheckBox;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectErrorDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6647a;
    private final Function1<List<Integer>, kotlin.v> b;
    private DialogSelectErrorBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<CheckBox> f6648d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SelectErrorDialog(Context context, boolean z, Function1<? super List<Integer>, kotlin.v> onConfirm) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(onConfirm, "onConfirm");
        this.f6647a = z;
        this.b = onConfirm;
        this.f6648d = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(SelectErrorDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(SelectErrorDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ArrayList arrayList = new ArrayList();
        for (CheckBox checkBox : this$0.f6648d) {
            if (checkBox.isChecked()) {
                arrayList.add(Integer.valueOf(Integer.parseInt(checkBox.getTag().toString())));
            }
        }
        if (arrayList.isEmpty()) {
            cn.mucang.android.core.utils.u.h("请选择错误检测项类型");
        } else {
            this$0.b.invoke(arrayList);
            DialogExtensionKt.b(this$0);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogSelectErrorBinding dialogSelectErrorBindingInflate = DialogSelectErrorBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogSelectErrorBindingInflate, "inflate(layoutInflater)");
        this.c = dialogSelectErrorBindingInflate;
        if (dialogSelectErrorBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogSelectErrorBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        List<CheckBox> list = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding = this.c;
        if (dialogSelectErrorBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox = dialogSelectErrorBinding.leftCb;
        kotlin.jvm.internal.r.d(checkBox, "viewBinding.leftCb");
        list.add(checkBox);
        List<CheckBox> list2 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding2 = this.c;
        if (dialogSelectErrorBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox2 = dialogSelectErrorBinding2.rightCb;
        kotlin.jvm.internal.r.d(checkBox2, "viewBinding.rightCb");
        list2.add(checkBox2);
        List<CheckBox> list3 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding3 = this.c;
        if (dialogSelectErrorBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox3 = dialogSelectErrorBinding3.moreLeftCb;
        kotlin.jvm.internal.r.d(checkBox3, "viewBinding.moreLeftCb");
        list3.add(checkBox3);
        List<CheckBox> list4 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding4 = this.c;
        if (dialogSelectErrorBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox4 = dialogSelectErrorBinding4.moreRightCb;
        kotlin.jvm.internal.r.d(checkBox4, "viewBinding.moreRightCb");
        list4.add(checkBox4);
        List<CheckBox> list5 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding5 = this.c;
        if (dialogSelectErrorBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox5 = dialogSelectErrorBinding5.lightCloseCb;
        kotlin.jvm.internal.r.d(checkBox5, "viewBinding.lightCloseCb");
        list5.add(checkBox5);
        List<CheckBox> list6 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding6 = this.c;
        if (dialogSelectErrorBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox6 = dialogSelectErrorBinding6.lightErrorCb;
        kotlin.jvm.internal.r.d(checkBox6, "viewBinding.lightErrorCb");
        list6.add(checkBox6);
        List<CheckBox> list7 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding7 = this.c;
        if (dialogSelectErrorBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox7 = dialogSelectErrorBinding7.brakeCb;
        kotlin.jvm.internal.r.d(checkBox7, "viewBinding.brakeCb");
        list7.add(checkBox7);
        List<CheckBox> list8 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding8 = this.c;
        if (dialogSelectErrorBinding8 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox8 = dialogSelectErrorBinding8.noHeadCb;
        kotlin.jvm.internal.r.d(checkBox8, "viewBinding.noHeadCb");
        list8.add(checkBox8);
        List<CheckBox> list9 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding9 = this.c;
        if (dialogSelectErrorBinding9 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox9 = dialogSelectErrorBinding9.leftHeadCb;
        kotlin.jvm.internal.r.d(checkBox9, "viewBinding.leftHeadCb");
        list9.add(checkBox9);
        List<CheckBox> list10 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding10 = this.c;
        if (dialogSelectErrorBinding10 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox10 = dialogSelectErrorBinding10.rightHeadCb;
        kotlin.jvm.internal.r.d(checkBox10, "viewBinding.rightHeadCb");
        list10.add(checkBox10);
        List<CheckBox> list11 = this.f6648d;
        DialogSelectErrorBinding dialogSelectErrorBinding11 = this.c;
        if (dialogSelectErrorBinding11 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        CheckBox checkBox11 = dialogSelectErrorBinding11.customCb;
        kotlin.jvm.internal.r.d(checkBox11, "viewBinding.customCb");
        list11.add(checkBox11);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_800), -2);
        }
        DialogSelectErrorBinding dialogSelectErrorBinding12 = this.c;
        if (dialogSelectErrorBinding12 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        Group group = dialogSelectErrorBinding12.stopGroup;
        kotlin.jvm.internal.r.d(group, "viewBinding.stopGroup");
        group.setVisibility(this.f6647a ? 0 : 8);
        DialogSelectErrorBinding dialogSelectErrorBinding13 = this.c;
        if (dialogSelectErrorBinding13 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSelectErrorBinding13.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.v1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectErrorDialog.c(this.f6697a, view);
            }
        });
        DialogSelectErrorBinding dialogSelectErrorBinding14 = this.c;
        if (dialogSelectErrorBinding14 != null) {
            dialogSelectErrorBinding14.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.u1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectErrorDialog.d(this.f6694a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
