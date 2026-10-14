package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivitySelectStepBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemSelectStepBinding;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\b\tB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;", "()V", "getStatName", "", "init", "", "Companion", "StepItemBinder", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectStepActivity extends BaseViewBindingActivity<ActivitySelectStepBinding> {
    public static final a b = new a(null);

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "programmeId", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, String programmeId) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(programmeId, "programmeId");
            TeachModelEditor.m(programmeId);
            ActivityUtils.c(context, new Intent(context, (Class<?>) SelectStepActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$StepItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;)V", "getStepIcon", "", "step", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<Step, ItemSelectStepBinding> {
        final /* synthetic */ SelectStepActivity b;

        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f6753a;

            static {
                int[] iArr = new int[Step.values().length];
                iArr[Step.K2_Global.ordinal()] = 1;
                iArr[Step.B2_Global.ordinal()] = 2;
                iArr[Step.K2_DaoCheRuKu.ordinal()] = 3;
                iArr[Step.K2_CeFangTingChe.ordinal()] = 4;
                iArr[Step.K2_ZhiJiaoZhuanWan.ordinal()] = 5;
                iArr[Step.K2_SQuXian.ordinal()] = 6;
                iArr[Step.K2_ShangPoQiBu.ordinal()] = 7;
                iArr[Step.K2_ShiHuaLuMian.ordinal()] = 8;
                iArr[Step.K2_SuiDao.ordinal()] = 9;
                iArr[Step.K2_QuKa.ordinal()] = 10;
                iArr[Step.K2_ZhaiLuDiaoTou.ordinal()] = 11;
                iArr[Step.K2_ETC.ordinal()] = 12;
                iArr[Step.B2_CeFangTingChe.ordinal()] = 13;
                iArr[Step.B2_ZhiJiaoZhuanWan.ordinal()] = 14;
                iArr[Step.B2_ShangPoQiBu.ordinal()] = 15;
                iArr[Step.B2_SQuXian.ordinal()] = 16;
                iArr[Step.B2_ZhaiLuDiaoTou.ordinal()] = 17;
                iArr[Step.B2_JinJiQingKuang.ordinal()] = 18;
                iArr[Step.B2_ShiHuaLuMian.ordinal()] = 19;
                iArr[Step.B2_SuiDao.ordinal()] = 20;
                iArr[Step.B2_ZhuangKao.ordinal()] = 21;
                iArr[Step.B2_DanBian.ordinal()] = 22;
                iArr[Step.B2_XianKuan.ordinal()] = 23;
                iArr[Step.B2_ZhangAi.ordinal()] = 24;
                iArr[Step.B2_QiFu.ordinal()] = 25;
                iArr[Step.B2_ShanLu.ordinal()] = 26;
                iArr[Step.B2_GaoSu.ordinal()] = 27;
                iArr[Step.B2_ChunHuaLu.ordinal()] = 28;
                f6753a = iArr;
            }
        }

        public b(SelectStepActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        private final int n(Step step) {
            switch (a.f6753a[step.ordinal()]) {
                case 1:
                case 2:
                    return R.drawable.step_icon_global;
                case 3:
                    return R.drawable.step_icon_daoku;
                case 4:
                    return R.drawable.step_icon_cefang;
                case 5:
                    return R.drawable.step_icon_zhijiao;
                case 6:
                    return R.drawable.step_icon_quxian;
                case 7:
                    return R.drawable.step_icon_shangpo;
                case 8:
                    return R.drawable.step_icon_hualu;
                case 9:
                    return R.drawable.step_icon_suidao;
                case 10:
                    return R.drawable.step_icon_quka;
                case 11:
                    return R.drawable.step_icon_zhailu;
                case 12:
                    return R.drawable.step_icon_etc;
                case 13:
                    return R.drawable.step_icon_b2_cefang;
                case 14:
                    return R.drawable.step_icon_b2_zhijiao;
                case 15:
                    return R.drawable.step_icon_b2_shangpo;
                case 16:
                    return R.drawable.step_icon_b2_quxian;
                case 17:
                    return R.drawable.step_icon_b2_zhailu;
                case 18:
                    return R.drawable.step_icon_b2_jinji;
                case 19:
                    return R.drawable.step_icon_b2_yuwu;
                case 20:
                    return R.drawable.step_icon_b2_suidao;
                case 21:
                    return R.drawable.step_icon_b2_zhuangkao;
                case 22:
                    return R.drawable.step_icon_b2_danbian;
                case 23:
                    return R.drawable.step_icon_b2_xiankuan;
                case 24:
                    return R.drawable.step_icon_b2_zhangai;
                case 25:
                    return R.drawable.step_icon_b2_qifu;
                case 26:
                    return R.drawable.step_icon_b2_shanlu;
                case 27:
                    return R.drawable.step_icon_b2_gaosu;
                case 28:
                    return R.drawable.step_icon_b2_hualu;
                default:
                    return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(SelectStepActivity this$0, Step item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            StepTeachModelActivity.f6760f.a(this$0, item);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemSelectStepBinding> holder, final Step item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemSelectStepBinding) holder.getViewBinding()).stepTv.setText(item.zhStepName);
            ((ItemSelectStepBinding) holder.getViewBinding()).imageIv.setImageResource(n(item));
            ConstraintLayout root = ((ItemSelectStepBinding) holder.getViewBinding()).getRoot();
            final SelectStepActivity selectStepActivity = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.x0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectStepActivity.b.q(selectStepActivity, item, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(SelectStepActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "选择项目";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        List<Step> listRobotSteps;
        String str;
        g().title.titleTv.setText("选择项目");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectStepActivity.j(this.f6915a, view);
            }
        });
        g().recyclerView.setLayoutManager(new GridLayoutManager(this, 5));
        RecyclerView recyclerView = g().recyclerView;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(Step.class, new b(this));
        if (AppUtils.b()) {
            listRobotSteps = Step.b2RobotSteps();
            str = "b2RobotSteps()";
        } else {
            listRobotSteps = Step.robotSteps();
            str = "robotSteps()";
        }
        kotlin.jvm.internal.r.d(listRobotSteps, str);
        fVar.i(listRobotSteps);
        kotlin.v vVar = kotlin.v.f15822a;
        recyclerView.setAdapter(fVar);
    }
}
