package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.io.ByteArrayInputStream;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.protobuf.p;

/* JADX INFO: Add missing generic type declarations: [M] */
/* JADX INFO: loaded from: classes6.dex */
final class DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1<M> extends Lambda implements Function0<M> {
    final /* synthetic */ ByteArrayInputStream $inputStream;
    final /* synthetic */ p<M> $parser;
    final /* synthetic */ DeserializedMemberScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1(p<M> pVar, ByteArrayInputStream byteArrayInputStream, DeserializedMemberScope deserializedMemberScope) {
        super(0);
        this.$parser = pVar;
        this.$inputStream = byteArrayInputStream;
        this.this$0 = deserializedMemberScope;
    }

    /* JADX WARN: Incorrect return type in method signature: ()TM; */
    @Override // kotlin.jvm.functions.Function0
    public final n invoke() {
        return (n) this.$parser.d(this.$inputStream, this.this$0.q().c().j());
    }
}
