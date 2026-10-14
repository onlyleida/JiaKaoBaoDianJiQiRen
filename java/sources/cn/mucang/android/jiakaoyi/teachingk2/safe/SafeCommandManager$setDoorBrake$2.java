package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class SafeCommandManager$setDoorBrake$2 extends Lambda implements Function0<kotlin.v> {
    final /* synthetic */ String $tip;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SafeCommandManager$setDoorBrake$2(String str) {
        super(0);
        this.$tip = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m74invoke$lambda0(String tip) {
        kotlin.jvm.internal.r.e(tip, "$tip");
        cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(tip, "超时"));
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        DebounceUtil debounceUtil = DebounceUtil.f3633a;
        final String str = this.$tip;
        debounceUtil.b("setDoorBrake", 2000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.t
            @Override // java.lang.Runnable
            public final void run() {
                SafeCommandManager$setDoorBrake$2.m74invoke$lambda0(str);
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + this.$tip + "超时");
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ kotlin.v invoke() {
        invoke2();
        return kotlin.v.f15822a;
    }
}
