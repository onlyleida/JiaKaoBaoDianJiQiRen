package cn.mucang.sundial.library.qrcode.listener;

import cn.mucang.sundial.library.qrcode.model.GZQrAuthUser;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;", "", "", "scanLoginStatus", "Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;", "qrAuthUser", "Lkotlin/v;", "onCallback", "(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public interface GZScanLoginStatusListener {
    void onCallback(int scanLoginStatus, GZQrAuthUser qrAuthUser);
}
