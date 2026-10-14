.class public final Lcom/tencent/bugly/proguard/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 2
    iput-object v0, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 4
    iput-object v0, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "GBK"

    .line 7
    iput-object p2, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    const/4 p2, 0x4

    .line 9
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private a(DIZ)D
    .locals 0

    .line 80
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 81
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 82
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 83
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    goto :goto_0

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    :goto_0
    return-wide p1

    .line 87
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(FIZ)F
    .locals 0

    .line 73
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 74
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 75
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 76
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    :goto_0
    return p1

    .line 79
    :cond_3
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    .line 5
    iput-byte v1, p0, Lcom/tencent/bugly/proguard/h$a;->a:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 6
    iput v0, p0, Lcom/tencent/bugly/proguard/h$a;->b:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/h$a;->b:I

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 89
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 91
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 94
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 95
    new-instance p3, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p3}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 96
    iget-object p4, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p3, p4}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 97
    iget-byte p3, p3, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p4, 0x8

    if-ne p3, p4, :cond_2

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 98
    invoke-virtual {p0, p3, p3, p4}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 99
    invoke-virtual {p0, v0, p3, p4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 100
    invoke-virtual {p0, p2, p4, p4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 101
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p4, :cond_5

    :cond_4
    return-object p1

    .line 104
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_6
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 13
    new-instance v0, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 15
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/h;->a(B)V

    .line 16
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    return-void
.end method

.method private a(B)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 17
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string v0, "invalid type."

    invoke-direct {p1, v0}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :pswitch_0
    new-instance v2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 19
    iget-object v3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 20
    iget-byte v3, v2, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-nez v3, :cond_0

    .line 21
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    .line 22
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "skipField with invalid type, type value: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, v2, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return-void

    .line 24
    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/h;->a()V

    return-void

    .line 25
    :pswitch_3
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 26
    new-instance v0, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    iget-byte v0, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/h;->a(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 27
    :pswitch_4
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    :goto_1
    shl-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_2

    .line 28
    new-instance v2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/h;->a(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 29
    :pswitch_5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 30
    :pswitch_6
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_3

    add-int/lit16 p1, p1, 0x100

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 32
    :pswitch_7
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 33
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 34
    :pswitch_9
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 35
    :pswitch_a
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 36
    :pswitch_b
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 37
    :pswitch_c
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Z
    .locals 6

    const/4 v0, 0x0

    .line 8
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 10
    iget v3, v1, Lcom/tencent/bugly/proguard/h$a;->b:I

    if-le p1, v3, :cond_1

    iget-byte v4, v1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-byte v2, v1, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/h;->a(B)V
    :try_end_0
    .catch Lcom/tencent/bugly/proguard/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v3, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method private a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 106
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 107
    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "unable to get type of key and value."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 19
    new-instance p2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 20
    iget-object p3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 21
    iget-byte p2, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p3, 0x9

    if-ne p2, p3, :cond_2

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 22
    invoke-virtual {p0, p2, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 25
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 26
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p3, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(IZ)[Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 4
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_1

    .line 6
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 7
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p2, :cond_5

    const/4 v1, 0x0

    :cond_4
    return-object v1

    .line 10
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(IZ)[S
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 4
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7
    aget-short v3, v1, p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(SIZ)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p2, :cond_4

    const/4 v1, 0x0

    :cond_3
    return-object v1

    .line 10
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(IZ)[I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 4
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7
    aget v3, v1, p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p2, :cond_4

    const/4 v1, 0x0

    :cond_3
    return-object v1

    .line 10
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(IZ)[J
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 4
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7
    aget-wide v3, v1, p1

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p2, :cond_4

    const/4 v1, 0x0

    :cond_3
    return-object v1

    .line 10
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(IZ)[F
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 4
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7
    aget v3, v1, p1

    invoke-direct {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(FIZ)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p2, :cond_4

    const/4 v1, 0x0

    :cond_3
    return-object v1

    .line 10
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(IZ)[D
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 4
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7
    aget-wide v3, v1, p1

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(DIZ)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p2, :cond_4

    const/4 v1, 0x0

    :cond_3
    return-object v1

    .line 10
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(BIZ)B
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 40
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 41
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 42
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-eqz p1, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    :goto_0
    return p1

    .line 45
    :cond_3
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(IIZ)I
    .locals 0

    .line 54
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 55
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 56
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 57
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    :goto_0
    return p1

    .line 62
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public final a(JIZ)J
    .locals 0

    .line 63
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 64
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 65
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 66
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_1

    .line 67
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_1

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    :goto_0
    int-to-long p1, p1

    goto :goto_1

    :cond_5
    if-nez p4, :cond_6

    :goto_1
    return-wide p1

    .line 72
    :cond_6
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;
    .locals 0

    .line 109
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 110
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    new-instance p2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 112
    iget-object p3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 113
    iget-byte p2, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p3, 0xa

    if-ne p2, p3, :cond_0

    .line 114
    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/h;)V

    .line 115
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/h;->a()V

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-nez p3, :cond_2

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 118
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 119
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 123
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(SIZ)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 125
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 128
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    .line 129
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 130
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(FIZ)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 132
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    .line 133
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(DIZ)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 134
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 135
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 137
    check-cast p1, Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    .line 138
    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_e

    .line 139
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length p3, p1

    if-ge v1, p3, :cond_c

    aget-object p3, p1, v1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    return-object p2

    :cond_d
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 140
    :cond_e
    instance-of v0, p1, Lcom/tencent/bugly/proguard/j;

    if-eqz v0, :cond_f

    .line 141
    check-cast p1, Lcom/tencent/bugly/proguard/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;

    move-result-object p1

    return-object p1

    .line 142
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 143
    instance-of v0, p1, [B

    if-nez v0, :cond_17

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_10

    goto :goto_2

    .line 144
    :cond_10
    instance-of v0, p1, [Z

    if-eqz v0, :cond_11

    .line 145
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->d(IZ)[Z

    move-result-object p1

    return-object p1

    .line 146
    :cond_11
    instance-of v0, p1, [S

    if-eqz v0, :cond_12

    .line 147
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->e(IZ)[S

    move-result-object p1

    return-object p1

    .line 148
    :cond_12
    instance-of v0, p1, [I

    if-eqz v0, :cond_13

    .line 149
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->f(IZ)[I

    move-result-object p1

    return-object p1

    .line 150
    :cond_13
    instance-of v0, p1, [J

    if-eqz v0, :cond_14

    .line 151
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->g(IZ)[J

    move-result-object p1

    return-object p1

    .line 152
    :cond_14
    instance-of v0, p1, [F

    if-eqz v0, :cond_15

    .line 153
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->h(IZ)[F

    move-result-object p1

    return-object p1

    .line 154
    :cond_15
    instance-of v0, p1, [D

    if-eqz v0, :cond_16

    .line 155
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->i(IZ)[D

    move-result-object p1

    return-object p1

    .line 156
    :cond_16
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 157
    :cond_17
    :goto_2
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->c(IZ)[B

    move-result-object p1

    return-object p1

    .line 158
    :cond_18
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "read object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public final a(SIZ)S
    .locals 0

    .line 46
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 47
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 48
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 49
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    int-to-short p1, p1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    :goto_0
    return p1

    .line 53
    :cond_4
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(IZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final b(IZ)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 4
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    .line 6
    new-array p1, p1, [B

    .line 7
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_3

    add-int/lit16 p1, p1, 0x100

    .line 13
    :cond_3
    new-array p1, p1, [B

    .line 14
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 15
    :try_start_1
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 16
    :catch_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    const/4 p2, 0x0

    :goto_0
    return-object p2

    .line 17
    :cond_5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(IZ)[B
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    new-instance p2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 4
    iget-byte v0, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 5
    new-instance v0, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 7
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    const-string v4, ", "

    const-string v5, ", type: "

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0, v3, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v1

    if-ltz v1, :cond_0

    .line 9
    new-array p1, v1, [B

    .line 10
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 11
    :cond_0
    new-instance v2, Lcom/tencent/bugly/proguard/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "invalid size, tag: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_1
    new-instance v1, Lcom/tencent/bugly/proguard/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type mismatch, tag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    invoke-virtual {p0, v3, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    if-ltz p1, :cond_5

    .line 15
    new-array p2, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    .line 16
    aget-byte v1, p2, v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move-object p1, p2

    goto :goto_1

    .line 17
    :cond_5
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    if-nez p2, :cond_7

    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 18
    :cond_7
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method
