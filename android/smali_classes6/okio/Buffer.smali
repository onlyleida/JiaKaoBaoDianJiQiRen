.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;,
        Lokio/Buffer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0005\n\u0002\u0008\u0006\n\u0002\u0010\n\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 \u00da\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004\u00da\u0001\u00db\u0001B\u0008\u00a2\u0006\u0005\u0008\u00d9\u0001\u0010}J\'\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ:\u0010\u0013\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u001a\u0010\u0012\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0010H\u0082\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J7\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010$\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008+\u0010\'J\u000f\u0010,\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008,\u0010\'J\u000f\u0010-\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00101\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u0001H\u0016\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00085\u00106J+\u00109\u001a\u00020\u00002\u0006\u00107\u001a\u00020(2\u0008\u0008\u0002\u00108\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00089\u0010:J)\u00109\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u00108\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u00089\u0010;J!\u0010<\u001a\u00020\u00002\u0006\u00107\u001a\u00020(2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000c\u0010>J\u001d\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010?J\r\u0010@\u001a\u00020\u0007\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010C\u001a\u00020BH\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u0018\u0010H\u001a\u00020B2\u0006\u0010E\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010N\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008N\u0010AJ\u000f\u0010O\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008O\u0010KJ\u000f\u0010P\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008P\u0010MJ\u000f\u0010Q\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008Q\u0010AJ\u000f\u0010R\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008R\u0010AJ\u000f\u0010S\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008S\u0010AJ\u000f\u0010T\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\u0017\u0010T\u001a\u00020 2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008T\u0010VJ\u0017\u0010Y\u001a\u00020\u00162\u0006\u0010X\u001a\u00020WH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ!\u0010^\u001a\u00020\u00162\u0006\u0010X\u001a\u00020W2\u0008\u0008\u0002\u0010[\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\\\u0010]J\u001f\u0010`\u001a\u00020\u000b2\u0006\u0010_\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008`\u0010aJ\u0017\u0010c\u001a\u00020\u00072\u0006\u0010_\u001a\u00020bH\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\u0017\u0010e\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008e\u0010gJ\u0017\u0010j\u001a\u00020\u001e2\u0006\u0010i\u001a\u00020hH\u0016\u00a2\u0006\u0004\u0008j\u0010kJ\u001f\u0010j\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010i\u001a\u00020hH\u0016\u00a2\u0006\u0004\u0008j\u0010lJ\u0011\u0010m\u001a\u0004\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u0008m\u0010fJ\u000f\u0010n\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008n\u0010fJ\u0017\u0010n\u001a\u00020\u001e2\u0006\u0010o\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008n\u0010gJ\u0017\u0010m\u001a\u00020\u001e2\u0006\u0010p\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008q\u0010gJ\u000f\u0010r\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008r\u0010MJ\u000f\u0010s\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008s\u0010tJ\u0017\u0010s\u001a\u00020\u00182\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008s\u0010uJ\u0017\u0010v\u001a\u00020\u00162\u0006\u0010_\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008v\u0010wJ\u0017\u0010`\u001a\u00020\u000b2\u0006\u0010_\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008`\u0010xJ\'\u0010v\u001a\u00020\u00162\u0006\u0010_\u001a\u00020\u00182\u0006\u00108\u001a\u00020\u00162\u0006\u0010\u0008\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008v\u0010yJ\u0017\u0010v\u001a\u00020\u00162\u0006\u0010_\u001a\u00020zH\u0016\u00a2\u0006\u0004\u0008v\u0010{J\r\u0010|\u001a\u00020\u000b\u00a2\u0006\u0004\u0008|\u0010}J\u0017\u0010~\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008~\u00100J\u001a\u0010\u0080\u0001\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020 H\u0016\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u001b\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u00020\u001eH\u0016\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J-\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u00020\u001e2\u0007\u0010\u0085\u0001\u001a\u00020\u00162\u0007\u0010\u0086\u0001\u001a\u00020\u0016H\u0016\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0087\u0001J\u001b\u0010\u0089\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u0016H\u0016\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001J#\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u00020\u001e2\u0006\u0010i\u001a\u00020hH\u0016\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008c\u0001J5\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u00020\u001e2\u0007\u0010\u0085\u0001\u001a\u00020\u00162\u0007\u0010\u0086\u0001\u001a\u00020\u00162\u0006\u0010i\u001a\u00020hH\u0016\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008d\u0001J\u001b\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u008e\u0001\u001a\u00020\u0018H\u0016\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u008f\u0001J+\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u008e\u0001\u001a\u00020\u00182\u0006\u00108\u001a\u00020\u00162\u0006\u0010\u0008\u001a\u00020\u0016H\u0016\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0090\u0001J\u001a\u0010\u0080\u0001\u001a\u00020\u00162\u0007\u0010\u008e\u0001\u001a\u00020zH\u0016\u00a2\u0006\u0005\u0008\u0080\u0001\u0010{J\u001c\u0010\u0092\u0001\u001a\u00020\u00072\u0008\u0010\u008e\u0001\u001a\u00030\u0091\u0001H\u0016\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J$\u0010\u0080\u0001\u001a\u00020\u00022\u0008\u0010\u008e\u0001\u001a\u00030\u0091\u00012\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0094\u0001J\u001b\u0010\u0096\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\u0016H\u0016\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u008a\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\u00002\u0007\u0010\u0097\u0001\u001a\u00020\u0016H\u0016\u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u008a\u0001J\u001b\u0010\u0099\u0001\u001a\u00020\u00002\u0007\u0010\u0097\u0001\u001a\u00020\u0016H\u0016\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u008a\u0001J\u001b\u0010\u009b\u0001\u001a\u00020\u00002\u0007\u0010\u009a\u0001\u001a\u00020\u0016H\u0016\u00a2\u0006\u0006\u0008\u009b\u0001\u0010\u008a\u0001J\u001b\u0010\u009c\u0001\u001a\u00020\u00002\u0007\u0010\u009a\u0001\u001a\u00020\u0016H\u0016\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u008a\u0001J\u001b\u0010\u009e\u0001\u001a\u00020\u00002\u0007\u0010\u009d\u0001\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u009e\u0001\u0010\u009f\u0001J\u001b\u0010\u00a0\u0001\u001a\u00020\u00002\u0007\u0010\u009d\u0001\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u009f\u0001J\u001b\u0010\u00a1\u0001\u001a\u00020\u00002\u0007\u0010\u009d\u0001\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u00a1\u0001\u0010\u009f\u0001J\u001b\u0010\u00a2\u0001\u001a\u00020\u00002\u0007\u0010\u009d\u0001\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u00a2\u0001\u0010\u009f\u0001J\u001b\u0010\u00a6\u0001\u001a\u00020\u00112\u0007\u0010\u00a3\u0001\u001a\u00020\u0016H\u0000\u00a2\u0006\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001J\"\u0010\u0080\u0001\u001a\u00020\u000b2\u0007\u0010\u008e\u0001\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0005\u0008\u0080\u0001\u0010aJ \u0010v\u001a\u00020\u00072\u0006\u0010_\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0005\u0008v\u0010\u00a7\u0001J\u001b\u0010\u00a8\u0001\u001a\u00020\u00072\u0007\u0010\u0095\u0001\u001a\u00020BH\u0016\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J#\u0010\u00a8\u0001\u001a\u00020\u00072\u0007\u0010\u0095\u0001\u001a\u00020B2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00aa\u0001J,\u0010\u00a8\u0001\u001a\u00020\u00072\u0007\u0010\u0095\u0001\u001a\u00020B2\u0006\u0010\u000f\u001a\u00020\u00072\u0007\u0010\u00ab\u0001\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00ac\u0001J\u001a\u0010\u00a8\u0001\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020 H\u0016\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00ad\u0001J\"\u0010\u00a8\u0001\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020 2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00ae\u0001J\u001b\u0010\u00b0\u0001\u001a\u00020\u00072\u0007\u0010\u00af\u0001\u001a\u00020 H\u0016\u00a2\u0006\u0006\u0008\u00b0\u0001\u0010\u00ad\u0001J#\u0010\u00b0\u0001\u001a\u00020\u00072\u0007\u0010\u00af\u0001\u001a\u00020 2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0006\u0008\u00b0\u0001\u0010\u00ae\u0001J \u0010\u001c\u001a\u00020\t2\u0006\u00108\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020 H\u0016\u00a2\u0006\u0005\u0008\u001c\u0010\u00b1\u0001J0\u0010\u001c\u001a\u00020\t2\u0006\u00108\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0008\u001a\u00020\u0016H\u0016\u00a2\u0006\u0005\u0008\u001c\u0010\u00b2\u0001J\u0011\u0010\u00b3\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00b3\u0001\u0010}J\u0011\u0010\u00b4\u0001\u001a\u00020\tH\u0016\u00a2\u0006\u0005\u0008\u00b4\u0001\u0010.J\u0011\u0010\u00b5\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010}J\u0013\u0010\u00b7\u0001\u001a\u00030\u00b6\u0001H\u0016\u00a2\u0006\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001J\u000f\u0010\u00b9\u0001\u001a\u00020 \u00a2\u0006\u0005\u0008\u00b9\u0001\u0010UJ\u000f\u0010\u00ba\u0001\u001a\u00020 \u00a2\u0006\u0005\u0008\u00ba\u0001\u0010UJ\u000f\u0010\u00bb\u0001\u001a\u00020 \u00a2\u0006\u0005\u0008\u00bb\u0001\u0010UJ\u000f\u0010\u00bc\u0001\u001a\u00020 \u00a2\u0006\u0005\u0008\u00bc\u0001\u0010UJ\u0018\u0010\u00bd\u0001\u001a\u00020 2\u0006\u0010#\u001a\u00020 \u00a2\u0006\u0006\u0008\u00bd\u0001\u0010\u00be\u0001J\u0018\u0010\u00bf\u0001\u001a\u00020 2\u0006\u0010#\u001a\u00020 \u00a2\u0006\u0006\u0008\u00bf\u0001\u0010\u00be\u0001J\u0018\u0010\u00c0\u0001\u001a\u00020 2\u0006\u0010#\u001a\u00020 \u00a2\u0006\u0006\u0008\u00c0\u0001\u0010\u00be\u0001J\u001f\u0010\u00c3\u0001\u001a\u00020\t2\n\u0010\u00c2\u0001\u001a\u0005\u0018\u00010\u00c1\u0001H\u0096\u0002\u00a2\u0006\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001J\u0011\u0010\u00c5\u0001\u001a\u00020\u0016H\u0016\u00a2\u0006\u0005\u0008\u00c5\u0001\u0010MJ\u0011\u0010\u00c6\u0001\u001a\u00020\u001eH\u0016\u00a2\u0006\u0005\u0008\u00c6\u0001\u0010fJ\u0011\u0010\u00c7\u0001\u001a\u00020\u0000H\u0016\u00a2\u0006\u0005\u0008\u00c7\u0001\u0010\'J\u000f\u0010\u00c8\u0001\u001a\u00020 \u00a2\u0006\u0005\u0008\u00c8\u0001\u0010UJ\u0018\u0010\u00c8\u0001\u001a\u00020 2\u0006\u0010\u0008\u001a\u00020\u0016\u00a2\u0006\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001J\u001f\u0010\u00cc\u0001\u001a\u00030\u00ca\u00012\n\u0008\u0002\u0010\u00cb\u0001\u001a\u00030\u00ca\u0001H\u0007\u00a2\u0006\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001J\u001f\u0010\u00ce\u0001\u001a\u00030\u00ca\u00012\n\u0008\u0002\u0010\u00cb\u0001\u001a\u00030\u00ca\u0001H\u0007\u00a2\u0006\u0006\u0008\u00ce\u0001\u0010\u00cd\u0001J\u0019\u0010F\u001a\u00020B2\u0007\u0010\u00cf\u0001\u001a\u00020\u0007H\u0007\u00a2\u0006\u0005\u0008\u00d0\u0001\u0010GJ\u0011\u0010\u00d2\u0001\u001a\u00020\u0007H\u0007\u00a2\u0006\u0005\u0008\u00d1\u0001\u0010AR\u001b\u0010\u00d3\u0001\u001a\u0004\u0018\u00010\u00118\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001R\u0017\u0010&\u001a\u00020\u00008V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00d5\u0001\u0010\'R0\u0010\u00d2\u0001\u001a\u00020\u00072\u0007\u0010\u00d6\u0001\u001a\u00020\u00078\u0007@@X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00d2\u0001\u0010\u00d7\u0001\u001a\u0005\u0008\u00d2\u0001\u0010A\"\u0005\u0008\u00d8\u0001\u00100\u00a8\u0006\u00dc\u0001"
    }
    d2 = {
        "Lokio/Buffer;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "Ljava/io/InputStream;",
        "input",
        "",
        "byteCount",
        "",
        "forever",
        "Lkotlin/v;",
        "readFrom",
        "(Ljava/io/InputStream;JZ)V",
        "T",
        "fromIndex",
        "Lkotlin/Function2;",
        "Lokio/Segment;",
        "lambda",
        "seek",
        "(JLkotlin/jvm/b/p;)Ljava/lang/Object;",
        "segment",
        "",
        "segmentPos",
        "",
        "bytes",
        "bytesOffset",
        "bytesLimit",
        "rangeEquals",
        "(Lokio/Segment;I[BII)Z",
        "",
        "algorithm",
        "Lokio/ByteString;",
        "digest",
        "(Ljava/lang/String;)Lokio/ByteString;",
        "key",
        "hmac",
        "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;",
        "buffer",
        "()Lokio/Buffer;",
        "Ljava/io/OutputStream;",
        "outputStream",
        "()Ljava/io/OutputStream;",
        "emitCompleteSegments",
        "emit",
        "exhausted",
        "()Z",
        "require",
        "(J)V",
        "request",
        "(J)Z",
        "peek",
        "()Lokio/BufferedSource;",
        "inputStream",
        "()Ljava/io/InputStream;",
        "out",
        "offset",
        "copyTo",
        "(Ljava/io/OutputStream;JJ)Lokio/Buffer;",
        "(Lokio/Buffer;JJ)Lokio/Buffer;",
        "writeTo",
        "(Ljava/io/OutputStream;J)Lokio/Buffer;",
        "(Ljava/io/InputStream;)Lokio/Buffer;",
        "(Ljava/io/InputStream;J)Lokio/Buffer;",
        "completeSegmentByteCount",
        "()J",
        "",
        "readByte",
        "()B",
        "pos",
        "getByte",
        "(J)B",
        "get",
        "",
        "readShort",
        "()S",
        "readInt",
        "()I",
        "readLong",
        "readShortLe",
        "readIntLe",
        "readLongLe",
        "readDecimalLong",
        "readHexadecimalUnsignedLong",
        "readByteString",
        "()Lokio/ByteString;",
        "(J)Lokio/ByteString;",
        "Lokio/Options;",
        "options",
        "select",
        "(Lokio/Options;)I",
        "selectTruncated",
        "selectPrefix$jvm",
        "(Lokio/Options;Z)I",
        "selectPrefix",
        "sink",
        "readFully",
        "(Lokio/Buffer;J)V",
        "Lokio/Sink;",
        "readAll",
        "(Lokio/Sink;)J",
        "readUtf8",
        "()Ljava/lang/String;",
        "(J)Ljava/lang/String;",
        "Ljava/nio/charset/Charset;",
        "charset",
        "readString",
        "(Ljava/nio/charset/Charset;)Ljava/lang/String;",
        "(JLjava/nio/charset/Charset;)Ljava/lang/String;",
        "readUtf8Line",
        "readUtf8LineStrict",
        "limit",
        "newline",
        "readUtf8Line$jvm",
        "readUtf8CodePoint",
        "readByteArray",
        "()[B",
        "(J)[B",
        "read",
        "([B)I",
        "([B)V",
        "([BII)I",
        "Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;)I",
        "clear",
        "()V",
        "skip",
        "byteString",
        "write",
        "(Lokio/ByteString;)Lokio/Buffer;",
        "string",
        "writeUtf8",
        "(Ljava/lang/String;)Lokio/Buffer;",
        "beginIndex",
        "endIndex",
        "(Ljava/lang/String;II)Lokio/Buffer;",
        "codePoint",
        "writeUtf8CodePoint",
        "(I)Lokio/Buffer;",
        "writeString",
        "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;",
        "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;",
        "source",
        "([B)Lokio/Buffer;",
        "([BII)Lokio/Buffer;",
        "Lokio/Source;",
        "writeAll",
        "(Lokio/Source;)J",
        "(Lokio/Source;J)Lokio/BufferedSink;",
        "b",
        "writeByte",
        "s",
        "writeShort",
        "writeShortLe",
        "i",
        "writeInt",
        "writeIntLe",
        "v",
        "writeLong",
        "(J)Lokio/Buffer;",
        "writeLongLe",
        "writeDecimalLong",
        "writeHexadecimalUnsignedLong",
        "minimumCapacity",
        "writableSegment$jvm",
        "(I)Lokio/Segment;",
        "writableSegment",
        "(Lokio/Buffer;J)J",
        "indexOf",
        "(B)J",
        "(BJ)J",
        "toIndex",
        "(BJJ)J",
        "(Lokio/ByteString;)J",
        "(Lokio/ByteString;J)J",
        "targetBytes",
        "indexOfElement",
        "(JLokio/ByteString;)Z",
        "(JLokio/ByteString;II)Z",
        "flush",
        "isOpen",
        "close",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "md5",
        "sha1",
        "sha256",
        "sha512",
        "hmacSha1",
        "(Lokio/ByteString;)Lokio/ByteString;",
        "hmacSha256",
        "hmacSha512",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "toString",
        "clone",
        "snapshot",
        "(I)Lokio/ByteString;",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "readUnsafe",
        "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;",
        "readAndWriteUnsafe",
        "index",
        "-deprecated_getByte",
        "-deprecated_size",
        "size",
        "head",
        "Lokio/Segment;",
        "getBuffer",
        "<set-?>",
        "J",
        "setSize$jvm",
        "<init>",
        "Companion",
        "UnsafeCursor",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lokio/Buffer$Companion;

.field private static final DIGITS:[B


# instance fields
.field public head:Lokio/Segment;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Buffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Buffer$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lokio/Buffer;->Companion:Lokio/Buffer$Companion;

    .line 1
    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 1
    iget-wide p2, p0, Lokio/Buffer;->size:J

    sub-long p4, p2, v2

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 2
    iget-wide p2, p0, Lokio/Buffer;->size:J

    sub-long p4, p2, v2

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method private final digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 4
    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    if-eq v1, v0, :cond_2

    .line 5
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    sub-int/2addr v5, v4

    invoke-virtual {p1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 6
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 7
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 8
    :cond_2
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v1, "messageDigest.digest()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private final hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz p1, :cond_2

    .line 4
    iget-object p2, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    iget v2, p1, Lokio/Segment;->limit:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, p2, v1, v2}, Ljavax/crypto/Mac;->update([BII)V

    .line 5
    iget-object p2, p1, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-eq p2, p1, :cond_2

    .line 6
    iget-object v2, p2, Lokio/Segment;->data:[B

    iget v3, p2, Lokio/Segment;->pos:I

    iget v4, p2, Lokio/Segment;->limit:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 7
    iget-object p2, p2, Lokio/Segment;->next:Lokio/Segment;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    .line 8
    :cond_1
    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    throw v1

    .line 9
    :cond_2
    :try_start_2
    new-instance p1, Lokio/ByteString;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p2

    const-string v0, "mac.doFinal()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lokio/ByteString;-><init>([B)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 5

    .line 5
    iget v0, p1, Lokio/Segment;->limit:I

    .line 6
    iget-object v1, p1, Lokio/Segment;->data:[B

    :goto_0
    if-ge p4, p5, :cond_3

    if-ne p2, v0, :cond_1

    .line 7
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    if-eqz p1, :cond_0

    .line 8
    iget-object p2, p1, Lokio/Segment;->data:[B

    .line 9
    iget v0, p1, Lokio/Segment;->pos:I

    .line 10
    iget v1, p1, Lokio/Segment;->limit:I

    move v4, v1

    move-object v1, p2

    move p2, v0

    move v0, v4

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_1
    :goto_1
    aget-byte v2, v1, p2

    aget-byte v3, p3, p4

    if-eq v2, v3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public static bridge synthetic readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object p0

    return-object p0
.end method

.method private final readFrom(Ljava/io/InputStream;JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 5
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    .line 6
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 7
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-eqz p4, :cond_2

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 9
    :cond_3
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    .line 10
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v0

    goto :goto_0
.end method

.method public static bridge synthetic readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object p0

    return-object p0
.end method

.method private final seek(JLkotlin/jvm/b/p;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lokio/Segment;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    .line 3
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 4
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v0, :cond_0

    .line 5
    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v1

    .line 7
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v2, 0x0

    .line 8
    :goto_1
    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v6, v4, p1

    if-lez v6, :cond_3

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v0, :cond_4

    move-wide v2, v4

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v1

    :cond_5
    const-wide/16 p1, -0x1

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic selectPrefix$jvm$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->selectPrefix$jvm(Lokio/Options;Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1
    iget-wide p2, p0, Lokio/Buffer;->size:J

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_getByte(J)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->getByte(J)B

    move-result p1

    return p1
.end method

.method public final -deprecated_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public buffer()Lokio/Buffer;
    .locals 0

    return-object p0
.end method

.method public final clear()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 6

    .line 2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 3
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_8

    .line 5
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v1, :cond_7

    if-eqz v1, :cond_6

    .line 6
    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 7
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 8
    :goto_0
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v3, :cond_4

    .line 9
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 10
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 12
    :cond_4
    iget-wide v1, p0, Lokio/Buffer;->size:J

    iput-wide v1, v0, Lokio/Buffer;->size:J

    return-object v0

    .line 13
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 14
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 15
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 16
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v2, :cond_2

    .line 3
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lokio/Segment;->owner:Z

    if-eqz v4, :cond_1

    .line 4
    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0

    .line 5
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v3

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v3
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final copyTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p0, Lokio/Buffer;->size:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 3
    iget v4, v2, Lokio/Segment;->limit:I

    iget v5, v2, Lokio/Segment;->pos:I

    sub-int v6, v4, v5

    int-to-long v6, v6

    cmp-long v8, p2, v6

    if-ltz v8, :cond_1

    sub-int/2addr v4, v5

    int-to-long v3, v4

    sub-long/2addr p2, v3

    .line 4
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, p4, v0

    if-lez v4, :cond_3

    if-eqz v2, :cond_2

    .line 5
    iget v4, v2, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    .line 6
    iget p3, v2, Lokio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v4, p3

    .line 7
    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    .line 8
    iget-object v4, v2, Lokio/Segment;->data:[B

    invoke-virtual {p1, v4, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 9
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v3

    :cond_3
    return-object p0

    .line 11
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v3
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 9

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-wide v1, p0, Lokio/Buffer;->size:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-object p0

    .line 13
    :cond_0
    iget-wide v2, p1, Lokio/Buffer;->size:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lokio/Buffer;->size:J

    .line 14
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 15
    iget v4, v2, Lokio/Segment;->limit:I

    iget v5, v2, Lokio/Segment;->pos:I

    sub-int v6, v4, v5

    int-to-long v6, v6

    cmp-long v8, p2, v6

    if-ltz v8, :cond_1

    sub-int/2addr v4, v5

    int-to-long v3, v4

    sub-long/2addr p2, v3

    .line 16
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, p4, v0

    if-lez v4, :cond_6

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v4

    .line 18
    iget v5, v4, Lokio/Segment;->pos:I

    long-to-int p3, p2

    add-int/2addr v5, p3

    iput v5, v4, Lokio/Segment;->pos:I

    long-to-int p2, p4

    add-int/2addr v5, p2

    .line 19
    iget p2, v4, Lokio/Segment;->limit:I

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v4, Lokio/Segment;->limit:I

    .line 20
    iget-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez p2, :cond_2

    .line 21
    iput-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 22
    iput-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 23
    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    .line 24
    iget-object p2, p2, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v4}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 25
    :goto_2
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 26
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    goto :goto_1

    .line 27
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v3

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v3

    .line 28
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v3

    :cond_6
    return-object p0

    .line 29
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v3
.end method

.method public emit()Lokio/Buffer;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic emit()Lokio/BufferedSink;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->emit()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1
    :cond_0
    instance-of v3, v1, Lokio/Buffer;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 2
    :cond_1
    iget-wide v5, v0, Lokio/Buffer;->size:J

    check-cast v1, Lokio/Buffer;

    iget-wide v7, v1, Lokio/Buffer;->size:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    return v4

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    return v2

    .line 3
    :cond_3
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    .line 4
    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_b

    .line 5
    iget v6, v3, Lokio/Segment;->pos:I

    .line 6
    iget v9, v1, Lokio/Segment;->pos:I

    move-wide v10, v7

    .line 7
    :goto_0
    iget-wide v12, v0, Lokio/Buffer;->size:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_a

    .line 8
    iget v12, v3, Lokio/Segment;->limit:I

    sub-int/2addr v12, v6

    iget v13, v1, Lokio/Segment;->limit:I

    sub-int/2addr v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-long v12, v12

    move-wide v14, v7

    :goto_1
    cmp-long v16, v14, v12

    if-gez v16, :cond_5

    .line 9
    iget-object v7, v3, Lokio/Segment;->data:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v7, v6

    iget-object v7, v1, Lokio/Segment;->data:[B

    add-int/lit8 v17, v9, 0x1

    aget-byte v7, v7, v9

    if-eq v6, v7, :cond_4

    return v4

    :cond_4
    const-wide/16 v6, 0x1

    add-long/2addr v14, v6

    move v6, v8

    move/from16 v9, v17

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 10
    :cond_5
    iget v7, v3, Lokio/Segment;->limit:I

    if-ne v6, v7, :cond_7

    .line 11
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v3, :cond_6

    .line 12
    iget v6, v3, Lokio/Segment;->pos:I

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v5

    .line 14
    :cond_7
    :goto_2
    iget v7, v1, Lokio/Segment;->limit:I

    if-ne v9, v7, :cond_9

    .line 15
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v1, :cond_8

    .line 16
    iget v7, v1, Lokio/Segment;->pos:I

    move v9, v7

    goto :goto_3

    .line 17
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v5

    :cond_9
    :goto_3
    add-long/2addr v10, v12

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_a
    return v2

    .line 18
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v5

    .line 19
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v5
.end method

.method public exhausted()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 0

    return-object p0
.end method

.method public final getByte(J)B
    .locals 8

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 2
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_3

    .line 4
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 5
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v0, :cond_0

    .line 6
    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v1

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p1, v4

    aget-byte p1, v1, p1

    return p1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v1

    :cond_3
    const-wide/16 v2, 0x0

    .line 9
    :goto_1
    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v6, v4

    add-long/2addr v6, v2

    cmp-long v4, v6, p1

    if-lez v4, :cond_5

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, v0, Lokio/Segment;->data:[B

    int-to-long v4, v5

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p1, v4

    aget-byte p1, v0, p1

    return p1

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v1

    .line 11
    :cond_5
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v0, :cond_6

    move-wide v2, v6

    goto :goto_1

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v1

    .line 12
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2
    :cond_0
    iget v2, v0, Lokio/Segment;->pos:I

    .line 3
    iget v3, v0, Lokio/Segment;->limit:I

    :goto_0
    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v4, v0, Lokio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_0

    return v1

    .line 7
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "HmacSHA1"

    .line 1
    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "HmacSHA256"

    .line 1
    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "HmacSHA512"

    .line 1
    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public indexOf(BJJ)J
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v2

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v8, v4, v2

    if-ltz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_14

    .line 3
    iget-wide v8, v0, Lokio/Buffer;->size:J

    cmp-long v10, v4, v8

    if-lez v10, :cond_2

    move-wide v4, v8

    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v10, v2, v4

    if-nez v10, :cond_3

    return-wide v8

    .line 4
    :cond_3
    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v10, :cond_13

    .line 5
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v11

    sub-long/2addr v11, v2

    const/4 v13, 0x0

    cmp-long v14, v11, v2

    if-gez v14, :cond_b

    .line 6
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    :goto_2
    cmp-long v11, v6, v2

    if-lez v11, :cond_5

    .line 7
    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v10, :cond_4

    .line 8
    iget v11, v10, Lokio/Segment;->limit:I

    iget v12, v10, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v6, v11

    goto :goto_2

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v13

    :cond_5
    if-eqz v10, :cond_a

    :goto_3
    cmp-long v11, v6, v4

    if-gez v11, :cond_9

    .line 10
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 11
    iget v12, v10, Lokio/Segment;->limit:I

    int-to-long v14, v12

    iget v12, v10, Lokio/Segment;->pos:I

    int-to-long v8, v12

    add-long/2addr v8, v4

    sub-long/2addr v8, v6

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v9, v8

    .line 12
    iget v8, v10, Lokio/Segment;->pos:I

    int-to-long v14, v8

    add-long/2addr v14, v2

    sub-long/2addr v14, v6

    long-to-int v2, v14

    :goto_4
    if-ge v2, v9, :cond_7

    .line 13
    aget-byte v3, v11, v2

    if-ne v3, v1, :cond_6

    .line 14
    :goto_5
    iget v1, v10, Lokio/Segment;->pos:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v1, v6

    return-wide v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 15
    :cond_7
    iget v2, v10, Lokio/Segment;->limit:I

    iget v3, v10, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v6, v2

    .line 16
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v10, :cond_8

    move-wide v2, v6

    const-wide/16 v8, -0x1

    goto :goto_3

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v13

    :cond_9
    move-wide v1, v8

    return-wide v1

    :cond_a
    move-wide v1, v8

    return-wide v1

    .line 17
    :cond_b
    :goto_6
    iget v8, v10, Lokio/Segment;->limit:I

    iget v9, v10, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v8, v6

    cmp-long v11, v8, v2

    if-lez v11, :cond_11

    if-eqz v10, :cond_10

    :goto_7
    cmp-long v8, v6, v4

    if-gez v8, :cond_f

    .line 18
    iget-object v8, v10, Lokio/Segment;->data:[B

    .line 19
    iget v9, v10, Lokio/Segment;->limit:I

    int-to-long v11, v9

    iget v9, v10, Lokio/Segment;->pos:I

    int-to-long v14, v9

    add-long/2addr v14, v4

    sub-long/2addr v14, v6

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v9, v11

    .line 20
    iget v11, v10, Lokio/Segment;->pos:I

    int-to-long v11, v11

    add-long/2addr v11, v2

    sub-long/2addr v11, v6

    long-to-int v2, v11

    :goto_8
    if-ge v2, v9, :cond_d

    .line 21
    aget-byte v3, v8, v2

    if-ne v3, v1, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 22
    :cond_d
    iget v2, v10, Lokio/Segment;->limit:I

    iget v3, v10, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v6, v2

    .line 23
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v10, :cond_e

    move-wide v2, v6

    goto :goto_7

    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v13

    :cond_f
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_10
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_11
    const-wide/16 v6, -0x1

    .line 24
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v10, :cond_12

    move-wide v6, v8

    goto :goto_6

    :cond_12
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v13

    :cond_13
    move-wide v6, v8

    return-wide v6

    .line 25
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " fromIndex="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " toIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v0, p2

    const-string v2, "bytes"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_13

    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_12

    .line 28
    iget-object v2, v6, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_11

    .line 29
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v12, 0x1

    const/4 v14, 0x0

    cmp-long v15, v4, v0

    if-gez v15, :cond_9

    .line 30
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    :goto_2
    cmp-long v8, v4, v0

    if-lez v8, :cond_3

    .line 31
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v2, :cond_2

    .line 32
    iget v8, v2, Lokio/Segment;->limit:I

    iget v9, v2, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v4, v8

    goto :goto_2

    .line 33
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v14

    :cond_3
    if-eqz v2, :cond_8

    .line 34
    invoke-virtual {v7, v3}, Lokio/ByteString;->getByte(I)B

    move-result v8

    .line 35
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v9

    .line 36
    iget-wide v10, v6, Lokio/Buffer;->size:J

    int-to-long v14, v9

    sub-long/2addr v10, v14

    add-long/2addr v10, v12

    move-object v12, v2

    move-wide v13, v4

    :goto_3
    cmp-long v2, v13, v10

    if-gez v2, :cond_7

    .line 37
    iget-object v15, v12, Lokio/Segment;->data:[B

    .line 38
    iget v2, v12, Lokio/Segment;->limit:I

    iget v3, v12, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, v10

    sub-long/2addr v3, v13

    move-wide/from16 v18, v10

    int-to-long v10, v2

    .line 39
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v10, v2

    .line 40
    iget v2, v12, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sub-long/2addr v2, v13

    long-to-int v0, v2

    move v11, v0

    :goto_4
    if-ge v11, v10, :cond_5

    .line 41
    aget-byte v0, v15, v11

    if-ne v0, v8, :cond_4

    add-int/lit8 v2, v11, 0x1

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    iget v0, v12, Lokio/Segment;->pos:I

    sub-int/2addr v11, v0

    int-to-long v0, v11

    add-long/2addr v0, v13

    return-wide v0

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 43
    :cond_5
    iget v0, v12, Lokio/Segment;->limit:I

    iget v1, v12, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v13, v0

    .line 44
    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v12, :cond_6

    move-wide v0, v13

    move-wide/from16 v10, v18

    goto :goto_3

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_7
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_8
    const-wide/16 v0, -0x1

    return-wide v0

    .line 45
    :cond_9
    :goto_5
    iget v4, v2, Lokio/Segment;->limit:I

    iget v5, v2, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v8

    cmp-long v10, v4, v0

    if-lez v10, :cond_f

    if-eqz v2, :cond_e

    .line 46
    invoke-virtual {v7, v3}, Lokio/ByteString;->getByte(I)B

    move-result v10

    .line 47
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v11

    .line 48
    iget-wide v3, v6, Lokio/Buffer;->size:J

    int-to-long v5, v11

    sub-long/2addr v3, v5

    add-long/2addr v12, v3

    move-object v6, v2

    :goto_6
    cmp-long v2, v8, v12

    if-gez v2, :cond_d

    .line 49
    iget-object v14, v6, Lokio/Segment;->data:[B

    .line 50
    iget v2, v6, Lokio/Segment;->limit:I

    iget v3, v6, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, v12

    sub-long/2addr v3, v8

    move-wide/from16 v16, v12

    int-to-long v12, v2

    .line 51
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v12, v2

    .line 52
    iget v2, v6, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sub-long/2addr v2, v8

    long-to-int v0, v2

    move v13, v0

    :goto_7
    if-ge v13, v12, :cond_b

    .line 53
    aget-byte v0, v14, v13

    if-ne v0, v10, :cond_a

    add-int/lit8 v2, v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    iget v0, v6, Lokio/Segment;->pos:I

    sub-int/2addr v13, v0

    int-to-long v0, v13

    add-long/2addr v0, v8

    return-wide v0

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 55
    :cond_b
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v8, v0

    .line 56
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v6, :cond_c

    move-wide v0, v8

    move-wide/from16 v12, v16

    goto :goto_6

    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v6, 0x0

    throw v6

    :cond_d
    const-wide/16 v8, -0x1

    return-wide v8

    :cond_e
    const-wide/16 v8, -0x1

    return-wide v8

    :cond_f
    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    .line 57
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v2, :cond_10

    move-object/from16 v6, p0

    move-wide v8, v4

    goto :goto_5

    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v6

    :cond_11
    const-wide/16 v8, -0x1

    return-wide v8

    .line 58
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 12

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1a

    .line 2
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_19

    .line 3
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    sub-long/2addr v7, p2

    const/4 v9, 0x2

    const/4 v10, 0x0

    cmp-long v11, v7, p2

    if-gez v11, :cond_d

    .line 4
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_1
    cmp-long v7, v0, p2

    if-lez v7, :cond_2

    .line 5
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v4, :cond_1

    .line 6
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v0, v7

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v10

    :cond_2
    if-eqz v4, :cond_c

    .line 8
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 9
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 10
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 11
    :goto_2
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, v7

    if-gez v3, :cond_c

    .line 12
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 13
    iget v7, v4, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 14
    iget p3, v4, Lokio/Segment;->limit:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 15
    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_4

    if-ne v7, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 16
    :cond_4
    :goto_4
    iget p1, v4, Lokio/Segment;->pos:I

    :goto_5
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    return-wide p1

    .line 17
    :cond_5
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 18
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_6

    move-wide p2, v0

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v10

    .line 19
    :cond_7
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object p1

    .line 20
    :goto_6
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, v7

    if-gez v3, :cond_c

    .line 21
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 22
    iget v7, v4, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 23
    iget p3, v4, Lokio/Segment;->limit:I

    :goto_7
    if-ge p2, p3, :cond_a

    .line 24
    aget-byte v7, v3, p2

    .line 25
    array-length v8, p1

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_9

    aget-byte v11, p1, v9

    if-ne v7, v11, :cond_8

    .line 26
    :goto_9
    iget p1, v4, Lokio/Segment;->pos:I

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 27
    :cond_a
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 28
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_b

    move-wide p2, v0

    goto :goto_6

    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v10

    :cond_c
    return-wide v5

    .line 29
    :cond_d
    :goto_a
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v11, v7, p2

    if-lez v11, :cond_17

    if-eqz v4, :cond_16

    .line 30
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v9, :cond_11

    .line 31
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 32
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 33
    :goto_b
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, v7

    if-gez v3, :cond_16

    .line 34
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 35
    iget v7, v4, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 36
    iget p3, v4, Lokio/Segment;->limit:I

    :goto_c
    if-ge p2, p3, :cond_f

    .line 37
    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_4

    if-ne v7, p1, :cond_e

    goto/16 :goto_4

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 38
    :cond_f
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 39
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_10

    move-wide p2, v0

    goto :goto_b

    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v10

    .line 40
    :cond_11
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object p1

    .line 41
    :goto_d
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, v7

    if-gez v3, :cond_16

    .line 42
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 43
    iget v7, v4, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 44
    iget p3, v4, Lokio/Segment;->limit:I

    :goto_e
    if-ge p2, p3, :cond_14

    .line 45
    aget-byte v7, v3, p2

    .line 46
    array-length v8, p1

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v8, :cond_13

    aget-byte v11, p1, v9

    if-ne v7, v11, :cond_12

    goto/16 :goto_9

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 47
    :cond_14
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 48
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_15

    move-wide p2, v0

    goto :goto_d

    :cond_15
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v10

    :cond_16
    return-wide v5

    .line 49
    :cond_17
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_18

    move-wide v0, v7

    goto/16 :goto_a

    :cond_18
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v10

    :cond_19
    return-wide v5

    .line 50
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lokio/Buffer$inputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 1

    const-string v0, "MD5"

    .line 1
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lokio/Buffer$outputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 1

    .line 1
    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 6

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 2
    iget-wide v1, p0, Lokio/Buffer;->size:J

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 3
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 4
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 14
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/Segment;->pos:I

    .line 15
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 16
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne p1, v2, :cond_0

    .line 17
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 18
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public read([B)I
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_1

    .line 4
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/Segment;->pos:I

    .line 7
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 8
    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_0

    .line 9
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 10
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_0
    return p3

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 19
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-wide p2, v2

    .line 20
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-wide p2

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readAll(Lokio/Sink;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_0
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/Buffer;->readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 3
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 2
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_1

    .line 3
    iget v3, v2, Lokio/Segment;->pos:I

    .line 4
    iget v4, v2, Lokio/Segment;->limit:I

    .line 5
    iget-object v5, v2, Lokio/Segment;->data:[B

    add-int/lit8 v6, v3, 0x1

    .line 6
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 7
    iput-wide v0, p0, Lokio/Buffer;->size:J

    if-ne v6, v4, :cond_0

    .line 8
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 9
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 10
    :cond_0
    iput v6, v2, Lokio/Segment;->pos:I

    :goto_0
    return v3

    .line 11
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v0, 0x0

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readByteArray()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    long-to-int p2, p1

    .line 3
    new-array p1, p2, [B

    .line 4
    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2

    .line 1
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 2
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2
    :cond_0
    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v10, :cond_b

    .line 3
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 4
    iget v12, v10, Lokio/Segment;->pos:I

    .line 5
    iget v13, v10, Lokio/Segment;->limit:I

    :goto_0
    if-ge v12, v13, :cond_7

    .line 6
    aget-byte v15, v11, v12

    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v15, v14, :cond_4

    const/16 v1, 0x39

    int-to-byte v1, v1

    if-gt v15, v1, :cond_4

    sub-int/2addr v14, v15

    const-wide v1, -0xcccccccccccccccL

    cmp-long v16, v3, v1

    if-ltz v16, :cond_2

    if-nez v16, :cond_1

    int-to-long v1, v14

    cmp-long v16, v1, v5

    if-gez v16, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0xa

    mul-long v3, v3, v1

    int-to-long v1, v14

    add-long/2addr v3, v1

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v1

    if-nez v8, :cond_3

    .line 8
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/16 v1, 0x2d

    int-to-byte v1, v1

    if-ne v15, v1, :cond_5

    if-nez v7, :cond_5

    const-wide/16 v1, 0x1

    sub-long/2addr v5, v1

    const/4 v8, 0x1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    .line 10
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    if-ne v12, v13, :cond_8

    .line 13
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 14
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_4

    .line 15
    :cond_8
    iput v12, v10, Lokio/Segment;->pos:I

    :goto_4
    if-nez v9, :cond_9

    .line 16
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    .line 17
    :cond_9
    iget-wide v1, v0, Lokio/Buffer;->size:J

    int-to-long v5, v7

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lokio/Buffer;->size:J

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    neg-long v3, v3

    :goto_5
    return-wide v3

    .line 18
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v1, 0x0

    throw v1

    .line 19
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 2
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 6
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 2
    :cond_0
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v6, :cond_9

    .line 3
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 4
    iget v8, v6, Lokio/Segment;->pos:I

    .line 5
    iget v9, v6, Lokio/Segment;->limit:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_1

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_1

    sub-int v11, v10, v11

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2

    :goto_1
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    goto :goto_2

    :cond_2
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    goto :goto_1

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 12
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 13
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_4

    .line 14
    :cond_7
    iput v8, v6, Lokio/Segment;->pos:I

    :goto_4
    if-nez v1, :cond_8

    .line 15
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_0

    .line 16
    :cond_8
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lokio/Buffer;->size:J

    return-wide v4

    .line 17
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v0, 0x0

    throw v0

    .line 18
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 2
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_2

    .line 3
    iget v5, v4, Lokio/Segment;->pos:I

    .line 4
    iget v6, v4, Lokio/Segment;->limit:I

    sub-int v7, v6, v5

    int-to-long v7, v7

    cmp-long v9, v7, v2

    if-gez v9, :cond_0

    .line 5
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 9
    :cond_0
    iget-object v7, v4, Lokio/Segment;->data:[B

    add-int/lit8 v8, v5, 0x1

    .line 10
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    .line 11
    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    .line 12
    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    .line 13
    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lokio/Buffer;->size:J

    if-ne v9, v6, :cond_1

    .line 15
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 16
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 17
    :cond_1
    iput v9, v4, Lokio/Segment;->pos:I

    :goto_0
    return v5

    .line 18
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v0, 0x0

    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readIntLe()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 2
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v5, :cond_2

    .line 3
    iget v6, v5, Lokio/Segment;->pos:I

    .line 4
    iget v7, v5, Lokio/Segment;->limit:I

    sub-int v8, v7, v6

    int-to-long v8, v8

    const/16 v10, 0x20

    cmp-long v11, v8, v3

    if-gez v11, :cond_0

    .line 5
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    shl-long/2addr v1, v10

    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1

    .line 7
    :cond_0
    iget-object v8, v5, Lokio/Segment;->data:[B

    add-int/lit8 v9, v6, 0x1

    .line 8
    aget-byte v6, v8, v6

    int-to-long v11, v6

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    const/16 v6, 0x38

    shl-long/2addr v11, v6

    add-int/lit8 v6, v9, 0x1

    .line 9
    aget-byte v9, v8, v9

    int-to-long v3, v9

    and-long/2addr v3, v13

    const/16 v9, 0x30

    shl-long/2addr v3, v9

    or-long/2addr v3, v11

    add-int/lit8 v9, v6, 0x1

    .line 10
    aget-byte v6, v8, v6

    int-to-long v11, v6

    and-long/2addr v11, v13

    const/16 v6, 0x28

    shl-long/2addr v11, v6

    or-long/2addr v3, v11

    add-int/lit8 v6, v9, 0x1

    .line 11
    aget-byte v9, v8, v9

    int-to-long v11, v9

    and-long/2addr v11, v13

    shl-long v9, v11, v10

    or-long/2addr v3, v9

    add-int/lit8 v9, v6, 0x1

    .line 12
    aget-byte v6, v8, v6

    int-to-long v10, v6

    and-long/2addr v10, v13

    const/16 v6, 0x18

    shl-long/2addr v10, v6

    or-long/2addr v3, v10

    add-int/lit8 v6, v9, 0x1

    .line 13
    aget-byte v9, v8, v9

    int-to-long v9, v9

    and-long/2addr v9, v13

    const/16 v11, 0x10

    shl-long/2addr v9, v11

    or-long/2addr v3, v9

    add-int/lit8 v9, v6, 0x1

    .line 14
    aget-byte v6, v8, v6

    int-to-long v10, v6

    and-long/2addr v10, v13

    const/16 v6, 0x8

    shl-long/2addr v10, v6

    or-long/2addr v3, v10

    add-int/lit8 v6, v9, 0x1

    .line 15
    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    or-long/2addr v3, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v1, v8

    .line 16
    iput-wide v1, v0, Lokio/Buffer;->size:J

    if-ne v6, v7, :cond_1

    .line 17
    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 18
    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 19
    :cond_1
    iput v6, v5, Lokio/Segment;->pos:I

    :goto_0
    return-wide v3

    .line 20
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v1, 0x0

    throw v1

    .line 21
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 2
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_2

    .line 3
    iget v5, v4, Lokio/Segment;->pos:I

    .line 4
    iget v6, v4, Lokio/Segment;->limit:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 5
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 6
    :cond_0
    iget-object v7, v4, Lokio/Segment;->data:[B

    add-int/lit8 v8, v5, 0x1

    .line 7
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lokio/Buffer;->size:J

    if-ne v9, v6, :cond_1

    .line 9
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 10
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 11
    :cond_1
    iput v9, v4, Lokio/Segment;->pos:I

    :goto_0
    int-to-short v0, v5

    return v0

    .line 12
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 v0, 0x0

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShortLe()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_5

    if-nez v2, :cond_1

    const-string p1, ""

    return-object p1

    .line 3
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_4

    .line 4
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lokio/Segment;->limit:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 5
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 6
    :cond_2
    iget-object v2, v0, Lokio/Segment;->data:[B

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 7
    iget p3, v0, Lokio/Segment;->pos:I

    add-int/2addr p3, v3

    iput p3, v0, Lokio/Segment;->pos:I

    .line 8
    iget-wide v1, p0, Lokio/Buffer;->size:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 9
    iget p1, v0, Lokio/Segment;->limit:I

    if-ne p3, p1, :cond_3

    .line 10
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 11
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_3
    return-object v4

    .line 12
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 p1, 0x0

    throw p1

    .line 13
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 14
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/Buffer;->readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 3
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 2
    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 2
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_1

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_2

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 3
    :goto_0
    iget-wide v7, p0, Lokio/Buffer;->size:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_9

    :goto_1
    if-ge v2, v5, :cond_4

    int-to-long v7, v2

    .line 4
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    return v4

    .line 6
    :cond_4
    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_5

    goto :goto_3

    :cond_5
    const v0, 0xdfff

    const v2, 0xd800

    if-le v2, v1, :cond_6

    goto :goto_2

    :cond_6
    if-lt v0, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    if-ge v1, v6, :cond_8

    goto :goto_3

    :cond_8
    move v4, v1

    :goto_3
    return v4

    .line 7
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-wide/16 v0, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return v4

    .line 11
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final readUtf8Line$jvm(J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    sub-long v2, p1, v0

    .line 1
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v4, v5, :cond_0

    .line 2
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    :goto_0
    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-long v2, p1, v0

    :goto_1
    const/16 v4, 0xa

    int-to-byte v10, v4

    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, v10

    move-wide v8, v2

    .line 2
    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 3
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    sub-long v0, v2, v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    if-ne v0, v10, :cond_3

    .line 7
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    .line 9
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    .line 10
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 11
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 12
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limit < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public request(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public require(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public select(Lokio/Options;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Lokio/Buffer;->selectPrefix$jvm$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$jvm()[Lokio/ByteString;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    .line 3
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return v0
.end method

.method public final selectPrefix$jvm(Lokio/Options;Z)I
    .locals 17

    const-string v0, "options"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz v2, :cond_12

    .line 2
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 3
    iget v6, v2, Lokio/Segment;->pos:I

    .line 4
    iget v7, v2, Lokio/Segment;->limit:I

    .line 5
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$jvm()[I

    move-result-object v1

    const/4 v8, 0x0

    move-object v10, v2

    const/4 v9, 0x0

    const/4 v11, -0x1

    :goto_0
    add-int/lit8 v12, v9, 0x1

    .line 6
    aget v9, v1, v9

    add-int/lit8 v13, v12, 0x1

    .line 7
    aget v12, v1, v12

    if-eq v12, v4, :cond_0

    move v11, v12

    :cond_0
    if-nez v10, :cond_1

    goto :goto_3

    :cond_1
    const/4 v12, 0x0

    if-gez v9, :cond_b

    mul-int/lit8 v9, v9, -0x1

    add-int v14, v13, v9

    :goto_1
    add-int/lit8 v9, v6, 0x1

    .line 8
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v15, v13, 0x1

    .line 9
    aget v13, v1, v13

    if-eq v6, v13, :cond_2

    return v11

    :cond_2
    if-ne v15, v14, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-ne v9, v7, :cond_9

    if-eqz v10, :cond_8

    .line 10
    iget-object v5, v10, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v5, :cond_7

    .line 11
    iget v7, v5, Lokio/Segment;->pos:I

    .line 12
    iget-object v9, v5, Lokio/Segment;->data:[B

    .line 13
    iget v10, v5, Lokio/Segment;->limit:I

    if-ne v5, v2, :cond_6

    if-nez v6, :cond_5

    :goto_3
    if-eqz p2, :cond_4

    return v3

    :cond_4
    return v11

    :cond_5
    move-object v5, v9

    move-object v9, v12

    goto :goto_4

    :cond_6
    move-object/from16 v16, v9

    move-object v9, v5

    move-object/from16 v5, v16

    goto :goto_4

    .line 14
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v12

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v12

    :cond_9
    move-object/from16 v16, v10

    move v10, v7

    move v7, v9

    move-object/from16 v9, v16

    :goto_4
    if-eqz v6, :cond_a

    .line 15
    aget v6, v1, v15

    move v3, v7

    move v7, v10

    move-object v10, v9

    goto :goto_6

    :cond_a
    move v6, v7

    move v7, v10

    move v13, v15

    move-object v10, v9

    goto :goto_1

    :cond_b
    add-int/lit8 v14, v6, 0x1

    .line 16
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int v15, v13, v9

    :goto_5
    if-ne v13, v15, :cond_c

    return v11

    .line 17
    :cond_c
    aget v3, v1, v13

    if-ne v6, v3, :cond_11

    add-int/2addr v13, v9

    .line 18
    aget v6, v1, v13

    if-ne v14, v7, :cond_e

    .line 19
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v10, :cond_d

    .line 20
    iget v3, v10, Lokio/Segment;->pos:I

    .line 21
    iget-object v5, v10, Lokio/Segment;->data:[B

    .line 22
    iget v7, v10, Lokio/Segment;->limit:I

    if-ne v10, v2, :cond_f

    move-object v10, v12

    goto :goto_6

    .line 23
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v12

    :cond_e
    move v3, v14

    :cond_f
    :goto_6
    if-ltz v6, :cond_10

    return v6

    :cond_10
    neg-int v9, v6

    move v6, v3

    const/4 v3, -0x2

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v13, v13, 0x1

    const/4 v3, -0x2

    goto :goto_5

    :cond_12
    if-eqz p2, :cond_13

    const/4 v3, -0x2

    goto :goto_7

    :cond_13
    const/4 v3, -0x1

    :goto_7
    return v3
.end method

.method public final setSize$jvm(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-void
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1

    const-string v0, "SHA-1"

    .line 1
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1

    const-string v0, "SHA-256"

    .line 1
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1

    const-string v0, "SHA-512"

    .line 1
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    iget-wide v3, p0, Lokio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr p1, v5

    .line 5
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/Segment;->pos:I

    .line 6
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 8
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 5

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v1, v0

    .line 2
    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokio/Buffer;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_0

    :cond_0
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writableSegment$jvm(I)Lokio/Segment;
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 1
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 4
    iput-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 5
    iput-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    return-object p1

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v1, :cond_4

    .line 7
    iget v2, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Lokio/Segment;->owner:Z

    if-nez p1, :cond_3

    .line 8
    :cond_2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v1

    :cond_3
    return-object v1

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 10
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v2

    .line 14
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 15
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 16
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    goto :goto_0

    .line 17
    :cond_0
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p0}, Lokio/ByteString;->write$jvm(Lokio/Buffer;)V

    return-object p0
.end method

.method public write([B)Lokio/Buffer;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write([BII)Lokio/Buffer;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    .line 8
    iget v2, v0, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 10
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    goto :goto_0

    .line 11
    :cond_0
    iget-wide p1, p0, Lokio/Buffer;->size:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 18
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr p2, v0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Buffer;J)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_f

    .line 20
    iget-wide v2, p1, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_e

    .line 21
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget v3, v1, Lokio/Segment;->limit:I

    if-eqz v1, :cond_c

    iget v4, v1, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_7

    .line 22
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_2

    if-eqz v3, :cond_1

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    :cond_2
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    .line 23
    iget-boolean v4, v3, Lokio/Segment;->owner:Z

    if-eqz v4, :cond_5

    iget v4, v3, Lokio/Segment;->limit:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    iget-boolean v6, v3, Lokio/Segment;->shared:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    iget v6, v3, Lokio/Segment;->pos:I

    :goto_3
    int-to-long v6, v6

    sub-long/2addr v4, v6

    const/16 v6, 0x2000

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_5

    if-eqz v1, :cond_4

    long-to-int v0, p2

    .line 24
    invoke-virtual {v1, v3, v0}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 25
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 26
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-void

    .line 27
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    :cond_5
    if-eqz v1, :cond_6

    long-to-int v3, p2

    .line 28
    invoke-virtual {v1, v3}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_4

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 29
    :cond_7
    :goto_4
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_b

    .line 30
    iget v3, v1, Lokio/Segment;->limit:I

    iget v4, v1, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    .line 31
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 32
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v5, :cond_8

    .line 33
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 34
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 35
    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_a

    .line 36
    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v5, :cond_9

    .line 37
    invoke-virtual {v5, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lokio/Segment;->compact()V

    .line 39
    :goto_5
    iget-wide v1, p1, Lokio/Buffer;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p1, Lokio/Buffer;->size:J

    .line 40
    iget-wide v1, p0, Lokio/Buffer;->size:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v3

    goto/16 :goto_1

    .line 41
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 42
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 43
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    .line 44
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    throw v2

    :cond_e
    return-void

    .line 45
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Lokio/Source;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 1
    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 4

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 4
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 2
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 3
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-wide/32 v5, 0x5f5e100

    const/16 v2, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_a

    const-wide/16 v5, 0x2710

    cmp-long v7, p1, v5

    if-gez v7, :cond_6

    const-wide/16 v5, 0x64

    cmp-long v7, p1, v5

    if-gez v7, :cond_4

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-gez v6, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v4, 0xf4240

    cmp-long v6, p1, v4

    if-gez v6, :cond_8

    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-gez v6, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-gez v6, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0xe8d4a51000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_e

    const-wide v4, 0x2540be400L

    cmp-long v6, p1, v4

    if-gez v6, :cond_c

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-gez v6, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_11

    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v4, 0x5af3107a4000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_13

    const-wide v4, 0x2386f26fc10000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 4
    :cond_15
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v5

    .line 5
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 6
    iget v7, v5, Lokio/Segment;->limit:I

    add-int/2addr v7, v4

    :goto_1
    cmp-long v8, p1, v0

    if-eqz v8, :cond_16

    int-to-long v8, v2

    .line 7
    rem-long v10, p1, v8

    long-to-int v11, v10

    add-int/lit8 v7, v7, -0x1

    .line 8
    sget-object v10, Lokio/Buffer;->DIGITS:[B

    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    .line 9
    div-long/2addr p1, v8

    goto :goto_1

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    .line 10
    aput-byte p1, v6, v7

    .line 11
    :cond_17
    iget p1, v5, Lokio/Segment;->limit:I

    add-int/2addr p1, v4

    iput p1, v5, Lokio/Segment;->limit:I

    .line 12
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 2
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v2

    .line 5
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 6
    iget v4, v2, Lokio/Segment;->limit:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-lt v5, v4, :cond_1

    .line 7
    sget-object v6, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 8
    :cond_1
    iget p1, v2, Lokio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Lokio/Segment;->limit:I

    .line 9
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 5

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 4
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v1, v3

    .line 9
    iput v2, v0, Lokio/Segment;->limit:I

    .line 10
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 0

    .line 2
    invoke-static {p1}, Lokio/-Util;->reverseBytes(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 9

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 4
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 5
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 6
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 7
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 8
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 9
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 10
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 11
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 12
    aput-byte p1, v2, v4

    .line 13
    iput v0, v1, Lokio/Segment;->limit:I

    .line 14
    iget-wide p1, p0, Lokio/Buffer;->size:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 5

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 4
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 6
    aput-byte p1, v1, v3

    .line 7
    iput v2, v0, Lokio/Segment;->limit:I

    .line 8
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 0

    int-to-short p1, p1

    .line 2
    invoke-static {p1}, Lokio/-Util;->reverseBytes(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 5
    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex > string.length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex < beginIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lokio/Buffer;->writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 2
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 4
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 5
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/Segment;->pos:I

    .line 7
    iget-wide v3, p0, Lokio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v5

    .line 8
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 9
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 11
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    move-object v0, v1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/r;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 11

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_f

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_e

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    if-ge p2, p3, :cond_c

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_5

    .line 6
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v4

    .line 7
    iget-object v5, v4, Lokio/Segment;->data:[B

    .line 8
    iget v6, v4, Lokio/Segment;->limit:I

    sub-int/2addr v6, p2

    rsub-int v7, v6, 0x2000

    .line 9
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 10
    aput-byte v2, v5, p2

    :goto_4
    if-ge v8, v7, :cond_4

    .line 11
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v8, 0x1

    add-int/2addr v8, v6

    int-to-byte p2, p2

    .line 12
    aput-byte p2, v5, v8

    move v8, v2

    goto :goto_4

    :cond_4
    :goto_5
    add-int/2addr v6, v8

    .line 13
    iget p2, v4, Lokio/Segment;->limit:I

    sub-int/2addr v6, p2

    add-int/2addr p2, v6

    .line 14
    iput p2, v4, Lokio/Segment;->limit:I

    .line 15
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    move p2, v8

    goto :goto_3

    :cond_5
    const/16 v4, 0x800

    if-ge v2, v4, :cond_6

    const/4 v4, 0x2

    .line 16
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v5

    .line 17
    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v7, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 18
    aput-byte v2, v6, v8

    add-int/2addr v7, v4

    .line 19
    iput v7, v5, Lokio/Segment;->limit:I

    .line 20
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_b

    const v4, 0xdfff

    if-le v2, v4, :cond_7

    goto :goto_9

    :cond_7
    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_8

    .line 21
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    const v8, 0xdbff

    if-gt v2, v8, :cond_a

    const v8, 0xdc00

    if-gt v8, v7, :cond_a

    if-ge v4, v7, :cond_9

    goto :goto_8

    :cond_9
    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v6, v7, 0x3ff

    or-int/2addr v2, v6

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 22
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v6

    .line 23
    iget-object v7, v6, Lokio/Segment;->data:[B

    iget v8, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 24
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 25
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 26
    aput-byte v2, v7, v9

    add-int/2addr v8, v4

    .line 27
    iput v8, v6, Lokio/Segment;->limit:I

    .line 28
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 29
    :cond_a
    :goto_8
    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move p2, v6

    goto/16 :goto_3

    :cond_b
    :goto_9
    const/4 v4, 0x3

    .line 30
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v6

    .line 31
    iget-object v7, v6, Lokio/Segment;->data:[B

    iget v8, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v9, v2, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 32
    aput-byte v5, v7, v9

    add-int/lit8 v5, v8, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 33
    aput-byte v2, v7, v5

    add-int/2addr v8, v4

    .line 34
    iput v8, v6, Lokio/Segment;->limit:I

    .line 35
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    goto/16 :goto_6

    :cond_c
    return-object p0

    .line 36
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 8

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 4
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 6
    iput v5, v3, Lokio/Segment;->limit:I

    .line 7
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto/16 :goto_1

    :cond_1
    const v1, 0xdfff

    const v3, 0xd800

    if-le v3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v1, p1, :cond_3

    .line 8
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_4

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 10
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 11
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 12
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 13
    iput v5, v3, Lokio/Segment;->limit:I

    .line 14
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    const/4 v1, 0x4

    .line 15
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 16
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 17
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 18
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 19
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 20
    iput v5, v3, Lokio/Segment;->limit:I

    .line 21
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    :goto_1
    return-object p0

    .line 22
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method
