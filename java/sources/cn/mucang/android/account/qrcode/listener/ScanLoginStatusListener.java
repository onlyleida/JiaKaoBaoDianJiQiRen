package cn.mucang.android.account.qrcode.listener;

import cn.mucang.android.account.p001qrcode.model.QrAuthUser;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.account.m.d.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcn/mucang/android/account/qrcode/listener/ScanLoginStatusListener;", "", "onCallback", "", "scanLoginStatus", "", "qrAuthUser", "Lcn/mucang/android/account/qrcode/model/QrAuthUser;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface ScanLoginStatusListener {
    void onCallback(int scanLoginStatus, QrAuthUser qrAuthUser);
}
