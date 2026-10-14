.class public Lcom/mobile/auth/gatewayauth/manager/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/gatewayauth/manager/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mobile/auth/p/a;


# direct methods
.method public constructor <init>(Lcom/mobile/auth/p/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->a:Lcom/mobile/auth/p/a;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/o/a;)Lcom/mobile/auth/gatewayauth/manager/e;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/e;

    new-instance v1, Lcom/mobile/auth/p/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mobile/auth/p/b;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/o/a;)V

    invoke-direct {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/e;-><init>(Lcom/mobile/auth/p/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mobile/auth/gatewayauth/manager/e$a;)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/mobile/auth/gatewayauth/manager/e$1;

    sget-object v2, Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;->SAME_WITH_CALLABLE:Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;

    const-wide/16 v3, 0x7d0

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/gatewayauth/manager/e$1;-><init>(Lcom/mobile/auth/gatewayauth/manager/e;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;JLcom/mobile/auth/gatewayauth/manager/e$a;)V

    new-instance p1, Lcom/mobile/auth/t/d;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/e;->a:Lcom/mobile/auth/p/a;

    invoke-direct {p1, v6, v0}, Lcom/mobile/auth/t/d;-><init>(Lcom/nirvana/tools/requestqueue/Callback;Lcom/mobile/auth/p/a;)V

    invoke-static {}, Lcom/nirvana/tools/requestqueue/RequestQueue;->getInstance()Lcom/nirvana/tools/requestqueue/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/requestqueue/RequestQueue;->pushRequest(Lcom/nirvana/tools/requestqueue/Request;)V
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
