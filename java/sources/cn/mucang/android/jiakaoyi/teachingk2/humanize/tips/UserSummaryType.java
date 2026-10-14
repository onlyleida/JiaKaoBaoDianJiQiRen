package cn.mucang.android.jiakaoyi.teachingk2.humanize.tips;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public enum UserSummaryType {
    GUIDE(1, k0.a(R.string.teachbase_user_summary_type_guide)),
    ACHIEVE(2, k0.a(R.string.teachbase_user_summary_type_achieve)),
    GLOBAL(3, k0.a(R.string.teachbase_user_summary_type_global)),
    ATTEND(4, k0.a(R.string.teachbase_user_summary_type_attend)),
    FEATURE(5, k0.a(R.string.teachbase_user_summary_type_feature));

    private final String description;
    public final int type;

    UserSummaryType(int i, String str) {
        this.type = i;
        this.description = str;
    }
}
