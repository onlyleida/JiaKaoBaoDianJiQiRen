package cn.mucang.jiakaoyi.uilib.ui.skin;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityExamSkinBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.ExamSkinItemBinding;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0004\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\tH\u0014J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0002J\b\u0010\u0010\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "selectSkin", "Lcn/mucang/jiakaoyi/uilib/ui/skin/BaseSkin;", "changeSkin", "", "skin", "getStatName", "", "init", "loadSkinList", "", "save", "Companion", "SkinItemBinder", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamSkinActivity extends BaseViewBindingActivity<ActivityExamSkinBinding> {
    private BaseSkin b;
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$SkinItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/skin/BaseSkin;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;", "(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<BaseSkin, ExamSkinItemBinding> {
        final /* synthetic */ ExamSkinActivity b;

        public a(ExamSkinActivity this$0) {
            r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(ViewBindingHolder holder, ExamSkinActivity this$0, BaseSkin item, View view) {
            r.e(holder, "$holder");
            r.e(this$0, "this$0");
            r.e(item, "$item");
            if (((ExamSkinItemBinding) holder.getViewBinding()).nameCb.isSelected()) {
                return;
            }
            ((ExamSkinItemBinding) holder.getViewBinding()).nameCb.setSelected(true);
            this$0.n(item);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<ExamSkinItemBinding> holder, final BaseSkin item) {
            r.e(holder, "holder");
            r.e(item, "item");
            ((ExamSkinItemBinding) holder.getViewBinding()).nameCb.setText(item.getSkinName());
            ((ExamSkinItemBinding) holder.getViewBinding()).nameCb.setSelected(item.getIsCheck());
            ((ExamSkinItemBinding) holder.getViewBinding()).image.setImageResource(item.getResourceId());
            ConstraintLayout root = ((ExamSkinItemBinding) holder.getViewBinding()).getRoot();
            final ExamSkinActivity examSkinActivity = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.skin.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExamSkinActivity.a.p(holder, examSkinActivity, item, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(BaseSkin baseSkin) {
        for (Object obj : this.c.c()) {
            if (obj instanceof BaseSkin) {
                BaseSkin baseSkin2 = (BaseSkin) obj;
                baseSkin2.e(baseSkin2.getSkinId() == baseSkin.getSkinId());
            }
        }
        this.b = baseSkin;
        this.c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ExamSkinActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(ExamSkinActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseSkin> s() {
        List<BaseSkin> skinList;
        ArrayList arrayList = new ArrayList();
        int iD = AppUtils.g() ? i0.d("keyExamSkinType", 0) : i0.d("keyK2ExamSkinType", 0);
        ExamSkinBaseProvider examSkinBaseProvider = (ExamSkinBaseProvider) DataProviderRegister.f3433a.a(ExamSkinBaseProvider.class, null);
        if (examSkinBaseProvider != null && (skinList = examSkinBaseProvider.getSkinList()) != null) {
            for (BaseSkin baseSkin : skinList) {
                boolean z = baseSkin.getSkinId() == iD;
                baseSkin.e(z);
                if (z) {
                    this.b = baseSkin;
                }
                arrayList.add(baseSkin);
            }
        }
        return arrayList;
    }

    private final void t() {
        if (AppUtils.g()) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this);
            jLoadingDialog.b("正在保存启用皮肤...");
            g.b(j0.a(w0.b()), null, null, new ExamSkinActivity$save$1(this, jLoadingDialog, null), 3, null);
            return;
        }
        BaseSkin baseSkin = this.b;
        if (baseSkin == null) {
            r.u("selectSkin");
            throw null;
        }
        i0.k("keyK2ExamSkinType", baseSkin.getSkinId());
        setResult(-1);
        finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "考试皮肤列表";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText("考试皮肤");
        g().titleLayout.actionTv.setText("确定");
        g().titleLayout.actionTv.setPadding(36, 5, 36, 5);
        g().titleLayout.actionTv.setVisibility(0);
        g().titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.skin.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExamSkinActivity.o(this.f10279a, view);
            }
        });
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.skin.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExamSkinActivity.p(this.f10278a, view);
            }
        });
        g().skinListRv.setLayoutManager(new GridLayoutManager(this, 3));
        RecyclerView recyclerView = g().skinListRv;
        com.drakeet.multitype.f fVar = this.c;
        fVar.g(BaseSkin.class, new a(this));
        fVar.i(s());
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        if (AppUtils.g()) {
            ExamSiteResUpdateHelper.f10312a.c(ExamSiteUtil.e(0L), new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.skin.ExamSkinActivity.init.4
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ExamSkinActivity.this.c.i(ExamSkinActivity.this.s());
                    ExamSkinActivity.this.c.notifyDataSetChanged();
                }
            });
        }
    }
}
