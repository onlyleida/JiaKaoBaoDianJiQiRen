.class Lcom/mobile/auth/aa/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/aa/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/aa/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/net/Network;Lcom/mobile/auth/aa/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/aa/c;

.field final synthetic b:Lcom/mobile/auth/aa/b;


# direct methods
.method constructor <init>(Lcom/mobile/auth/aa/b;Lcom/mobile/auth/aa/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/aa/b$1;->b:Lcom/mobile/auth/aa/b;

    iput-object p2, p0, Lcom/mobile/auth/aa/b$1;->a:Lcom/mobile/auth/aa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/ab/a;->a()Lcom/mobile/auth/ab/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/ab/a;->b()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/aa/b$1;->a:Lcom/mobile/auth/aa/c;

    const/4 v0, 0x2

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/mobile/auth/aa/c;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/aa/b$1;->a:Lcom/mobile/auth/aa/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mobile/auth/aa/c;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
