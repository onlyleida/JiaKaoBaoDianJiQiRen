.class public Lcom/mobile/auth/p/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirvana/tools/requestqueue/TimeoutCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/p/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nirvana/tools/requestqueue/TimeoutCallable<",
        "Lcom/mobile/auth/u/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mobile/auth/o/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobile/auth/o/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/p/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mobile/auth/u/d;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/mobile/auth/p/d$a;->a(Landroid/content/Context;)Lcom/mobile/auth/p/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/p/d$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/mobile/auth/u/d;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mobile/auth/u/d;->a(Z)V

    invoke-virtual {p2, p1}, Lcom/mobile/auth/u/d;->a(Ljava/lang/String;)V
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

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.net.ConnectivityManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    const-string p2, "ConnectivityManager is null, cannot try to force a mobile connection"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    iget-object v4, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "TYPE_MOBILE_HIPRI network state: "

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v3, "startUsingNetworkFeature"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v6, "enableHIPRI"

    aput-object v6, v4, v8

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "startUsingNetworkFeature for enableHIPRI result: "

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    const/4 v4, -0x1

    if-ne v4, v3, :cond_2

    iget-object p1, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    const-string p2, "Wrong result of startUsingNetworkFeature, maybe problems"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    return v0

    :cond_2
    if-nez v3, :cond_3

    iget-object p1, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    const-string p2, "No need to perform additional network settings"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    return v8

    :cond_3
    invoke-static {p2}, Lcom/mobile/auth/ab/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    new-array v7, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Source address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v0

    invoke-virtual {v6, v7}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    new-array v7, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Destination host address to route: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v0

    invoke-virtual {v6, v7}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    move-object p2, v3

    :goto_0
    invoke-static {p2}, Lcom/mobile/auth/ab/f;->c(Ljava/lang/String;)I

    move-result p2

    if-ne v4, p2, :cond_5

    iget-object p1, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    const-string p2, "Wrong host address transformation, result was -1"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v6}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    :cond_7
    :goto_2
    :try_start_2
    const-string v3, "requestRouteToHost"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v0

    aput-object v6, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v8

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v1, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    new-array v3, v8, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestRouteToHost result: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Lcom/mobile/auth/o/a;->b([Ljava/lang/String;)V

    if-nez p2, :cond_8

    iget-object v1, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    const-string v3, "Wrong requestRouteToHost result: expected true, but was false"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mobile/auth/o/a;->b([Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    iget-object v1, p0, Lcom/mobile/auth/p/d;->b:Lcom/mobile/auth/o/a;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TYPE_MOBILE_HIPRI network state after routing: "

    aput-object v3, v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p2

    :cond_9
    :goto_3
    return v8

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :catch_1
    return v0
.end method


# virtual methods
.method public a()Lcom/mobile/auth/u/d;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/mobile/auth/u/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mobile/auth/u/d;-><init>(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public b()Lcom/mobile/auth/u/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "https://id6.me/auth/preauth.do"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/mobile/auth/u/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/mobile/auth/u/d;-><init>(ZZ)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/p/d;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/mobile/auth/p/d;->a(Landroid/content/Context;Lcom/mobile/auth/u/d;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/mobile/auth/p/d;->a:Landroid/content/Context;

    invoke-direct {p0, v4, v0}, Lcom/mobile/auth/p/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/mobile/auth/p/d;->a:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v3, v0, v1, v1, v4}, Lcom/mobile/auth/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/mobile/auth/u/d;->a(Z)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mobile/auth/u/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lcom/mobile/auth/u/d;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/p/d;->b()Lcom/mobile/auth/u/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public synthetic onTimeout()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/p/d;->a()Lcom/mobile/auth/u/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method
