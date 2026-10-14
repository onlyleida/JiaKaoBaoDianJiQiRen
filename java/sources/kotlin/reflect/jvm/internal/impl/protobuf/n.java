package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public interface n extends o {

    public interface a extends Cloneable, o {
        a a(e eVar, f fVar) throws IOException;

        n build();
    }

    p<? extends n> getParserForType();

    int getSerializedSize();

    a newBuilderForType();

    a toBuilder();

    void writeTo(CodedOutputStream codedOutputStream) throws IOException;
}
