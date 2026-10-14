package cn.mucang.android.account.activity.o1;

import android.content.Intent;
import android.view.View;
import cn.mucang.android.account.activity.ValidationActivity;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.core.api.exception.WeakRefLostException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<ValidationActivity> f2120a;

    public g(ValidationActivity validationActivity) {
        this.f2120a = new WeakReference<>(validationActivity);
    }

    protected ValidationActivity a() {
        ValidationActivity validationActivity = this.f2120a.get();
        if (validationActivity == null || validationActivity.isFinishing()) {
            throw new WeakRefLostException();
        }
        return validationActivity;
    }

    public boolean b(Intent intent) {
        return true;
    }

    public void c(int i, int i2, Intent intent) {
    }

    public abstract void d(View view);

    public void e(View view) {
    }

    public abstract void f(String str, String str2);

    protected void g() {
        CheckType checkType = a().getF2053f().getCheckType();
        CheckType checkType2 = CheckType.TRUE;
        if (checkType == checkType2) {
            cn.mucang.android.account.f.i(checkType2);
        }
    }
}
