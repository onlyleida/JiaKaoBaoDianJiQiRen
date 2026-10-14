package cn.mucang.android.account.g.q;

import android.content.Intent;
import cn.mucang.android.account.activity.CheckUserActivity;
import cn.mucang.android.account.g.g;

/* JADX INFO: loaded from: classes.dex */
public class e extends a<CheckUserActivity, String> {
    g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2166e;

    public e(CheckUserActivity checkUserActivity, String str, String str2) {
        super(checkUserActivity, "验证身份");
        this.c = new g();
        this.f2165d = str;
        this.f2166e = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.core.api.c.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void b(String str) {
        CheckUserActivity checkUserActivity = (CheckUserActivity) f();
        Intent intent = new Intent();
        intent.putExtra("__change_phone_session_id__", str);
        checkUserActivity.setResult(-1, intent);
        checkUserActivity.finish();
    }

    @Override // cn.mucang.android.core.api.c.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public String request() throws Exception {
        return this.c.h(this.f2165d, this.f2166e);
    }
}
