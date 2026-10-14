.class public final Lkotlin/collections/b1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/d0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/b1/d$d;,
        Lkotlin/collections/b1/d$e;,
        Lkotlin/collections/b1/d$f;,
        Lkotlin/collections/b1/d$b;,
        Lkotlin/collections/b1/d$c;,
        Lkotlin/collections/b1/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0010#\n\u0002\u0010\'\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010&\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 v*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0006vwxyz{B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007BE\u0008\u0002\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0010J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u00080\u00101J\u0013\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u00010\tH\u0002\u00a2\u0006\u0002\u00103J\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000105J\r\u00106\u001a\u000207H\u0000\u00a2\u0006\u0002\u00088J\u0008\u00109\u001a\u000207H\u0016J\u0008\u0010:\u001a\u000207H\u0002J\u0019\u0010;\u001a\u00020\u001f2\n\u0010<\u001a\u0006\u0012\u0002\u0008\u00030=H\u0000\u00a2\u0006\u0002\u0008>J!\u0010?\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0000\u00a2\u0006\u0002\u0008BJ\u0015\u0010C\u001a\u00020\u001f2\u0006\u0010/\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010DJ\u0015\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010DJ\u0018\u0010G\u001a\u00020\u001f2\u000e\u0010H\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u000305H\u0002J\u0010\u0010I\u001a\u0002072\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0010\u0010J\u001a\u0002072\u0006\u0010K\u001a\u00020\u0006H\u0002J\u0019\u0010L\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010MH\u0000\u00a2\u0006\u0002\u0008NJ\u0013\u0010O\u001a\u00020\u001f2\u0008\u0010H\u001a\u0004\u0018\u00010PH\u0096\u0002J\u0015\u0010Q\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00101J\u0015\u0010R\u001a\u00020\u00062\u0006\u0010F\u001a\u00028\u0001H\u0002\u00a2\u0006\u0002\u00101J\u0018\u0010S\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010TJ\u0015\u0010U\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00101J\u0008\u0010V\u001a\u00020\u0006H\u0016J\u0008\u0010W\u001a\u00020\u001fH\u0016J\u0019\u0010X\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010YH\u0000\u00a2\u0006\u0002\u0008ZJ\u001f\u0010[\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u00002\u0006\u0010F\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\\J\u001e\u0010]\u001a\u0002072\u0014\u0010^\u001a\u0010\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000105H\u0016J\"\u0010_\u001a\u00020\u001f2\u0018\u0010^\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010A0=H\u0002J\u001c\u0010`\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0002J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020\u0006H\u0002J\u0010\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020\u0006H\u0002J\u0017\u0010e\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010TJ!\u0010f\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0000\u00a2\u0006\u0002\u0008gJ\u0010\u0010h\u001a\u0002072\u0006\u0010i\u001a\u00020\u0006H\u0002J\u0017\u0010j\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008k\u00101J\u0010\u0010l\u001a\u0002072\u0006\u0010m\u001a\u00020\u0006H\u0002J\u0017\u0010n\u001a\u00020\u001f2\u0006\u0010o\u001a\u00028\u0001H\u0000\u00a2\u0006\u0004\u0008p\u0010DJ\u0008\u0010q\u001a\u00020rH\u0016J\u0019\u0010s\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010tH\u0000\u00a2\u0006\u0002\u0008uR\u0014\u0010\u0011\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R&\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00160\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0013R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0018R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\"R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0013R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00010)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\"R\u0016\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006|"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder;",
        "K",
        "V",
        "",
        "()V",
        "initialCapacity",
        "",
        "(I)V",
        "keysArray",
        "",
        "valuesArray",
        "presenceArray",
        "",
        "hashArray",
        "maxProbeDistance",
        "length",
        "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V",
        "capacity",
        "getCapacity",
        "()I",
        "entries",
        "",
        "",
        "getEntries",
        "()Ljava/util/Set;",
        "entriesView",
        "Lkotlin/collections/builders/MapBuilderEntries;",
        "hashShift",
        "hashSize",
        "getHashSize",
        "isReadOnly",
        "",
        "keys",
        "getKeys",
        "[Ljava/lang/Object;",
        "keysView",
        "Lkotlin/collections/builders/MapBuilderKeys;",
        "<set-?>",
        "size",
        "getSize",
        "values",
        "",
        "getValues",
        "()Ljava/util/Collection;",
        "valuesView",
        "Lkotlin/collections/builders/MapBuilderValues;",
        "addKey",
        "key",
        "addKey$kotlin_stdlib",
        "(Ljava/lang/Object;)I",
        "allocateValuesArray",
        "()[Ljava/lang/Object;",
        "build",
        "",
        "checkIsMutable",
        "",
        "checkIsMutable$kotlin_stdlib",
        "clear",
        "compact",
        "containsAllEntries",
        "m",
        "",
        "containsAllEntries$kotlin_stdlib",
        "containsEntry",
        "entry",
        "",
        "containsEntry$kotlin_stdlib",
        "containsKey",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "value",
        "contentEquals",
        "other",
        "ensureCapacity",
        "ensureExtraCapacity",
        "n",
        "entriesIterator",
        "Lkotlin/collections/builders/MapBuilder$EntriesItr;",
        "entriesIterator$kotlin_stdlib",
        "equals",
        "",
        "findKey",
        "findValue",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "hash",
        "hashCode",
        "isEmpty",
        "keysIterator",
        "Lkotlin/collections/builders/MapBuilder$KeysItr;",
        "keysIterator$kotlin_stdlib",
        "put",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "putAll",
        "from",
        "putAllEntries",
        "putEntry",
        "putRehash",
        "i",
        "rehash",
        "newHashSize",
        "remove",
        "removeEntry",
        "removeEntry$kotlin_stdlib",
        "removeHashAt",
        "removedHash",
        "removeKey",
        "removeKey$kotlin_stdlib",
        "removeKeyAt",
        "index",
        "removeValue",
        "element",
        "removeValue$kotlin_stdlib",
        "toString",
        "",
        "valuesIterator",
        "Lkotlin/collections/builders/MapBuilder$ValuesItr;",
        "valuesIterator$kotlin_stdlib",
        "Companion",
        "EntriesItr",
        "EntryRef",
        "Itr",
        "KeysItr",
        "ValuesItr",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final m:Lkotlin/collections/b1/d$a;


