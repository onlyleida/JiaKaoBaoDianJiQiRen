package com.tencent.open;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.connect.auth.QQToken;
import com.tencent.tauth.IUiListener;

/* JADX INFO: loaded from: classes6.dex */
public class SocialApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SocialApiIml f14050a;

    public SocialApi(QQToken qQToken) {
        this.f14050a = new SocialApiIml(qQToken);
    }

    public void ask(Activity activity, Bundle bundle, IUiListener iUiListener) {
        this.f14050a.ask(activity, bundle, iUiListener);
    }

    public void gift(Activity activity, Bundle bundle, IUiListener iUiListener) {
        this.f14050a.gift(activity, bundle, iUiListener);
    }

    public void invite(Activity activity, Bundle bundle, IUiListener iUiListener) {
        this.f14050a.invite(activity, bundle, iUiListener);
    }

    public void story(Activity activity, Bundle bundle, IUiListener iUiListener) {
        this.f14050a.story(activity, bundle, iUiListener);
    }
}
