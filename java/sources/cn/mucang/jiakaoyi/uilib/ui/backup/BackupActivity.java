package cn.mucang.jiakaoyi.uilib.ui.backup;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityBackupBinding;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;", "()V", "examSiteId", "", "getExamSiteId", "()J", "examSiteId$delegate", "Lkotlin/Lazy;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "keMu$delegate", "getStatName", "", "init", "", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BackupActivity extends BaseViewBindingActivity<ActivityBackupBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f9763d = new a(null);
    private final Lazy b = i.b(new Function0<KeMu>() { // from class: cn.mucang.jiakaoyi.uilib.ui.backup.BackupActivity$keMu$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final KeMu invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("key_kemu");
            Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu");
            return (KeMu) serializableExtra;
        }
    });
    private final Lazy c = i.b(new Function0<Long>() { // from class: cn.mucang.jiakaoyi.uilib.ui.backup.BackupActivity$examSiteId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Long invoke() {
            long longExtra = 0;
            if (this.this$0.getIntent().getBooleanExtra("isDefined", false)) {
                longExtra = this.this$0.getIntent().getLongExtra("examSiteId", 0L);
            } else {
                ExamSiteModel examSiteModelM = ExamSiteUtil.m(this.this$0.l());
                if (examSiteModelM != null) {
                    longExtra = examSiteModelM.examSiteId;
                }
            }
            return Long.valueOf(longExtra);
        }
    });

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$Companion;", "", "()V", "KEY_KEMU", "", "launch", "", "context", "Landroid/content/Context;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "examSiteId", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, long j, KeMu keMu) {
            r.e(context, "context");
            r.e(keMu, "keMu");
            Intent intent = new Intent(context, (Class<?>) BackupActivity.class);
            intent.putExtra("isDefined", true);
            intent.putExtra("examSiteId", j);
            intent.putExtra("key_kemu", keMu);
            ActivityUtils.c(context, intent);
        }

        public final void b(Context context, KeMu keMu) {
            r.e(context, "context");
            r.e(keMu, "keMu");
            Intent intent = new Intent(context, (Class<?>) BackupActivity.class);
            intent.putExtra("key_kemu", keMu);
            v vVar = v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KeMu l() {
        return (KeMu) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(BackupActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(BackupActivity this$0, View view) {
        r.e(this$0, "this$0");
        RuleDeductDiffActivity.f9287e.c(this$0, this$0.k(), true, this$0.l(), (96 & 16) != 0 ? DataType.RULE.getType() : DataType.RULE.getType(), (96 & 32) != 0 ? false : false, (96 & 64) != 0 ? null : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(BackupActivity this$0, View view) {
        r.e(this$0, "this$0");
        RuleDeductDiffActivity.f9287e.c(this$0, this$0.k(), true, this$0.l(), (96 & 16) != 0 ? DataType.RULE.getType() : DataType.DEDUCT.getType(), (96 & 32) != 0 ? false : false, (96 & 64) != 0 ? null : null);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "规则报备";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        g().titleLayout.titleTv.setText("扣分设置和评判规则报备");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.backup.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupActivity.m(this.f9765a, view);
            }
        });
        g().ruleView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.backup.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupActivity.n(this.f9766a, view);
            }
        });
        g().deductView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.backup.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupActivity.o(this.f9764a, view);
            }
        });
    }

    public final long k() {
        return ((Number) this.c.getValue()).longValue();
    }
}
