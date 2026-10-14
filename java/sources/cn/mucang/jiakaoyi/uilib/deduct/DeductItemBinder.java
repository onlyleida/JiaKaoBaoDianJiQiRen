package cn.mucang.jiakaoyi.uilib.deduct;

import android.app.Activity;
import android.app.Application;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.JudgeType;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.jiakaoyi.uilib.deduct.dialog.DeductDescDialog;
import cn.mucang.jiakaoyi.uilib.deduct.dialog.SelectVoiceDialog;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.rule.dialog.DeductRuleDialogHelper;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.DeductSettingItemDeductBinding;
import com.tencent.open.SocialConstants;
import java.util.HashMap;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.z, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\"#B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tH\u0002J\u001e\u0010\u0018\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u001b2\u0006\u0010\u001c\u001a\u00020\u0002H\u0002J\u001e\u0010\u001d\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u001b2\u0006\u0010\u001c\u001a\u00020\u0002H\u0016J\u0016\u0010\u001e\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u001bH\u0016J\u0018\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0015H\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR2\u0010\r\u001a&\u0012\u0004\u0012\u00020\u000f\u0012\b\u0012\u00060\u0010R\u00020\u00000\u000ej\u0012\u0012\u0004\u0012\u00020\u000f\u0012\b\u0012\u00060\u0010R\u00020\u0000`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006$"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingItemDeductBinding;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "isEdit", "", "(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "listenerMap", "Ljava/util/HashMap;", "Landroid/widget/EditText;", "Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$MyTextWatcher;", "Lkotlin/collections/HashMap;", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "changeJudge", "", "manualJudge", "systemJudge", "initListener", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onBindViewHolder", "onViewRecycled", "renderJudgeUI", "viewBinding", "judgeType", "DeductDescEditListener", "MyTextWatcher", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductItemBinder extends ViewBindingBinder<DeductEntity, DeductSettingItemDeductBinding> {
    private final FragmentManager b;
    private final KeMu c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<EditText, b> f9284e;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.z$a */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$DeductDescEditListener;", "", "onConfirm", "", SocialConstants.PARAM_APP_DESC, "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a(String str);
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.z$b */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\r\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J*\u0010\u0013\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$MyTextWatcher;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder;)V", "item", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "getItem", "()Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "setItem", "(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class b implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private DeductEntity f9285a;

        public b(DeductItemBinder this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        public final void a(DeductEntity deductEntity) {
            this.f9285a = deductEntity;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            int i;
            try {
                i = Integer.parseInt(String.valueOf(s));
            } catch (Exception unused) {
                i = -1;
            }
            DeductEntity deductEntity = this.f9285a;
            if (deductEntity != null) {
                deductEntity.setDeductScore(i);
            }
            if (i == 5 || i == 10 || i == 100) {
                return;
            }
            cn.mucang.android.core.utils.u.h("分值只能设置为5，10，100");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.z$c */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$initListener$1$1", "Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$DeductDescEditListener;", "onConfirm", "", SocialConstants.PARAM_APP_DESC, "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewBindingHolder<DeductSettingItemDeductBinding> f9286a;
        final /* synthetic */ DeductEntity b;

        c(ViewBindingHolder<DeductSettingItemDeductBinding> viewBindingHolder, DeductEntity deductEntity) {
            this.f9286a = viewBindingHolder;
            this.b = deductEntity;
        }

        @Override // cn.mucang.jiakaoyi.uilib.deduct.DeductItemBinder.a
        public void a(String desc) {
            kotlin.jvm.internal.r.e(desc, "desc");
            if (desc.length() == 0) {
                cn.mucang.android.core.utils.u.h("扣分说明不能为空");
            } else {
                ((DeductSettingItemDeductBinding) this.f9286a.getViewBinding()).infoTv.setText(desc);
                this.b.setDesc(desc);
            }
        }
    }

    public /* synthetic */ DeductItemBinder(FragmentManager fragmentManager, KeMu keMu, boolean z, int i, kotlin.jvm.internal.o oVar) {
        this(fragmentManager, keMu, (i & 4) != 0 ? true : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(DeductEntity item, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        Activity activityA = ActivityUtils.a(view.getContext());
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        new SelectVoiceDialog(String.valueOf(item.getCode())).show(((androidx.appcompat.app.d) activityA).getSupportFragmentManager(), "");
    }

    private final void C(DeductSettingItemDeductBinding deductSettingItemDeductBinding, int i) {
        if (i == JudgeType.auto.judgeType) {
            deductSettingItemDeductBinding.manualJudgeTv.setSelected(false);
            deductSettingItemDeductBinding.systemJudgeTv.setSelected(true);
        } else if (i == JudgeType.manual.judgeType) {
            deductSettingItemDeductBinding.manualJudgeTv.setSelected(true);
            deductSettingItemDeductBinding.systemJudgeTv.setSelected(false);
        } else if (i == JudgeType.both.judgeType) {
            deductSettingItemDeductBinding.manualJudgeTv.setSelected(true);
            deductSettingItemDeductBinding.systemJudgeTv.setSelected(true);
        } else {
            deductSettingItemDeductBinding.manualJudgeTv.setSelected(false);
            deductSettingItemDeductBinding.systemJudgeTv.setSelected(false);
        }
    }

    private final int n(boolean z, boolean z2) {
        if (z && z2) {
            return JudgeType.both.judgeType;
        }
        if (z) {
            return JudgeType.manual.judgeType;
        }
        return z2 ? JudgeType.auto.judgeType : JudgeType.none.judgeType;
    }

    private final void p(final ViewBindingHolder<DeductSettingItemDeductBinding> viewBindingHolder, final DeductEntity deductEntity) {
        EditText editText = ((DeductSettingItemDeductBinding) viewBindingHolder.getViewBinding()).scoreTv;
        kotlin.jvm.internal.r.d(editText, "holder.viewBinding.scoreTv");
        b bVar = this.f9284e.get(editText);
        if (bVar == null) {
            bVar = new b(this);
            editText.addTextChangedListener(bVar);
            this.f9284e.put(editText, bVar);
        }
        bVar.a(deductEntity);
        ((DeductSettingItemDeductBinding) viewBindingHolder.getViewBinding()).infoTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductItemBinder.q(deductEntity, this, viewBindingHolder, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(DeductEntity item, DeductItemBinder this$0, ViewBindingHolder holder, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(holder, "$holder");
        DeductDescDialog deductDescDialog = new DeductDescDialog();
        Bundle bundle = new Bundle();
        bundle.putString("deduct_desc", item.getDesc());
        deductDescDialog.setArguments(bundle);
        deductDescDialog.v(new c(holder, item));
        deductDescDialog.show(this$0.getB(), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(DeductEntity item, DeductItemBinder this$0, ViewBindingHolder holder, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(holder, "$holder");
        view.setSelected(!view.isSelected());
        item.setJudgeType(this$0.n(((DeductSettingItemDeductBinding) holder.getViewBinding()).manualJudgeTv.isSelected(), view.isSelected()));
        this$0.C((DeductSettingItemDeductBinding) holder.getViewBinding(), item.getJudgeType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(DeductEntity item, DeductItemBinder this$0, ViewBindingHolder holder, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(holder, "$holder");
        view.setSelected(!view.isSelected());
        item.setJudgeType(this$0.n(view.isSelected(), ((DeductSettingItemDeductBinding) holder.getViewBinding()).systemJudgeTv.isSelected()));
        this$0.C((DeductSettingItemDeductBinding) holder.getViewBinding(), item.getJudgeType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(DeductEntity item, DeductItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DeductRuleDialogHelper.f9530a.b(item, this$0.getB());
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<DeductSettingItemDeductBinding> holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.i(holder);
        b bVarRemove = this.f9284e.remove(((DeductSettingItemDeductBinding) holder.getViewBinding()).scoreTv);
        if (bVarRemove == null) {
            return;
        }
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).scoreTv.removeTextChangedListener(bVarRemove);
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final FragmentManager getB() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<DeductSettingItemDeductBinding> holder, final DeductEntity item) {
        String string;
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        TextView textView = ((DeductSettingItemDeductBinding) holder.getViewBinding()).codeTv;
        StringBuilder sb = new StringBuilder();
        sb.append(item.getCode());
        if (MucangConfig.v()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('(');
            sb2.append(item.getUseMode());
            sb2.append(')');
            string = sb2.toString();
        } else {
            string = "";
        }
        sb.append(string);
        textView.setText(sb.toString());
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).infoTv.setText(item.getDesc());
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).scoreTv.setText(String.valueOf(item.getDeductScore()));
        if (item.isCanAutoJudge()) {
            ((DeductSettingItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setVisibility(0);
        } else {
            ((DeductSettingItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setVisibility(4);
        }
        C((DeductSettingItemDeductBinding) holder.getViewBinding(), item.getJudgeType());
        if (this.c == KeMu.K3) {
            ((DeductSettingItemDeductBinding) holder.getViewBinding()).manualJudgeTv.setVisibility(0);
            ((DeductSettingItemDeductBinding) holder.getViewBinding()).checkRules.setVisibility(8);
        } else {
            ((DeductSettingItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setText("系统评判");
            ((DeductSettingItemDeductBinding) holder.getViewBinding()).manualJudgeTv.setVisibility(8);
            String ruleIds = item.getRuleIds();
            if (ruleIds == null || ruleIds.length() == 0) {
                ((DeductSettingItemDeductBinding) holder.getViewBinding()).checkRules.setVisibility(4);
            } else {
                ((DeductSettingItemDeductBinding) holder.getViewBinding()).checkRules.setVisibility(0);
            }
        }
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).infoTv.setEnabled(this.f9283d);
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).scoreTv.setEnabled(this.f9283d);
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).voice.setEnabled(this.f9283d);
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).checkRules.setEnabled(this.f9283d);
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).manualJudgeTv.setEnabled(this.f9283d);
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setEnabled(this.f9283d);
        if (!this.f9283d) {
            TextView textView2 = ((DeductSettingItemDeductBinding) holder.getViewBinding()).manualJudgeTv;
            Application context = MucangConfig.getContext();
            int i = R.drawable.selector_diff_choice;
            textView2.setCompoundDrawablesWithIntrinsicBounds(androidx.core.a.a.f(context, i), (Drawable) null, (Drawable) null, (Drawable) null);
            ((DeductSettingItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setCompoundDrawablesWithIntrinsicBounds(androidx.core.a.a.f(MucangConfig.getContext(), i), (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).checkRules.setTextColor(Color.parseColor("#ff33b5e5"));
        p(holder, item);
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductItemBinder.x(item, this, holder, view);
            }
        });
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).manualJudgeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductItemBinder.y(item, this, holder, view);
            }
        });
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).checkRules.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductItemBinder.z(item, this, view);
            }
        });
        ((DeductSettingItemDeductBinding) holder.getViewBinding()).voice.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductItemBinder.A(item, view);
            }
        });
    }

    public DeductItemBinder(FragmentManager supportFragmentManager, KeMu keMu, boolean z) {
        kotlin.jvm.internal.r.e(supportFragmentManager, "supportFragmentManager");
        kotlin.jvm.internal.r.e(keMu, "keMu");
        this.b = supportFragmentManager;
        this.c = keMu;
        this.f9283d = z;
        this.f9284e = new HashMap<>();
    }
}
