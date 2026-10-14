.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b<",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;-><init>()V

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    .line 3
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->n()V

    return-void
.end method

.method static synthetic h()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->l()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    move-result-object v0

    return-object v0
.end method

.method private static l()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;-><init>()V

    return-object v0
.end method

.method private m()V
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/k;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/l;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    .line 3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->b:I

    :cond_0
    return-void
.end method

.method private n()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->p(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    return-object p0
.end method

.method public bridge synthetic b(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->p(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    return-object p0
.end method

.method public bridge synthetic build()Lkotlin/reflect/jvm/internal/impl/protobuf/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->i()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->k()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->k()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->o(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    return-object p0
.end method

.method public i()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->j()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;Lkotlin/reflect/jvm/internal/impl/metadata/a;)V

    .line 2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->k()Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    .line 4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->b:I

    .line 5
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;->access$302(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;Lkotlin/reflect/jvm/internal/impl/protobuf/l;)Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    return-object v0
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->l()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->j()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->o(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    return-object v0
.end method

.method public o(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;->access$300(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;->access$300(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    .line 5
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->b:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->m()V

    .line 7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;->access$300(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;->e()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;->access$400(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;->g(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;

    return-object p0
.end method

.method public p(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->o(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;->o(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable$b;

    :cond_1
    throw p1
.end method
