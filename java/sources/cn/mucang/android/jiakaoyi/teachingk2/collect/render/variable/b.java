package cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable;

import android.text.Editable;
import android.text.TextWatcher;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.f2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b<T> implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public T f6658a;

    protected void a() {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String strTrim = editable.toString().trim();
        if (strTrim.length() <= 0) {
            a();
        } else {
            b(this.f6658a, strTrim);
            LiveBus.d(f2.e.class).l(new f2.e());
        }
    }

    protected abstract void b(T t, String str);

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