# instance fields
.field private a:I

.field private b:I

.field private c:Lkotlin/collections/b1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/b1/f<",
            "TK;>;"
        }
    .end annotation
.end field

.field private d:Lkotlin/collections/b1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/b1/g<",
            "TV;>;"
        }
    .end annotation
.end field

.field private e:Lkotlin/collections/b1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/b1/e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private i:[I

.field private j:[I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/b1/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/b1/d$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/collections/b1/d;->m:Lkotlin/collections/b1/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 4
    invoke-static {p1}, Lkotlin/collections/b1/c;->d(I)[Ljava/lang/Object;

    move-result-object v1

    .line 5
    new-array v3, p1, [I

    .line 6
    sget-object v0, Lkotlin/collections/b1/d;->m:Lkotlin/collections/b1/d$a;

    invoke-static {v0, p1}, Lkotlin/collections/b1/d$a;->a(Lkotlin/collections/b1/d$a;I)I

    move-result p1

    new-array v4, p1, [I

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v6}, Lkotlin/collections/b1/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;[I[III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/collections/b1/d;->i:[I

    iput-object p4, p0, Lkotlin/collections/b1/d;->j:[I

    iput p5, p0, Lkotlin/collections/b1/d;->k:I

    iput p6, p0, Lkotlin/collections/b1/d;->l:I

    .line 2
    sget-object p1, Lkotlin/collections/b1/d;->m:Lkotlin/collections/b1/d$a;

    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/collections/b1/d$a;->b(Lkotlin/collections/b1/d$a;I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/b1/d;->a:I

    return-void
.end method

.method private final C(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int p1, p1, v0

    iget v0, p0, Lkotlin/collections/b1/d;->a:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method private final E(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->s(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->F(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final F(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/collections/b1/d;->j(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-direct {p0}, Lkotlin/collections/b1/d;->k()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_0
    neg-int v0, v0

    sub-int/2addr v0, v2

    .line 4
    aget-object v3, v1, v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final G(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->C(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Lkotlin/collections/b1/d;->k:I

    .line 3
    :goto_0
    iget-object v2, p0, Lkotlin/collections/b1/d;->j:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    if-nez v3, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 4
    aput v1, v2, v0

    .line 5
    iget-object v1, p0, Lkotlin/collections/b1/d;->i:[I

    aput v0, v1, p1

    return v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private final H(I)V
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/collections/b1/d;->l:I

    invoke-virtual {p0}, Lkotlin/collections/b1/d;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lkotlin/collections/b1/d;->n()V

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lkotlin/collections/b1/d;->j:[I

    .line 4
    sget-object v0, Lkotlin/collections/b1/d;->m:Lkotlin/collections/b1/d$a;

    invoke-static {v0, p1}, Lkotlin/collections/b1/d$a;->b(Lkotlin/collections/b1/d$a;I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/b1/d;->a:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lkotlin/collections/b1/d;->j:[I

    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v0

    invoke-static {p1, v1, v1, v0}, Lkotlin/collections/k;->h([IIII)V

    .line 6
    :goto_0
    iget p1, p0, Lkotlin/collections/b1/d;->l:I

    if-ge v1, p1, :cond_3

    add-int/lit8 p1, v1, 0x1

    .line 7
    invoke-direct {p0, v1}, Lkotlin/collections/b1/d;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, p1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private final J(I)V
    .locals 9

    .line 1
    iget v0, p0, Lkotlin/collections/b1/d;->k:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lkotlin/a0/d;->e(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    const/4 v3, 0x0

    move v0, p1

    :cond_0
    add-int/lit8 v4, p1, -0x1

    if-nez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 3
    iget v4, p0, Lkotlin/collections/b1/d;->k:I

    if-le v3, v4, :cond_2

    .line 4
    iget-object p1, p0, Lkotlin/collections/b1/d;->j:[I

    aput v1, p1, v0

    return-void

    .line 5
    :cond_2
    iget-object v4, p0, Lkotlin/collections/b1/d;->j:[I

    aget v5, v4, p1

    if-nez v5, :cond_3

    .line 6
    aput v1, v4, v0

    return-void

    :cond_3
    const/4 v6, -0x1

    if-gez v5, :cond_4

    .line 7
    aput v6, v4, v0

    :goto_1
    move v0, p1

    const/4 v3, 0x0

    goto :goto_2

    .line 8
    :cond_4
    iget-object v4, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lkotlin/collections/b1/d;->C(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p1

    .line 9
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v4, v8

    if-lt v4, v3, :cond_5

    .line 10
    iget-object v3, p0, Lkotlin/collections/b1/d;->j:[I

    aput v5, v3, v0

    .line 11
    iget-object v3, p0, Lkotlin/collections/b1/d;->i:[I

    aput v0, v3, v7

    goto :goto_1

    :cond_5
    :goto_2
    add-int/2addr v2, v6

    if-gez v2, :cond_0

    .line 12
    iget-object p1, p0, Lkotlin/collections/b1/d;->j:[I

    aput v6, p1, v0

    return-void
.end method

.method private final L(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/b1/c;->f([Ljava/lang/Object;I)V

    .line 2
    iget-object v0, p0, Lkotlin/collections/b1/d;->i:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->J(I)V

    .line 3
    iget-object v0, p0, Lkotlin/collections/b1/d;->i:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 4
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/collections/b1/d;->b:I

    return-void
.end method

.method public static final synthetic a(Lkotlin/collections/b1/d;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/b1/d;->k()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/collections/b1/d;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic e(Lkotlin/collections/b1/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/collections/b1/d;->l:I

    return p0
.end method

.method public static final synthetic f(Lkotlin/collections/b1/d;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/b1/d;->i:[I

    return-object p0
.end method

.method public static final synthetic g(Lkotlin/collections/b1/d;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic i(Lkotlin/collections/b1/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->L(I)V

    return-void
.end method

.method private final k()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlin/collections/b1/d;->w()I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/b1/c;->d(I)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    return-object v0
.end method

.method private final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lkotlin/collections/b1/d;->l:I

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Lkotlin/collections/b1/d;->i:[I

    aget v3, v3, v1

    if-ltz v3, :cond_1

    .line 4
    iget-object v3, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v4, v3, v2

    if-eqz v0, :cond_0

    .line 5
    aget-object v3, v0, v1

    aput-object v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lkotlin/collections/b1/c;->g([Ljava/lang/Object;II)V

    if-eqz v0, :cond_3

    .line 7
    iget v1, p0, Lkotlin/collections/b1/d;->l:I

    invoke-static {v0, v2, v1}, Lkotlin/collections/b1/c;->g([Ljava/lang/Object;II)V

    .line 8
    :cond_3
    iput v2, p0, Lkotlin/collections/b1/d;->l:I

    return-void
.end method

.method private final q(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/collections/b1/d;->o(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final r(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlin/collections/b1/d;->w()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2
    invoke-direct {p0}, Lkotlin/collections/b1/d;->w()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/b1/c;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lkotlin/collections/b1/c;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lkotlin/collections/b1/d;->i:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/collections/b1/d;->i:[I

    .line 6
    sget-object v0, Lkotlin/collections/b1/d;->m:Lkotlin/collections/b1/d$a;

    invoke-static {v0, p1}, Lkotlin/collections/b1/d$a;->a(Lkotlin/collections/b1/d$a;I)I

    move-result p1

    .line 7
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v0

    if-le p1, v0, :cond_3

    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->H(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget v0, p0, Lkotlin/collections/b1/d;->l:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lkotlin/collections/b1/d;->size()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-direct {p0}, Lkotlin/collections/b1/d;->w()I

    move-result p1

    if-le v0, p1, :cond_3

    .line 9
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result p1

    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->H(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final s(I)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/b1/d;->l:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->r(I)V

    return-void
.end method

.method private final u(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->C(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Lkotlin/collections/b1/d;->k:I

    .line 3
    :goto_0
    iget-object v2, p0, Lkotlin/collections/b1/d;->j:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-lez v2, :cond_1

    .line 4
    iget-object v4, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/2addr v1, v3

    if-gez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private final v(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/collections/b1/d;->l:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lkotlin/collections/b1/d;->i:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method private final w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method private final y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->j:[I

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/b1/d;->b:I

    return v0
.end method

.method public B()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->d:Lkotlin/collections/b1/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkotlin/collections/b1/g;

    invoke-direct {v0, p0}, Lkotlin/collections/b1/g;-><init>(Lkotlin/collections/b1/d;)V

    .line 3
    iput-object v0, p0, Lkotlin/collections/b1/d;->d:Lkotlin/collections/b1/g;

    :cond_0
    return-object v0
.end method

.method public final D()Lkotlin/collections/b1/d$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/b1/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/collections/b1/d$e;

    invoke-direct {v0, p0}, Lkotlin/collections/b1/d$e;-><init>(Lkotlin/collections/b1/d;)V

    return-object v0
.end method

.method public final I(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->m()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->u(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->L(I)V

    return v2
.end method

.method public final K(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->m()V

    .line 2
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->u(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->L(I)V

    return p1
.end method

.method public final M(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->m()V

    .line 2
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->v(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->L(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final N()Lkotlin/collections/b1/d$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/b1/d$f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/collections/b1/d$f;

    invoke-direct {v0, p0}, Lkotlin/collections/b1/d$f;-><init>(Lkotlin/collections/b1/d;)V

    return-object v0
.end method

.method public clear()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->m()V

    .line 2
    iget v0, p0, Lkotlin/collections/b1/d;->l:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lkotlin/collections/b1/d;->i:[I

    aget v4, v3, v2

    if-ltz v4, :cond_0

    .line 4
    iget-object v5, p0, Lkotlin/collections/b1/d;->j:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    .line 5
    aput v4, v3, v2

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/b1/d;->l:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/b1/c;->g([Ljava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p0, Lkotlin/collections/b1/d;->l:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/b1/c;->g([Ljava/lang/Object;II)V

    .line 8
    :cond_2
    iput v1, p0, Lkotlin/collections/b1/d;->b:I

    .line 9
    iput v1, p0, Lkotlin/collections/b1/d;->l:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->u(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->v(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->q(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->u(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->t()Lkotlin/collections/b1/d$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlin/collections/b1/d$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lkotlin/collections/b1/d$b;->m()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->m()V

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->C(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget v1, p0, Lkotlin/collections/b1/d;->k:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lkotlin/a0/d;->e(II)I

    move-result v1

    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-object v3, p0, Lkotlin/collections/b1/d;->j:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    .line 5
    iget v1, p0, Lkotlin/collections/b1/d;->l:I

    invoke-direct {p0}, Lkotlin/collections/b1/d;->w()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 6
    invoke-direct {p0, v4}, Lkotlin/collections/b1/d;->s(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lkotlin/collections/b1/d;->l:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lkotlin/collections/b1/d;->l:I

    .line 8
    iget-object v5, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 9
    iget-object p1, p0, Lkotlin/collections/b1/d;->i:[I

    aput v0, p1, v1

    .line 10
    iget-object p1, p0, Lkotlin/collections/b1/d;->j:[I

    aput v3, p1, v0

    .line 11
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->size()I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lkotlin/collections/b1/d;->b:I

    .line 12
    iget p1, p0, Lkotlin/collections/b1/d;->k:I

    if-le v2, p1, :cond_1

    iput v2, p0, Lkotlin/collections/b1/d;->k:I

    :cond_1
    return v1

    .line 13
    :cond_2
    iget-object v5, p0, Lkotlin/collections/b1/d;->g:[Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    neg-int p1, v3

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_4

    .line 14
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->H(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_5

    .line 15
    invoke-direct {p0}, Lkotlin/collections/b1/d;->y()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->z()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->m()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlin/collections/b1/d;->f:Z

    return-object p0
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/collections/b1/d;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final o(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lkotlin/collections/b1/d;->p(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final p(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/collections/b1/d;->u(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->m()V

    .line 2
    invoke-virtual {p0, p1}, Lkotlin/collections/b1/d;->j(Ljava/lang/Object;)I

    move-result p1

    .line 3
    invoke-direct {p0}, Lkotlin/collections/b1/d;->k()[Ljava/lang/Object;

    move-result-object v0

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 4
    aget-object v1, v0, p1

    .line 5
    aput-object p2, v0, p1

    return-object v1

    .line 6
    :cond_0
    aput-object p2, v0, p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->m()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/collections/b1/d;->E(Ljava/util/Collection;)Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/b1/d;->K(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/collections/b1/d;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 3
    aget-object v1, v0, p1

    .line 4
    invoke-static {v0, p1}, Lkotlin/collections/b1/c;->f([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->A()I

    move-result v0

    return v0
.end method

.method public final t()Lkotlin/collections/b1/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/b1/d$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/collections/b1/d$b;

    invoke-direct {v0, p0}, Lkotlin/collections/b1/d$b;-><init>(Lkotlin/collections/b1/d;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/collections/b1/d;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->t()Lkotlin/collections/b1/d$b;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lkotlin/collections/b1/d$d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v1, v0}, Lkotlin/collections/b1/d$b;->l(Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/b1/d;->B()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->e:Lkotlin/collections/b1/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkotlin/collections/b1/e;

    invoke-direct {v0, p0}, Lkotlin/collections/b1/e;-><init>(Lkotlin/collections/b1/d;)V

    .line 3
    iput-object v0, p0, Lkotlin/collections/b1/d;->e:Lkotlin/collections/b1/e;

    :cond_0
    return-object v0
.end method

.method public z()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/b1/d;->c:Lkotlin/collections/b1/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkotlin/collections/b1/f;

    invoke-direct {v0, p0}, Lkotlin/collections/b1/f;-><init>(Lkotlin/collections/b1/d;)V

    .line 3
    iput-object v0, p0, Lkotlin/collections/b1/d;->c:Lkotlin/collections/b1/f;

    :cond_0
    return-object v0
.end method
