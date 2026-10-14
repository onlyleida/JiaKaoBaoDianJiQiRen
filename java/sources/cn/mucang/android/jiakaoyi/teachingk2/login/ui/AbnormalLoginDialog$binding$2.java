package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.content.Context;
import android.view.LayoutInflater;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogAbnormalLoginBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;"}, k = 3, mv = {1, 5, 1}, xi = 48)
final class AbnormalLoginDialog$binding$2 extends Lambda implements Function0<DialogAbnormalLoginBinding> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbnormalLoginDialog$binding$2(Context context) {
        super(0);
        this.$context = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final DialogAbnormalLoginBinding invoke() {
        return DialogAbnormalLoginBinding.inflate(LayoutInflater.from(this.$context));
    }
}
