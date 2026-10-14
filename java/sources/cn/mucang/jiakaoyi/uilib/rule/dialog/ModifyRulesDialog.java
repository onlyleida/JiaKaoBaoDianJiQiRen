package cn.mucang.jiakaoyi.uilib.rule.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import cn.mucang.jiakaoyi.uilib.deduct.DeductModifyItemBinder;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.rule.RuleModifyItemBinder;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.FragmentModifyRulesBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0016\u001a\u00020\rH\u0016J\u001a\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/dialog/ModifyRulesDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "mBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;", "saveCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "getSaveCallback", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "setSaveCallback", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ModifyRulesDialog extends androidx.fragment.app.c {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f9531a;
    private FragmentModifyRulesBinding b;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.m$a */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0002\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0011J4\u0010\u0012\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00130\n2\b\b\u0002\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/dialog/ModifyRulesDialog$Companion;", "", "()V", "IS_SAVE", "", "Mode", "RULE_LIST", "showDeductModify", "", "items", "", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "isSave", "", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "showRuleModify", "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(List<? extends DeductEntity> items, boolean z, FragmentManager supportFragmentManager, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> callback) {
            r.e(items, "items");
            r.e(supportFragmentManager, "supportFragmentManager");
            r.e(callback, "callback");
            ModifyRulesDialog modifyRulesDialog = new ModifyRulesDialog();
            modifyRulesDialog.w(callback);
            Bundle bundle = new Bundle();
            String jSONString = JSON.toJSONString(items);
            bundle.putBoolean("is_save", z);
            bundle.putString("Mode", "Deduct");
            bundle.putString("rule_id_list", jSONString);
            modifyRulesDialog.setArguments(bundle);
            modifyRulesDialog.show(supportFragmentManager, "ModifyRulesDialog");
        }

        public final void b(List<? extends RuleConfigEntity> items, boolean z, FragmentManager supportFragmentManager, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> callback) {
            r.e(items, "items");
            r.e(supportFragmentManager, "supportFragmentManager");
            r.e(callback, "callback");
            ModifyRulesDialog modifyRulesDialog = new ModifyRulesDialog();
            modifyRulesDialog.w(callback);
            Bundle bundle = new Bundle();
            String jSONString = JSON.toJSONString(items);
            bundle.putBoolean("is_save", z);
            bundle.putString("rule_id_list", jSONString);
            bundle.putString("Mode", "Rule");
            modifyRulesDialog.setArguments(bundle);
            modifyRulesDialog.show(supportFragmentManager, "ModifyRulesDialog");
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.m$b */
    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/rule/dialog/ModifyRulesDialog$onViewCreated$dataAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends com.drakeet.multitype.f {
        b() {
            super(null, 0, null, 7, null);
            g(RuleConfigEntity.class, new RuleModifyItemBinder());
            g(DeductEntity.class, new DeductModifyItemBinder());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(ModifyRulesDialog this$0, View view) {
        r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVarR = this$0.r();
        if (bVarR != null) {
            bVarR.callback(Boolean.TRUE);
        }
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(ModifyRulesDialog this$0, View view) {
        r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVarR = this$0.r();
        if (bVarR != null) {
            bVarR.callback(Boolean.FALSE);
        }
        this$0.dismiss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        FragmentModifyRulesBinding fragmentModifyRulesBindingInflate = FragmentModifyRulesBinding.inflate(getLayoutInflater());
        r.d(fragmentModifyRulesBindingInflate, "inflate(layoutInflater)");
        this.b = fragmentModifyRulesBindingInflate;
        if (fragmentModifyRulesBindingInflate == null) {
            r.u("mBinding");
            throw null;
        }
        ConstraintLayout root = fragmentModifyRulesBindingInflate.getRoot();
        r.d(root, "mBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -1);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.addFlags(1024);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 == null) {
            return;
        }
        dialog3.setCanceledOnTouchOutside(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        StringBuilder sb;
        String str;
        r.e(view, "view");
        Bundle arguments = getArguments();
        String string = arguments == null ? null : arguments.getString("rule_id_list");
        Bundle arguments2 = getArguments();
        boolean z = arguments2 == null ? true : arguments2.getBoolean("is_save");
        Bundle arguments3 = getArguments();
        String string2 = arguments3 == null ? null : arguments3.getString("Mode");
        List<? extends Object> changeList = r.a(string2, "Rule") ? JSON.parseArray(string, RuleConfigEntity.class) : JSON.parseArray(string, DeductEntity.class);
        String str2 = r.a(string2, "Rule") ? "规则" : "扣分码";
        FragmentModifyRulesBinding fragmentModifyRulesBinding = this.b;
        if (fragmentModifyRulesBinding == null) {
            r.u("mBinding");
            throw null;
        }
        TextView textView = fragmentModifyRulesBinding.titleTv;
        if (z) {
            sb = new StringBuilder();
            sb.append("发现");
            sb.append(changeList.size());
            sb.append((char) 26465);
            sb.append(str2);
            str = "有修改";
        } else {
            sb = new StringBuilder();
            sb.append("发现");
            sb.append(changeList.size());
            sb.append((char) 26465);
            sb.append(str2);
            str = "有修改,是否保存？";
        }
        sb.append(str);
        textView.setText(sb.toString());
        FragmentModifyRulesBinding fragmentModifyRulesBinding2 = this.b;
        if (fragmentModifyRulesBinding2 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentModifyRulesBinding2.saveTv.setText(z ? "保存" : "保存并返回");
        FragmentModifyRulesBinding fragmentModifyRulesBinding3 = this.b;
        if (fragmentModifyRulesBinding3 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentModifyRulesBinding3.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ModifyRulesDialog.u(this.f9520a, view2);
            }
        });
        FragmentModifyRulesBinding fragmentModifyRulesBinding4 = this.b;
        if (fragmentModifyRulesBinding4 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentModifyRulesBinding4.cancelTv.setText(z ? "取消" : "返回");
        FragmentModifyRulesBinding fragmentModifyRulesBinding5 = this.b;
        if (fragmentModifyRulesBinding5 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentModifyRulesBinding5.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ModifyRulesDialog.v(this.f9519a, view2);
            }
        });
        b bVar = new b();
        FragmentModifyRulesBinding fragmentModifyRulesBinding6 = this.b;
        if (fragmentModifyRulesBinding6 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentModifyRulesBinding6.ruleRecyclerView.setAdapter(bVar);
        if (changeList.size() <= 0) {
            FragmentModifyRulesBinding fragmentModifyRulesBinding7 = this.b;
            if (fragmentModifyRulesBinding7 != null) {
                fragmentModifyRulesBinding7.stateLayout.d();
                return;
            } else {
                r.u("mBinding");
                throw null;
            }
        }
        r.d(changeList, "changeList");
        bVar.i(changeList);
        bVar.notifyDataSetChanged();
        FragmentModifyRulesBinding fragmentModifyRulesBinding8 = this.b;
        if (fragmentModifyRulesBinding8 != null) {
            fragmentModifyRulesBinding8.stateLayout.c();
        } else {
            r.u("mBinding");
            throw null;
        }
    }

    public final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> r() {
        return this.f9531a;
    }

    public final void w(cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        this.f9531a = bVar;
    }
}
