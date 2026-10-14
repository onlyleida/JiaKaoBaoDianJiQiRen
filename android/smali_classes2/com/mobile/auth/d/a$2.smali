.class Lcom/mobile/auth/d/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/d/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/d/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mobile/auth/a/b;

.field final synthetic g:Lcom/mobile/auth/d/a;

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Lcom/mobile/auth/d/a;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/a$2;->g:Lcom/mobile/auth/d/a;

    iput-object p2, p0, Lcom/mobile/auth/d/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/d/a$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/mobile/auth/d/a$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mobile/auth/d/a$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobile/auth/d/a$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/mobile/auth/d/a$2;->f:Lcom/mobile/auth/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mobile/auth/d/a$2;->h:Z

    iput-boolean p1, p0, Lcom/mobile/auth/d/a$2;->i:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mobile/auth/d/a$2;->h:Z

    iget-boolean v0, p0, Lcom/mobile/auth/d/a$2;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/d/a$2;->a:Ljava/lang/String;

    const-string v1, "{\"result\":80000,\"msg\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/d/a$2;->b:Landroid/content/Context;

    const-string v1, "{\"result\":80000,\"msg\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    iget-object v2, p0, Lcom/mobile/auth/d/a$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/d/a$2;->f:Lcom/mobile/auth/a/b;

    invoke-static {v0, v1, v2, v3}, Lcom/mobile/auth/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILjava/lang/String;J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/d/a$2;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mobile/auth/d/a$2;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobile/auth/d/a$2;->i:Z

    iget-object v0, p0, Lcom/mobile/auth/d/a$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToMobile_L  onFail()  expendTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/c/b;->h(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobile/auth/c/b;->a(I)Lcom/mobile/auth/c/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mobile/auth/c/b;->f(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/mobile/auth/c/b;->b(J)Lcom/mobile/auth/c/b;

    iget-object v0, p0, Lcom/mobile/auth/d/a$2;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mobile/auth/d/h;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/mobile/auth/d/a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/d/a$2;->f:Lcom/mobile/auth/a/b;

    invoke-static {v0, p1, v1, v2}, Lcom/mobile/auth/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V

    invoke-static {}, Lcom/mobile/auth/d/a;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching network failed (L), errorMsg :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , expendTime \uff1a"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/net/Network;J)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/d/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching network successfully (L) , expendTime \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mobile/auth/d/a$2;->h:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mobile/auth/d/a$2;->i:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/d/a$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/mobile/auth/c/b;->b(J)Lcom/mobile/auth/c/b;

    iget-object v1, p0, Lcom/mobile/auth/d/a$2;->g:Lcom/mobile/auth/d/a;

    iget-object v2, p0, Lcom/mobile/auth/d/a$2;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobile/auth/d/a$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobile/auth/d/a$2;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/mobile/auth/d/a$2;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/mobile/auth/d/a$2;->a:Ljava/lang/String;

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/mobile/auth/d/a;->a(Lcom/mobile/auth/d/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean p2, p0, Lcom/mobile/auth/d/a$2;->h:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/mobile/auth/d/a$2;->i:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mobile/auth/d/a$2;->i:Z

    iget-object p2, p0, Lcom/mobile/auth/d/a$2;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/mobile/auth/d/a$2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobile/auth/d/a$2;->f:Lcom/mobile/auth/a/b;

    invoke-static {p2, p1, p3, v0}, Lcom/mobile/auth/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V

    monitor-exit p0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
