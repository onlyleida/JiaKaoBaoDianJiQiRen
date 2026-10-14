.class Lcom/felhr/usbserial/d$b;
.super Lcom/felhr/usbserial/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcom/felhr/usbserial/d;


# direct methods
.method private constructor <init>(Lcom/felhr/usbserial/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-direct {p0}, Lcom/felhr/usbserial/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felhr/usbserial/d;Lcom/felhr/usbserial/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/d$b;-><init>(Lcom/felhr/usbserial/d;)V

    return-void
.end method

.method private c()[B
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x28

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->r(Lcom/felhr/usbserial/d;)[B

    move-result-object v0

    return-object v0

    .line 6
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0}, Lcom/felhr/usbserial/d$b;->c()[B

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v2}, Lcom/felhr/usbserial/d;->o(Lcom/felhr/usbserial/d;)[B

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v3}, Lcom/felhr/usbserial/d;->p(Lcom/felhr/usbserial/d;)Z

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v3}, Lcom/felhr/usbserial/d;->s(Lcom/felhr/usbserial/d;)Z

    move-result v3

    aget-byte v6, v0, v1

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eq v3, v6, :cond_1

    .line 6
    iget-object v3, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v3}, Lcom/felhr/usbserial/d;->s(Lcom/felhr/usbserial/d;)Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-static {v3, v6}, Lcom/felhr/usbserial/d;->t(Lcom/felhr/usbserial/d;Z)Z

    .line 7
    iget-object v3, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v3}, Lcom/felhr/usbserial/d;->u(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v3}, Lcom/felhr/usbserial/d;->u(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$b;

    move-result-object v3

    iget-object v6, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v6}, Lcom/felhr/usbserial/d;->s(Lcom/felhr/usbserial/d;)Z

    move-result v6

    invoke-interface {v3, v6}, Lcom/felhr/usbserial/k$b;->a(Z)V

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v3}, Lcom/felhr/usbserial/d;->v(Lcom/felhr/usbserial/d;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v3}, Lcom/felhr/usbserial/d;->w(Lcom/felhr/usbserial/d;)Z

    move-result v3

    aget-byte v0, v0, v1

    const/16 v6, 0x20

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eq v3, v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->w(Lcom/felhr/usbserial/d;)Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-static {v0, v3}, Lcom/felhr/usbserial/d;->x(Lcom/felhr/usbserial/d;Z)Z

    .line 12
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->y(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->y(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$c;

    move-result-object v0

    iget-object v3, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v3}, Lcom/felhr/usbserial/d;->w(Lcom/felhr/usbserial/d;)Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/felhr/usbserial/k$c;->a(Z)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->z(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    aget-byte v0, v2, v1

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_4

    .line 16
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->z(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/felhr/usbserial/k$f;->a()V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->A(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    aget-byte v0, v2, v1

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    .line 19
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->A(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/felhr/usbserial/k$d;->a()V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->B(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21
    aget-byte v0, v2, v1

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_6

    .line 22
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->B(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/felhr/usbserial/k$a;->a()V

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->q(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$e;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 24
    aget-byte v0, v2, v1

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_7

    aget-byte v0, v2, v1

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->q(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/felhr/usbserial/k$e;->a()V

    goto :goto_2

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->p(Lcom/felhr/usbserial/d;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->u(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$b;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->u(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$b;

    move-result-object v0

    iget-object v2, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v2}, Lcom/felhr/usbserial/d;->s(Lcom/felhr/usbserial/d;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/felhr/usbserial/k$b;->a(Z)V

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->v(Lcom/felhr/usbserial/d;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->y(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$c;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v0}, Lcom/felhr/usbserial/d;->y(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$c;

    move-result-object v0

    iget-object v2, p0, Lcom/felhr/usbserial/d$b;->d:Lcom/felhr/usbserial/d;

    invoke-static {v2}, Lcom/felhr/usbserial/d;->w(Lcom/felhr/usbserial/d;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/felhr/usbserial/k$c;->a(Z)V

    .line 30
    :cond_a
    iput-boolean v1, p0, Lcom/felhr/usbserial/a;->a:Z

    :cond_b
    :goto_2
    return-void
.end method
