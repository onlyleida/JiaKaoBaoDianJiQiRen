package cn.mucang.android.jiakaoyi.teachingk2.collect;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.image.view.MucangRoundCornerImageView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.MaterialApi;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.MaterialModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityMaterialSelectBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemMaterialSelectBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mobile.auth.gatewayauth.ResultCode;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 !2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002!\"B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u0007H\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0014J\b\u0010\u001e\u001a\u00020\u001bH\u0003J\b\u0010\u001f\u001a\u00020\u001bH\u0002J\u0012\u0010 \u001a\u00020\u001b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000b\u001a\u0004\b\u0012\u0010\tR\u001b\u0010\u0014\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u000b\u001a\u0004\b\u0015\u0010\u000fR\u001b\u0010\u0017\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u000b\u001a\u0004\b\u0018\u0010\u000f¨\u0006#"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMaterialSelectBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "examSiteId", "", "getExamSiteId", "()Ljava/lang/String;", "examSiteId$delegate", "Lkotlin/Lazy;", "materialType", "", "getMaterialType", "()I", "materialType$delegate", "path", "getPath", "path$delegate", "step", "getStep", "step$delegate", "subStep", "getSubStep", "subStep$delegate", "confirm", "", "getStatName", "init", "initInfo", "loadData", "select", "Companion", "MaterialItemBinder", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MaterialSelectActivity extends BaseViewBindingActivity<ActivityMaterialSelectBinding> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f6471h = new a(null);
    private final Lazy b = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.MaterialSelectActivity$materialType$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.type", 1));
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.MaterialSelectActivity$step$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.step", 0));
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f6472d = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.MaterialSelectActivity$subStep$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.substep", 0));
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f6473e = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.MaterialSelectActivity$examSiteId$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("key.examSiteId");
            return stringExtra == null ? "" : stringExtra;
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f6474f = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.MaterialSelectActivity$path$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return this.this$0.getIntent().getStringExtra("key.select");
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.drakeet.multitype.f f6475g;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J<\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$Companion;", "", "()V", "KEY_EXAM_SITE", "", "KEY_RESULT", "KEY_SELECT", "KEY_STEP", "KEY_SUB_STEP", "KEY_TYPE", "createResultIntent", "Landroid/content/Intent;", "activity", "Landroid/app/Activity;", "materialType", "", "step", "subStep", "examSiteId", "path", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final Intent a(Activity activity, int i, int i2, int i3, String str, String str2) {
            kotlin.jvm.internal.r.e(activity, "activity");
            Intent intent = new Intent(activity, (Class<?>) MaterialSelectActivity.class);
            intent.putExtra("key.type", i);
            intent.putExtra("key.step", i2);
            intent.putExtra("key.substep", i3);
            intent.putExtra("key.examSiteId", str);
            intent.putExtra("key.select", str2);
            return intent;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$MaterialItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemMaterialSelectBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<MaterialModel, ItemMaterialSelectBinding> {
        final /* synthetic */ MaterialSelectActivity b;

        public b(MaterialSelectActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(MaterialSelectActivity this$0, MaterialModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.B(item.getPath());
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemMaterialSelectBinding> holder, final MaterialModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            f.a.a.b.a.a.i(((ItemMaterialSelectBinding) holder.getViewBinding()).coverIv, item.getPath(), 0);
            ((ItemMaterialSelectBinding) holder.getViewBinding()).descTv.setText(item.getDesc());
            ((ItemMaterialSelectBinding) holder.getViewBinding()).selectGroup.setVisibility(item.getSelect() ? 0 : 8);
            MucangRoundCornerImageView mucangRoundCornerImageView = ((ItemMaterialSelectBinding) holder.getViewBinding()).coverIv;
            final MaterialSelectActivity materialSelectActivity = this.b;
            mucangRoundCornerImageView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MaterialSelectActivity.b.p(materialSelectActivity, item, view);
                }
            });
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6476a;

        static {
            int[] iArr = new int[Step.values().length];
            iArr[Step.K2_DaoCheRuKu.ordinal()] = 1;
            iArr[Step.K2_CeFangTingChe.ordinal()] = 2;
            f6476a = iArr;
        }
    }

    public MaterialSelectActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(MaterialModel.class, new b(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f6475g = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(MaterialSelectActivity this$0, List list) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(list, "$list");
        this$0.f6475g.i(list);
        this$0.B(this$0.o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(String str) {
        for (Object obj : this.f6475g.c()) {
            if (obj instanceof MaterialModel) {
                MaterialModel materialModel = (MaterialModel) obj;
                materialModel.setSelect(kotlin.text.t.q(materialModel.getPath(), str, false, 2, null));
            }
        }
        this.f6475g.notifyDataSetChanged();
    }

    private final void k() {
        Object next;
        Iterator<Object> it = this.f6475g.c().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if ((next instanceof MaterialModel) && ((MaterialModel) next).getSelect()) {
                break;
            }
        }
        if (next == null) {
            cn.mucang.android.core.utils.u.h("请选择素材");
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("key.result", (Serializable) next);
        kotlin.v vVar = kotlin.v.f15822a;
        setResult(-1, intent);
        finish();
    }

    public static final Intent l(Activity activity, int i, int i2, int i3, String str, String str2) {
        return f6471h.a(activity, i, i2, i3, str, str2);
    }

    private final String m() {
        return (String) this.f6473e.getValue();
    }

    private final int n() {
        return ((Number) this.b.getValue()).intValue();
    }

    private final String o() {
        return (String) this.f6474f.getValue();
    }

    private final int p() {
        return ((Number) this.c.getValue()).intValue();
    }

    private final int q() {
        return ((Number) this.f6472d.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(MaterialSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(MaterialSelectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.k();
    }

    @SuppressLint({"SetTextI18n"})
    private final void t() {
        String[] strArr;
        if (n() == 1) {
            g().typeTv.setText("选择图片");
        } else {
            g().typeTv.setText("选择视频");
        }
        ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        Step stepFindWithType = Step.findWithType(p());
        int i = stepFindWithType == null ? -1 : c.f6476a[stepFindWithType.ordinal()];
        if (i != 1) {
            strArr = i != 2 ? new String[]{"开到结束点"} : new String[]{"开到倒车点", "停车到车库", "出库"};
        } else {
            strArr = new String[]{"开到倒车点", "右倒库", "左出库", "左倒库", "右出库"};
        }
        TextView textView = g().descTv;
        StringBuilder sb = new StringBuilder();
        sb.append((Object) (examSiteModelD == null ? null : examSiteModelD.examSiteName));
        sb.append('-');
        sb.append((Object) stepFindWithType.getStepName());
        sb.append('-');
        sb.append(strArr[q() - 1]);
        textView.setText(sb.toString());
    }

    private final void y() {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.l
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                MaterialSelectActivity.z(this.f6511a);
            }
        }, "正在加载", "加载失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(final MaterialSelectActivity this$0) throws Exception {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        final List<MaterialModel> listM = new MaterialApi().m(this$0.n(), this$0.m(), this$0.p(), this$0.q());
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.j
            @Override // java.lang.Runnable
            public final void run() {
                MaterialSelectActivity.A(this.f6509a, listM);
            }
        });
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "选择素材页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        if (p() == 0 || q() == 0 || n0.e(m())) {
            cn.mucang.android.core.utils.u.h(ResultCode.MSG_ERROR_INVALID_PARAM);
            finish();
            return;
        }
        g().backTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialSelectActivity.r(this.f6534a, view);
            }
        });
        g().confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialSelectActivity.s(this.f6510a, view);
            }
        });
        g().dataRv.setLayoutManager(new GridLayoutManager(this, 5));
        g().dataRv.setAdapter(this.f6475g);
        t();
        y();
    }
}
