package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.n;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b<MessageType extends n> implements p<MessageType> {
    static {
        f.c();
    }

    private MessageType e(MessageType messagetype) throws InvalidProtocolBufferException {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw f(messagetype).asInvalidProtocolBufferException().setUnfinishedMessage(messagetype);
    }

    private UninitializedMessageException f(MessageType messagetype) {
        return messagetype instanceof a ? ((a) messagetype).newUninitializedMessageException() : new UninitializedMessageException(messagetype);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public MessageType d(InputStream inputStream, f fVar) throws InvalidProtocolBufferException {
        MessageType messagetype = (MessageType) j(inputStream, fVar);
        e(messagetype);
        return messagetype;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public MessageType a(InputStream inputStream, f fVar) throws InvalidProtocolBufferException {
        MessageType messagetype = (MessageType) k(inputStream, fVar);
        e(messagetype);
        return messagetype;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public MessageType b(d dVar, f fVar) throws InvalidProtocolBufferException {
        MessageType messagetype = (MessageType) l(dVar, fVar);
        e(messagetype);
        return messagetype;
    }

    public MessageType j(InputStream inputStream, f fVar) throws InvalidProtocolBufferException {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            return (MessageType) k(new a.AbstractC0345a.C0346a(inputStream, e.B(i, inputStream)), fVar);
        } catch (IOException e2) {
            throw new InvalidProtocolBufferException(e2.getMessage());
        }
    }

    public MessageType k(InputStream inputStream, f fVar) throws InvalidProtocolBufferException {
        e eVarG = e.g(inputStream);
        MessageType messagetypeC = c(eVarG, fVar);
        try {
            eVarG.a(0);
            return messagetypeC;
        } catch (InvalidProtocolBufferException e2) {
            throw e2.setUnfinishedMessage(messagetypeC);
        }
    }

    public MessageType l(d dVar, f fVar) throws InvalidProtocolBufferException {
        try {
            e eVarS = dVar.s();
            MessageType messagetypeC = c(eVarS, fVar);
            try {
                eVarS.a(0);
                return messagetypeC;
            } catch (InvalidProtocolBufferException e2) {
                throw e2.setUnfinishedMessage(messagetypeC);
            }
        } catch (InvalidProtocolBufferException e3) {
            throw e3;
        }
    }
}
