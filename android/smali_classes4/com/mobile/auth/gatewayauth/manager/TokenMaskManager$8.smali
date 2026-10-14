.class Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/manager/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->updateMask(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
        "Lcom/mobile/auth/u/e;",
        "Lcom/mobile/auth/gatewayauth/manager/base/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

.field final synthetic f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->a:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->c:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->e:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "600010"

    const-string v0, "\u672a\u77e5\u5f02\u5e38"

    invoke-static {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->c:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-interface {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V
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

.method public a(Lcom/mobile/auth/u/e;)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;->newLoginPhoneInfo()Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobile/auth/u/e;->c()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/a$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo$Builder;->protocolName(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobile/auth/u/e;->c()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/a$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo$Builder;->protocolUrl(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobile/auth/u/e;->c()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo$Builder;->phoneNumber(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo$Builder;->build()Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->a:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->c:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a()Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a(Z)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a(Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/mobile/auth/u/e;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/mobile/auth/u/e;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/manager/base/c;->f()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a(J)V

    invoke-virtual {p1}, Lcom/mobile/auth/u/e;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/base/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->e:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    invoke-virtual {p1}, Lcom/mobile/auth/u/e;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/base/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mobile/auth/u/e;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c;->f()J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;J)V
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

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic onError(Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/gatewayauth/manager/base/c;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V
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

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/u/e;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$8;->a(Lcom/mobile/auth/u/e;)V
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
