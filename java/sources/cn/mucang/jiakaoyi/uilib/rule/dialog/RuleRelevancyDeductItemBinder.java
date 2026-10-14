package cn.mucang.jiakaoyi.uilib.rule.dialog;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.JudgeType;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleRelevancyItemDeductBinding;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u001f B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u001e\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00182\u0006\u0010\u0019\u001a\u00020\u0002H\u0002J\u001e\u0010\u001a\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00182\u0006\u0010\u0019\u001a\u00020\u0002H\u0016J\u0016\u0010\u001b\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u0018H\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0011H\u0002R2\u0010\u0007\u001a&\u0012\u0004\u0012\u00020\t\u0012\b\u0012\u00060\nR\u00020\u00000\bj\u0012\u0012\u0004\u0012\u00020\t\u0012\b\u0012\u00060\nR\u00020\u0000`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\f\u001a&\u0012\u0004\u0012\u00020\t\u0012\b\u0012\u00060\rR\u00020\u00000\bj\u0012\u0012\u0004\u0012\u00020\t\u0012\b\u0012\u00060\rR\u00020\u0000`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleRelevancyItemDeductBinding;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "(Landroidx/fragment/app/FragmentManager;)V", "descListenerMap", "Ljava/util/HashMap;", "Landroid/widget/EditText;", "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductItemBinder$DescTextWatcher;", "Lkotlin/collections/HashMap;", "scoreListenerMap", "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductItemBinder$ScoreTextWatcher;", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "changeJudge", "", "manualJudge", "", "systemJudge", "initListener", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onBindViewHolder", "onViewRecycled", "renderJudgeUI", "viewBinding", "judgeType", "DescTextWatcher", "ScoreTextWatcher", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleRelevancyDeductItemBinder extends ViewBindingBinder<DeductEntity, RuleRelevancyItemDeductBinding> {
    private final HashMap<EditText, b> b;
    private final HashMap<EditText, a> c;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.n$a */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\r\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J*\u0010\u0013\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductItemBinder$DescTextWatcher;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductItemBinder;)V", "item", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "getItem", "()Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "setItem", "(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private DeductEntity f9532a;

        public a(RuleRelevancyDeductItemBinder this$0) {
            r.e(this$0, "this$0");
        }

        public final void a(DeductEntity deductEntity) {
            this.f9532a = deductEntity;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            String strValueOf;
            try {
                strValueOf = String.valueOf(s);
            } catch (Exception e2) {
                e2.printStackTrace();
                strValueOf = "";
            }
            DeductEntity deductEntity = this.f9532a;
            if (deductEntity == null) {
                return;
            }
            deductEntity.setDesc(strValueOf);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.n$b */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\r\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J*\u0010\u0013\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductItemBinder$ScoreTextWatcher;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductItemBinder;)V", "item", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "getItem", "()Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "setItem", "(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class b implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private DeductEntity f9533a;

        public b(RuleRelevancyDeductItemBinder this$0) {
            r.e(this$0, "this$0");
        }

        public final void a(DeductEntity deductEntity) {
            this.f9533a = deductEntity;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            int i;
            try {
                i = Integer.parseInt(String.valueOf(s));
            } catch (Exception unused) {
                i = -1;
            }
            DeductEntity deductEntity = this.f9533a;
            if (deductEntity != null) {
                deductEntity.setDeductScore(i);
            }
            if (i == 5 || i == 10 || i == 100) {
                return;
            }
            u.h("分值只能设置为5，10，100");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    public RuleRelevancyDeductItemBinder(FragmentManager supportFragmentManager) {
        r.e(supportFragmentManager, "supportFragmentManager");
        this.b = new HashMap<>();
        this.c = new HashMap<>();
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

    private final void o(ViewBindingHolder<RuleRelevancyItemDeductBinding> viewBindingHolder, DeductEntity deductEntity) {
        EditText editText = ((RuleRelevancyItemDeductBinding) viewBindingHolder.getViewBinding()).scoreTv;
        r.d(editText, "holder.viewBinding.scoreTv");
        b bVar = this.b.get(editText);
        if (bVar == null) {
            bVar = new b(this);
            editText.addTextChangedListener(bVar);
            this.b.put(editText, bVar);
        }
        bVar.a(deductEntity);
        EditText editText2 = ((RuleRelevancyItemDeductBinding) viewBindingHolder.getViewBinding()).descTv;
        r.d(editText2, "holder.viewBinding.descTv");
        a aVar = this.c.get(editText2);
        if (aVar == null) {
            aVar = new a(this);
            editText2.addTextChangedListener(aVar);
            this.c.put(editText2, aVar);
        }
        aVar.a(deductEntity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(DeductEntity item, RuleRelevancyDeductItemBinder this$0, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        view.setSelected(!view.isSelected());
        item.setJudgeType(this$0.n(((RuleRelevancyItemDeductBinding) holder.getViewBinding()).manualJudgeTv.isSelected(), view.isSelected()));
        this$0.z((RuleRelevancyItemDeductBinding) holder.getViewBinding(), item.getJudgeType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(DeductEntity item, RuleRelevancyDeductItemBinder this$0, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        view.setSelected(!view.isSelected());
        item.setJudgeType(this$0.n(view.isSelected(), ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).systemJudgeTv.isSelected()));
        this$0.z((RuleRelevancyItemDeductBinding) holder.getViewBinding(), item.getJudgeType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(DeductEntity item, View view) {
        r.e(item, "$item");
        TtsManager.r(item.getDesc(), TtsGrade.GlobalTip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x(View view, MotionEvent motionEvent) {
        view.getParent().requestDisallowInterceptTouchEvent(true);
        if ((motionEvent.getAction() & 255) == 1) {
            view.getParent().requestDisallowInterceptTouchEvent(false);
        }
        return false;
    }

    private final void z(RuleRelevancyItemDeductBinding ruleRelevancyItemDeductBinding, int i) {
        if (i == JudgeType.auto.judgeType) {
            ruleRelevancyItemDeductBinding.manualJudgeTv.setSelected(false);
            ruleRelevancyItemDeductBinding.systemJudgeTv.setSelected(true);
        } else if (i == JudgeType.manual.judgeType) {
            ruleRelevancyItemDeductBinding.manualJudgeTv.setSelected(true);
            ruleRelevancyItemDeductBinding.systemJudgeTv.setSelected(false);
        } else if (i == JudgeType.both.judgeType) {
            ruleRelevancyItemDeductBinding.manualJudgeTv.setSelected(true);
            ruleRelevancyItemDeductBinding.systemJudgeTv.setSelected(true);
        } else {
            ruleRelevancyItemDeductBinding.manualJudgeTv.setSelected(false);
            ruleRelevancyItemDeductBinding.systemJudgeTv.setSelected(false);
        }
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<RuleRelevancyItemDeductBinding> holder, final DeductEntity item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).codeTv.setText(String.valueOf(item.getCode()));
        ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).descTv.setText(item.getDesc());
        ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).scoreTv.setText(String.valueOf(item.getDeductScore()));
        o(holder, item);
        if (item.isCanAutoJudge()) {
            ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setVisibility(0);
        } else {
            ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setVisibility(4);
        }
        ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleRelevancyDeductItemBinder.u(item, this, holder, view);
            }
        });
        ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).manualJudgeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleRelevancyDeductItemBinder.v(item, this, holder, view);
            }
        });
        z((RuleRelevancyItemDeductBinding) holder.getViewBinding(), item.getJudgeType());
        if (AppUtils.g()) {
            ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).manualJudgeTv.setVisibility(0);
        } else {
            ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).systemJudgeTv.setText("系统评判");
            ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).manualJudgeTv.setVisibility(8);
        }
        ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).voice.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleRelevancyDeductItemBinder.w(item, view);
            }
        });
        ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).descTv.setOnTouchListener(new View.OnTouchListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.c
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return RuleRelevancyDeductItemBinder.x(view, motionEvent);
            }
        });
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<RuleRelevancyItemDeductBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        b bVarRemove = this.b.remove(((RuleRelevancyItemDeductBinding) holder.getViewBinding()).scoreTv);
        if (bVarRemove != null) {
            ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).scoreTv.removeTextChangedListener(bVarRemove);
        }
        a aVarRemove = this.c.remove(((RuleRelevancyItemDeductBinding) holder.getViewBinding()).descTv);
        if (aVarRemove == null) {
            return;
        }
        ((RuleRelevancyItemDeductBinding) holder.getViewBinding()).descTv.removeTextChangedListener(aVarRemove);
    }
}
