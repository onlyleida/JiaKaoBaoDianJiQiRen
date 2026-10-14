.class Lcom/mobile/auth/z/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/z/a;->a(Landroid/content/Context;IILcom/mobile/auth/x/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mobile/auth/z/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/z/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/z/a$1;->b:Lcom/mobile/auth/z/a;

    iput-object p2, p0, Lcom/mobile/auth/z/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/z/a$1;->b:Lcom/mobile/auth/z/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/mobile/auth/z/a$1;->b:Lcom/mobile/auth/z/a;

    invoke-static {v1}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;)Lcom/mobile/auth/z/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/z/a$1;->a:Landroid/content/Context;

    const-string v2, "1005"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/mobile/auth/ab/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/z/a$1;->b:Lcom/mobile/auth/z/a;

    invoke-static {v1}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;)Lcom/mobile/auth/z/b;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-virtual {v1, v2}, Lcom/mobile/auth/z/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/z/a$1;->b:Lcom/mobile/auth/z/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;Lcom/mobile/auth/z/b;)Lcom/mobile/auth/z/b;

    iget-object v1, p0, Lcom/mobile/auth/z/a$1;->b:Lcom/mobile/auth/z/a;

    invoke-static {v1}, Lcom/mobile/auth/z/a;->b(Lcom/mobile/auth/z/a;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
