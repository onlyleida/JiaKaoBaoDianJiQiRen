.class public Lcom/tencent/bugly/proguard/c;
.super Lcom/tencent/bugly/proguard/a;
.source "SourceFile"


# instance fields
.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/bugly/proguard/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    .line 4
    new-instance v0, Lcom/tencent/bugly/proguard/h;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 3
    instance-of v0, p2, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/i;->a()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not support Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put value can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put key can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a([B)V
    .locals 3

    .line 19
    :try_start_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/a;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 20
    :catch_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/h;->a([B)V

    .line 21
    iget-object p1, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)I

    .line 22
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    new-array v1, v0, [B

    const-string v2, ""

    .line 23
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v1, p1, v0, v0}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    return-void
.end method

.method public a()[B
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/i;-><init>(I)V

    .line 15
    iget-object v2, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 16
    iget-object v2, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    .line 17
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/i;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/k;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0

    .line 18
    :cond_0
    invoke-super {p0}, Lcom/tencent/bugly/proguard/a;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/bugly/proguard/b;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/h;->a([B)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v0, p2, v3, v1}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/tencent/bugly/proguard/b;

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object v2

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object p2, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-array v2, v3, [B

    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    .line 16
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/h;->a([B)V

    .line 17
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v0, p2, v3, v1}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    .line 20
    new-instance p2, Lcom/tencent/bugly/proguard/b;

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    return-void
.end method
