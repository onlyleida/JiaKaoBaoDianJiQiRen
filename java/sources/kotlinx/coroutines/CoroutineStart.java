package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015JE\u0010\t\u001a\u00020\b\"\u0004\b\u0000\u0010\u00022\u001c\u0010\u0006\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJY\u0010\t\u001a\u00020\b\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u00022\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\f2\u0006\u0010\r\u001a\u00028\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u000eR\u001c\u0010\u0010\u001a\u00020\u000f8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/CoroutineStart;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "Lkotlin/coroutines/c;", "", "block", "completion", "Lkotlin/v;", "invoke", "(Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V", "R", "Lkotlin/Function2;", SocialConstants.PARAM_RECEIVER, "(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)V", "", "isLazy", "()Z", "isLazy$annotations", "()V", "<init>", "(Ljava/lang/String;I)V", "DEFAULT", "LAZY", "ATOMIC", "UNDISPATCHED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
public enum CoroutineStart {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    public static /* synthetic */ void isLazy$annotations() {
    }

    public final <T> void invoke(Function1<? super Continuation<? super T>, ? extends Object> block, Continuation<? super T> completion) {
        int i = k0.f16043a[ordinal()];
        if (i == 1) {
            kotlinx.coroutines.a3.a.b(block, completion);
            return;
        }
        if (i == 2) {
            kotlin.coroutines.e.a(block, completion);
        } else if (i == 3) {
            kotlinx.coroutines.a3.b.a(block, completion);
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean isLazy() {
        return this == LAZY;
    }

    public final <R, T> void invoke(Function2<? super R, ? super Continuation<? super T>, ? extends Object> block, R receiver, Continuation<? super T> completion) {
        int i = k0.b[ordinal()];
        if (i == 1) {
            kotlinx.coroutines.a3.a.d(block, receiver, completion, null, 4, null);
            return;
        }
        if (i == 2) {
            kotlin.coroutines.e.b(block, receiver, completion);
        } else if (i == 3) {
            kotlinx.coroutines.a3.b.b(block, receiver, completion);
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }
}
