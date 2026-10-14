package kotlin.reflect.jvm.internal.impl.metadata.c;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: loaded from: classes6.dex */
public final class e {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M>, T> T a(GeneratedMessageLite.ExtendableMessage<M> extendableMessage, GeneratedMessageLite.e<M, T> extension) {
        r.e(extendableMessage, "<this>");
        r.e(extension, "extension");
        if (extendableMessage.hasExtension(extension)) {
            return (T) extendableMessage.getExtension(extension);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M>, T> T b(GeneratedMessageLite.ExtendableMessage<M> extendableMessage, GeneratedMessageLite.e<M, List<T>> extension, int i) {
        r.e(extendableMessage, "<this>");
        r.e(extension, "extension");
        if (i < extendableMessage.getExtensionCount(extension)) {
            return (T) extendableMessage.getExtension(extension, i);
        }
        return null;
    }
}
