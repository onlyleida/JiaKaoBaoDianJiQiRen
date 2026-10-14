package kotlinx.coroutines.channels;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
public interface ChannelIterator<E> {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static /* synthetic */ <E> Object a(ChannelIterator<? extends E> channelIterator, Continuation<? super E> continuation) throws Throwable {
            ChannelIterator$next0$1 channelIterator$next0$1;
            if (continuation instanceof ChannelIterator$next0$1) {
                channelIterator$next0$1 = (ChannelIterator$next0$1) continuation;
                int i = channelIterator$next0$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    channelIterator$next0$1.label = i - Integer.MIN_VALUE;
                } else {
                    channelIterator$next0$1 = new ChannelIterator$next0$1(channelIterator, continuation);
                }
            } else {
                channelIterator$next0$1 = new ChannelIterator$next0$1(channelIterator, continuation);
            }
            Object objA = channelIterator$next0$1.result;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i2 = channelIterator$next0$1.label;
            if (i2 == 0) {
                kotlin.k.b(objA);
                channelIterator$next0$1.L$0 = channelIterator;
                channelIterator$next0$1.label = 1;
                objA = channelIterator.a(channelIterator$next0$1);
                if (objA == objD) {
                    return objD;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                channelIterator = (ChannelIterator) channelIterator$next0$1.L$0;
                kotlin.k.b(objA);
            }
            if (((Boolean) objA).booleanValue()) {
                return channelIterator.next();
            }
            throw new ClosedReceiveChannelException("Channel was closed");
        }
    }

    Object a(Continuation<? super Boolean> continuation);

    E next();
}
