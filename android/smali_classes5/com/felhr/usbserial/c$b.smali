.class Lcom/felhr/usbserial/c$b;
.super Lcom/felhr/usbserial/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcom/felhr/usbserial/c;


# direct methods
.method private constructor <init>(Lcom/felhr/usbserial/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-direct {p0}, Lcom/felhr/usbserial/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felhr/usbserial/c;Lcom/felhr/usbserial/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/c$b;-><init>(Lcom/felhr/usbserial/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/a;->a:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->o(Lcom/felhr/usbserial/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/felhr/usbserial/c$b;->c()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v1}, Lcom/felhr/usbserial/c;->p(Lcom/felhr/usbserial/c;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->p(Lcom/felhr/usbserial/c;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/felhr/usbserial/c;->q(Lcom/felhr/usbserial/c;Z)Z

    .line 6
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->r(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->r(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$b;

    move-result-object v0

    iget-object v1, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v1}, Lcom/felhr/usbserial/c;->p(Lcom/felhr/usbserial/c;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/felhr/usbserial/k$b;->a(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->s(Lcom/felhr/usbserial/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/felhr/usbserial/c$b;->d()Z

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v1}, Lcom/felhr/usbserial/c;->t(Lcom/felhr/usbserial/c;)Z

    move-result v1

    if-eq v1, v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->t(Lcom/felhr/usbserial/c;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/felhr/usbserial/c;->u(Lcom/felhr/usbserial/c;Z)Z

    .line 12
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->v(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->v(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$c;

    move-result-object v0

    iget-object v1, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v1}, Lcom/felhr/usbserial/c;->t(Lcom/felhr/usbserial/c;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/felhr/usbserial/k$c;->a(Z)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->o(Lcom/felhr/usbserial/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->r(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->r(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$b;

    move-result-object v0

    iget-object v1, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v1}, Lcom/felhr/usbserial/c;->p(Lcom/felhr/usbserial/c;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/felhr/usbserial/k$b;->a(Z)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->s(Lcom/felhr/usbserial/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->v(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->v(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$c;

    move-result-object v0

    iget-object v1, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v1}, Lcom/felhr/usbserial/c;->t(Lcom/felhr/usbserial/c;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/felhr/usbserial/k$c;->a(Z)V

    :cond_3
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/felhr/usbserial/a;->a:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x64

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
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->w(Lcom/felhr/usbserial/c;)Z

    move-result v0

    return v0

    .line 6
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x64

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
    iget-object v0, p0, Lcom/felhr/usbserial/c$b;->d:Lcom/felhr/usbserial/c;

    invoke-static {v0}, Lcom/felhr/usbserial/c;->x(Lcom/felhr/usbserial/c;)Z

    move-result v0

    return v0

    .line 6
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
