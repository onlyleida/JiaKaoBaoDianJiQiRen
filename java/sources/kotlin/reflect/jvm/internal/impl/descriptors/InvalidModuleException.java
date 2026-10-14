package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: loaded from: classes6.dex */
public final class InvalidModuleException extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidModuleException(String message) {
        super(message);
        kotlin.jvm.internal.r.e(message, "message");
    }
}
