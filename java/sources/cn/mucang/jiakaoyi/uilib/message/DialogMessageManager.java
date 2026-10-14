package cn.mucang.jiakaoyi.uilib.message;

import android.app.Activity;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.n;
import cn.mucang.jiakaoyi.uilib.message.dialog.DialogChainOwner;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J2\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u000fJ\u0006\u0010\u0011\u001a\u00020\tJ\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0005J\u0014\u0010\u0014\u001a\u00020\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;", "", "()V", "dialogShowCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;", "mDialogChainOwner", "Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;", "confirm", "", "messageId", "", "buttonInfo", "Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;", "callback", "Lkotlin/Function1;", "", "loadMessageList", "showMessageDialogBySocket", "dialogDetail", "showMessageDialogs", "details", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DialogMessageManager {
    private static DialogChainOwner b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DialogMessageManager f9433a = new DialogMessageManager();
    private static final cn.mucang.android.jiakaoyi.framework.h.b<DialogMessageDetail> c = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.message.a
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            DialogMessageManager.e((DialogMessageDetail) obj);
        }
    };

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((DialogMessageDetail) t).getPriority()), Integer.valueOf(((DialogMessageDetail) t2).getPriority()));
        }
    }

    private DialogMessageManager() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void d(DialogMessageManager dialogMessageManager, String str, ButtonConfig buttonConfig, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            buttonConfig = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        dialogMessageManager.c(str, buttonConfig, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(DialogMessageDetail dialogMessageDetail) {
        DialogConfig config;
        if ((dialogMessageDetail == null || (config = dialogMessageDetail.getConfig()) == null || !config.isAutoConfirm()) ? false : true) {
            DialogMessageManager dialogMessageManager = f9433a;
            String messageId = dialogMessageDetail.getMessageId();
            r.d(messageId, "detail.messageId");
            d(dialogMessageManager, messageId, null, null, 4, null);
        }
    }

    public final void c(String messageId, ButtonConfig buttonConfig, Function1<? super Boolean, v> function1) {
        r.e(messageId, "messageId");
        g.b(j0.a(w0.b()), null, null, new DialogMessageManager$confirm$1(messageId, buttonConfig, function1, null), 3, null);
    }

    public final void g(DialogMessageDetail dialogDetail) {
        r.e(dialogDetail, "dialogDetail");
        g.b(j0.a(w0.c()), null, null, new DialogMessageManager$showMessageDialogBySocket$1(dialogDetail, null), 3, null);
    }

    public final void h(List<? extends DialogMessageDetail> details) {
        r.e(details, "details");
        List<DialogMessageDetail> listM0 = CollectionsKt___CollectionsKt.M0(CollectionsKt___CollectionsKt.G0(details, new a()));
        Activity activityI = MucangConfig.i();
        if (activityI instanceof n) {
            b = new DialogChainOwner((n) activityI);
            for (DialogMessageDetail dialogMessageDetail : listM0) {
                DialogChainOwner dialogChainOwner = b;
                if (dialogChainOwner != null) {
                    dialogChainOwner.f(new cn.mucang.jiakaoyi.uilib.message.dialog.g(activityI, dialogMessageDetail, c));
                }
            }
            DialogChainOwner dialogChainOwner2 = b;
            if (dialogChainOwner2 == null) {
                return;
            }
            dialogChainOwner2.n();
        }
    }
}
