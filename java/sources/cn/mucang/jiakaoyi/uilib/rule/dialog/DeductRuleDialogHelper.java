package cn.mucang.jiakaoyi.uilib.rule.dialog;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.jiakaoyi.uilib.deduct.dialog.DeductRelevancyRulesDialog;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/dialog/DeductRuleDialogHelper;", "", "()V", "SPLIT_CHAR", "", "showDeductDialog", "", ExifInterface.GPS_DIRECTION_TRUE, "item", "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "showRuleDialog", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductRuleDialogHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DeductRuleDialogHelper f9530a = new DeductRuleDialogHelper();

    private DeductRuleDialogHelper() {
    }

    public final <T> void a(RuleConfig<T> item, FragmentManager supportFragmentManager) {
        r.e(item, "item");
        r.e(supportFragmentManager, "supportFragmentManager");
        String str = item.deductIds;
        if (str == null || str.length() == 0) {
            u.h("暂无扣分码关联");
            return;
        }
        RuleRelevancyDeductsDialog ruleRelevancyDeductsDialog = new RuleRelevancyDeductsDialog();
        Bundle bundle = new Bundle();
        bundle.putSerializable("rule_item", item);
        bundle.putString("deduct_id_list", item.deductIds);
        ruleRelevancyDeductsDialog.setArguments(bundle);
        ruleRelevancyDeductsDialog.show(supportFragmentManager, "deduct_id_list");
    }

    public final void b(DeductEntity item, FragmentManager supportFragmentManager) {
        r.e(item, "item");
        r.e(supportFragmentManager, "supportFragmentManager");
        String ruleIds = item.getRuleIds();
        if (ruleIds == null || ruleIds.length() == 0) {
            u.h("暂无规则码关联");
            return;
        }
        DeductRelevancyRulesDialog deductRelevancyRulesDialog = new DeductRelevancyRulesDialog();
        Bundle bundle = new Bundle();
        bundle.putSerializable("deduct_item", item);
        bundle.putString("rule_id_list", item.getRuleIds());
        deductRelevancyRulesDialog.setArguments(bundle);
        deductRelevancyRulesDialog.show(supportFragmentManager, "rule_id_list");
    }
}
