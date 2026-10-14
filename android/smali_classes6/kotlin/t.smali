.class public final Lkotlin/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/t;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\n\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0087@\u0018\u0000 t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001tB\u0014\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u000c\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u000eH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0000H\u0097\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u0010J\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u0013J\u001b\u0010\u001b\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010\u0018J\u001a\u0010!\u001a\u00020\"2\u0008\u0010\t\u001a\u0004\u0018\u00010#H\u00d6\u0003\u00a2\u0006\u0004\u0008$\u0010%J\u001b\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010\u0010J\u001b\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010\u0013J\u001b\u0010&\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010\u001fJ\u001b\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010\u0018J\u0010\u0010+\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008,\u0010-J\u0016\u0010.\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008/\u0010\u0005J\u0016\u00100\u001a\u00020\u0000H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00081\u0010\u0005J\u001b\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u0010\u0010J\u001b\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u0010\u0013J\u001b\u00102\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010\u001fJ\u001b\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u0010\u0018J\u001b\u00107\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u000eH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109J\u001b\u00107\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010\u0013J\u001b\u00107\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u0010\u001fJ\u001b\u00107\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010\u000bJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u000c\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010\u000bJ\u001b\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010\u0010J\u001b\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010\u0013J\u001b\u0010?\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008B\u0010\u001fJ\u001b\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010\u0018J\u001b\u0010D\u001a\u00020E2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010GJ\u001b\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010\u0010J\u001b\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008J\u0010\u0013J\u001b\u0010H\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010\u001fJ\u001b\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010\u0018J\u001b\u0010M\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008N\u0010\u0010J\u001b\u0010M\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008O\u0010\u0013J\u001b\u0010M\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008P\u0010\u001fJ\u001b\u0010M\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Q\u0010\u0018J\u0010\u0010R\u001a\u00020SH\u0087\u0008\u00a2\u0006\u0004\u0008T\u0010UJ\u0010\u0010V\u001a\u00020WH\u0087\u0008\u00a2\u0006\u0004\u0008X\u0010YJ\u0010\u0010Z\u001a\u00020[H\u0087\u0008\u00a2\u0006\u0004\u0008\\\u0010]J\u0010\u0010^\u001a\u00020\rH\u0087\u0008\u00a2\u0006\u0004\u0008_\u0010-J\u0010\u0010`\u001a\u00020aH\u0087\u0008\u00a2\u0006\u0004\u0008b\u0010cJ\u0010\u0010d\u001a\u00020\u0003H\u0087\u0008\u00a2\u0006\u0004\u0008e\u0010\u0005J\u000f\u0010f\u001a\u00020gH\u0016\u00a2\u0006\u0004\u0008h\u0010iJ\u0016\u0010j\u001a\u00020\u000eH\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008k\u0010UJ\u0016\u0010l\u001a\u00020\u0011H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008m\u0010-J\u0016\u0010n\u001a\u00020\u0014H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008o\u0010cJ\u0016\u0010p\u001a\u00020\u0000H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008q\u0010\u0005J\u001b\u0010r\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u000c\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008s\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006u"
    }
    d2 = {
        "Lkotlin/UShort;",
        "",
        "data",
        "",
        "constructor-impl",
        "(S)S",
        "getData$annotations",
        "()V",
        "and",
        "other",
        "and-xj2QHRw",
        "(SS)S",
        "compareTo",
        "",
        "Lkotlin/UByte;",
        "compareTo-7apg3OU",
        "(SB)I",
        "Lkotlin/UInt;",
        "compareTo-WZ4Q5Ns",
        "(SI)I",
        "Lkotlin/ULong;",
        "compareTo-VKZWuLQ",
        "(SJ)I",
        "compareTo-xj2QHRw",
        "(SS)I",
        "dec",
        "dec-Mh2AYeg",
        "div",
        "div-7apg3OU",
        "div-WZ4Q5Ns",
        "div-VKZWuLQ",
        "(SJ)J",
        "div-xj2QHRw",
        "equals",
        "",
        "",
        "equals-impl",
        "(SLjava/lang/Object;)Z",
        "floorDiv",
        "floorDiv-7apg3OU",
        "floorDiv-WZ4Q5Ns",
        "floorDiv-VKZWuLQ",
        "floorDiv-xj2QHRw",
        "hashCode",
        "hashCode-impl",
        "(S)I",
        "inc",
        "inc-Mh2AYeg",
        "inv",
        "inv-Mh2AYeg",
        "minus",
        "minus-7apg3OU",
        "minus-WZ4Q5Ns",
        "minus-VKZWuLQ",
        "minus-xj2QHRw",
        "mod",
        "mod-7apg3OU",
        "(SB)B",
        "mod-WZ4Q5Ns",
        "mod-VKZWuLQ",
        "mod-xj2QHRw",
        "or",
        "or-xj2QHRw",
        "plus",
        "plus-7apg3OU",
        "plus-WZ4Q5Ns",
        "plus-VKZWuLQ",
        "plus-xj2QHRw",
        "rangeTo",
        "Lkotlin/ranges/UIntRange;",
        "rangeTo-xj2QHRw",
        "(SS)Lkotlin/ranges/UIntRange;",
        "rem",
        "rem-7apg3OU",
        "rem-WZ4Q5Ns",
        "rem-VKZWuLQ",
        "rem-xj2QHRw",
        "times",
        "times-7apg3OU",
        "times-WZ4Q5Ns",
        "times-VKZWuLQ",
        "times-xj2QHRw",
        "toByte",
        "",
        "toByte-impl",
        "(S)B",
        "toDouble",
        "",
        "toDouble-impl",
        "(S)D",
        "toFloat",
        "",
        "toFloat-impl",
        "(S)F",
        "toInt",
        "toInt-impl",
        "toLong",
        "",
        "toLong-impl",
        "(S)J",
        "toShort",
        "toShort-impl",
        "toString",
        "",
        "toString-impl",
        "(S)Ljava/lang/String;",
        "toUByte",
        "toUByte-w2LRezQ",
        "toUInt",
        "toUInt-pVg5ArA",
        "toULong",
        "toULong-s-VKNKU",
        "toUShort",
        "toUShort-Mh2AYeg",
        "xor",
        "xor-xj2QHRw",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final a:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private synthetic constructor <init>(S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lkotlin/t;->a:S

    return-void
.end method

.method public static final synthetic a(S)Lkotlin/t;
    .locals 1

    new-instance v0, Lkotlin/t;

    invoke-direct {v0, p0}, Lkotlin/t;-><init>(S)V

    return-object v0
.end method

.method private b(S)I
    .locals 1

    .line 1
    iget-short v0, p0, Lkotlin/t;->a:S

    invoke-static {v0, p1}, Lkotlin/t;->c(SS)I

    move-result p1

    return p1
.end method

.method private static c(SS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->g(II)I

    move-result p0

    return p0
.end method

.method public static d(S)S
    .locals 0

    return p0
.end method

.method public static e(SLjava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlin/t;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/t;

    invoke-virtual {p1}, Lkotlin/t;->k()S

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(S)I
    .locals 0

    return p0
.end method

.method public static h(S)Ljava/lang/String;
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lkotlin/t;

    invoke-virtual {p1}, Lkotlin/t;->k()S

    move-result p1

    invoke-direct {p0, p1}, Lkotlin/t;->b(S)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-short v0, p0, Lkotlin/t;->a:S

    invoke-static {v0, p1}, Lkotlin/t;->e(SLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-short v0, p0, Lkotlin/t;->a:S

    invoke-static {v0}, Lkotlin/t;->g(S)I

    return v0
.end method

.method public final synthetic k()S
    .locals 1

    iget-short v0, p0, Lkotlin/t;->a:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-short v0, p0, Lkotlin/t;->a:S

    invoke-static {v0}, Lkotlin/t;->h(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
