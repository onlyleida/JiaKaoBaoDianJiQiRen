package cn.mucang.jiakaoyi.uilib.siterule;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PasswordDialog;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.databinding.ExamSiteRuleSwitchActivityBinding;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;", "viewModel", "Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;", "getStatName", "", "onBackPressed", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SwitchExamSiteRuleActivity extends BaseActivity {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f9592d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExamSiteRuleSwitchActivityBinding f9593a;
    private SwitchSiteRuleViewModel b;
    private JLoadingDialog c;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$Companion;", "", "()V", "createIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "showAddExam", "", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "launch", "", "isAgent", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final Intent a(Context context, boolean z, KeMu keMu) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(keMu, "keMu");
            Intent intent = new Intent(context, (Class<?>) SwitchExamSiteRuleActivity.class);
            intent.putExtra("showAddExam", z);
            intent.putExtra("keMu", keMu);
            return intent;
        }

        public final void b(Context context, boolean z, boolean z2, KeMu keMu) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(keMu, "keMu");
            Intent intent = new Intent(context, (Class<?>) SwitchExamSiteRuleActivity.class);
            intent.putExtra("showAddExam", z);
            intent.putExtra("isAgent", z2);
            intent.putExtra("keMu", keMu);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9594a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f9594a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends com.drakeet.multitype.f {
        final /* synthetic */ KeMu c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f9595d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(KeMu keMu, boolean z) {
            super(null, 0, null, 7, null);
            this.c = keMu;
            this.f9595d = z;
            g(ExamSiteItem.class, new RuleSiteItemBinder(keMu, z));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(SwitchExamSiteRuleActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(SwitchExamSiteRuleActivity this$0, KeMu keMu) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(keMu, "$keMu");
        SwitchSiteRuleViewModel switchSiteRuleViewModel = this$0.b;
        if (switchSiteRuleViewModel != null) {
            switchSiteRuleViewModel.k(keMu);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(SwitchExamSiteRuleActivity this$0, c adapter, long j, List it) {
        boolean z;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(adapter, "$adapter");
        kotlin.jvm.internal.r.d(it, "it");
        Iterator it2 = it.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            } else if (((ExamSiteItem) it2.next()).getIsSelected()) {
                z = true;
                break;
            }
        }
        if (!z) {
            Iterator it3 = it.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    if (!(!it.isEmpty()) || z) {
                        break;
                        break;
                    } else {
                        ((ExamSiteItem) it.get(0)).c(true);
                        break;
                    }
                }
                ExamSiteItem examSiteItem = (ExamSiteItem) it3.next();
                if (examSiteItem.getExamSite().examSiteId == j) {
                    examSiteItem.c(true);
                    break;
                }
            }
        }
        adapter.i(it);
        adapter.notifyDataSetChanged();
        if (it.isEmpty()) {
            ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding = this$0.f9593a;
            if (examSiteRuleSwitchActivityBinding != null) {
                examSiteRuleSwitchActivityBinding.stateLayout.d();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding2 = this$0.f9593a;
        if (examSiteRuleSwitchActivityBinding2 != null) {
            examSiteRuleSwitchActivityBinding2.stateLayout.c();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SwitchExamSiteRuleActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9594a[loadingState.ordinal()];
        if (i == 1) {
            ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding = this$0.f9593a;
            if (examSiteRuleSwitchActivityBinding != null) {
                examSiteRuleSwitchActivityBinding.stateLayout.f();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (i != 2) {
            return;
        }
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding2 = this$0.f9593a;
        if (examSiteRuleSwitchActivityBinding2 != null) {
            examSiteRuleSwitchActivityBinding2.stateLayout.g();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(SwitchExamSiteRuleActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if ((loadingState == null ? -1 : b.f9594a[loadingState.ordinal()]) != 1) {
            JLoadingDialog jLoadingDialog = this$0.c;
            if (jLoadingDialog != null) {
                jLoadingDialog.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        JLoadingDialog jLoadingDialog2 = new JLoadingDialog(this$0);
        this$0.c = jLoadingDialog2;
        if (jLoadingDialog2 == null) {
            return;
        }
        jLoadingDialog2.b(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final SwitchExamSiteRuleActivity this$0, boolean z, final KeMu keMu, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(keMu, "$keMu");
        if (AppUtils.k()) {
            AddRuleExamSiteDialog addRuleExamSiteDialog = new AddRuleExamSiteDialog();
            addRuleExamSiteDialog.y(new Function1<ExamSiteModel, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.siterule.SwitchExamSiteRuleActivity$onCreate$3$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(ExamSiteModel examSiteModel) {
                    invoke2(examSiteModel);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExamSiteModel examSiteModel) {
                    kotlin.jvm.internal.r.e(examSiteModel, "examSiteModel");
                    SwitchSiteRuleViewModel switchSiteRuleViewModel = this.this$0.b;
                    if (switchSiteRuleViewModel != null) {
                        switchSiteRuleViewModel.l(examSiteModel, keMu);
                    } else {
                        kotlin.jvm.internal.r.u("viewModel");
                        throw null;
                    }
                }
            });
            addRuleExamSiteDialog.show(this$0.getSupportFragmentManager(), "AddRuleExamSite");
        } else if (z) {
            AddRuleExamSiteDialog addRuleExamSiteDialog2 = new AddRuleExamSiteDialog();
            addRuleExamSiteDialog2.y(new Function1<ExamSiteModel, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.siterule.SwitchExamSiteRuleActivity$onCreate$3$3$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(ExamSiteModel examSiteModel) {
                    invoke2(examSiteModel);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExamSiteModel examSiteModel) {
                    kotlin.jvm.internal.r.e(examSiteModel, "examSiteModel");
                    SwitchSiteRuleViewModel switchSiteRuleViewModel = this.this$0.b;
                    if (switchSiteRuleViewModel != null) {
                        switchSiteRuleViewModel.l(examSiteModel, keMu);
                    } else {
                        kotlin.jvm.internal.r.u("viewModel");
                        throw null;
                    }
                }
            });
            addRuleExamSiteDialog2.show(this$0.getSupportFragmentManager(), "AddRuleExamSite");
        } else {
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "it.context");
            PasswordDialog passwordDialog = new PasswordDialog(context, PasswordDialog.PasswordType.Service);
            passwordDialog.i(new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.siterule.SwitchExamSiteRuleActivity$onCreate$3$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    AddRuleExamSiteDialog addRuleExamSiteDialog3 = new AddRuleExamSiteDialog();
                    final SwitchExamSiteRuleActivity switchExamSiteRuleActivity = this.this$0;
                    final KeMu keMu2 = keMu;
                    addRuleExamSiteDialog3.y(new Function1<ExamSiteModel, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.siterule.SwitchExamSiteRuleActivity$onCreate$3$2$1$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ kotlin.v invoke(ExamSiteModel examSiteModel) {
                            invoke2(examSiteModel);
                            return kotlin.v.f15822a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(ExamSiteModel examSiteModel) {
                            kotlin.jvm.internal.r.e(examSiteModel, "examSiteModel");
                            SwitchSiteRuleViewModel switchSiteRuleViewModel = switchExamSiteRuleActivity.b;
                            if (switchSiteRuleViewModel != null) {
                                switchSiteRuleViewModel.l(examSiteModel, keMu2);
                            } else {
                                kotlin.jvm.internal.r.u("viewModel");
                                throw null;
                            }
                        }
                    });
                    addRuleExamSiteDialog3.show(this.this$0.getSupportFragmentManager(), "AddRuleExamSite");
                }
            });
            passwordDialog.show();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "考试评判规则设置";
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        setResult(-1);
        finish();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j0 j0VarA = new m0(this).a(SwitchSiteRuleViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…uleViewModel::class.java)");
        this.b = (SwitchSiteRuleViewModel) j0VarA;
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBindingInflate = ExamSiteRuleSwitchActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(examSiteRuleSwitchActivityBindingInflate, "inflate(layoutInflater)");
        this.f9593a = examSiteRuleSwitchActivityBindingInflate;
        if (examSiteRuleSwitchActivityBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(examSiteRuleSwitchActivityBindingInflate.getRoot());
        boolean booleanExtra = getIntent().getBooleanExtra("showAddExam", false);
        final boolean booleanExtra2 = getIntent().getBooleanExtra("isAgent", false);
        if (booleanExtra) {
            ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding = this.f9593a;
            if (examSiteRuleSwitchActivityBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            examSiteRuleSwitchActivityBinding.addExamRuleTv.setVisibility(0);
        }
        Serializable serializableExtra = getIntent().getSerializableExtra("keMu");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu");
        final KeMu keMu = (KeMu) serializableExtra;
        final c cVar = new c(keMu, booleanExtra2);
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding2 = this.f9593a;
        if (examSiteRuleSwitchActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examSiteRuleSwitchActivityBinding2.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchExamSiteRuleActivity.n(this.f9598a, view);
            }
        });
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding3 = this.f9593a;
        if (examSiteRuleSwitchActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examSiteRuleSwitchActivityBinding3.titleLayout.titleTv.setText("选择规则");
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding4 = this.f9593a;
        if (examSiteRuleSwitchActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examSiteRuleSwitchActivityBinding4.stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.jiakaoyi.uilib.siterule.b0
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                SwitchExamSiteRuleActivity.o(this.f9600a, keMu);
            }
        });
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding5 = this.f9593a;
        if (examSiteRuleSwitchActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examSiteRuleSwitchActivityBinding5.addExamRuleTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchExamSiteRuleActivity.s(this.f9629a, booleanExtra2, keMu, view);
            }
        });
        final long jO = ExamSiteUtil.o(keMu, 0L, 2, null);
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding6 = this.f9593a;
        if (examSiteRuleSwitchActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examSiteRuleSwitchActivityBinding6.recyclerView.setLayoutManager(new LinearLayoutManager(this));
        ExamSiteRuleSwitchActivityBinding examSiteRuleSwitchActivityBinding7 = this.f9593a;
        if (examSiteRuleSwitchActivityBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examSiteRuleSwitchActivityBinding7.recyclerView.setAdapter(cVar);
        SwitchSiteRuleViewModel switchSiteRuleViewModel = this.b;
        if (switchSiteRuleViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        switchSiteRuleViewModel.i().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.siterule.y
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SwitchExamSiteRuleActivity.p(this.f9628a, cVar, jO, (List) obj);
            }
        });
        SwitchSiteRuleViewModel switchSiteRuleViewModel2 = this.b;
        if (switchSiteRuleViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        switchSiteRuleViewModel2.j().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.siterule.c0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SwitchExamSiteRuleActivity.q(this.f9602a, (LoadingState) obj);
            }
        });
        SwitchSiteRuleViewModel switchSiteRuleViewModel3 = this.b;
        if (switchSiteRuleViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        switchSiteRuleViewModel3.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.siterule.x
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SwitchExamSiteRuleActivity.r(this.f9627a, (LoadingState) obj);
            }
        });
        SwitchSiteRuleViewModel switchSiteRuleViewModel4 = this.b;
        if (switchSiteRuleViewModel4 != null) {
            switchSiteRuleViewModel4.k(keMu);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }
}
