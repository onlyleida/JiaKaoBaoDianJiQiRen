package cn.mucang.android.core.api.url.impl;

import cn.mucang.android.core.api.url.PrivacyAgreementSettingProvider;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.api.f.h.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"Lcn/mucang/android/core/api/url/impl/DefaultPrivacyAgreementSettingProvider;", "Lcn/mucang/android/core/api/url/PrivacyAgreementSettingProvider;", "()V", "isUserAcceptPrivacyAgreement", "", "setUserAcceptPrivacyAgreement", "", "accept", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DefaultPrivacyAgreementSettingProvider implements PrivacyAgreementSettingProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultPrivacyAgreementSettingProvider f2390a = new DefaultPrivacyAgreementSettingProvider();

    private DefaultPrivacyAgreementSettingProvider() {
    }

    @Override // cn.mucang.android.core.api.url.PrivacyAgreementSettingProvider
    public boolean a() {
        return PrivacyAgreementSetting.d();
    }
}
