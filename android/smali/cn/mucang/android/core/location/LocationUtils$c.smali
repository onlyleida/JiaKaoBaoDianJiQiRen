.class Lcn/mucang/android/core/location/LocationUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/location/LocationUtils;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Lcn/mucang/android/core/config/m;

    invoke-direct {v2}, Lcn/mucang/android/core/config/m;-><init>()V

    invoke-static {v2}, Lcn/mucang/android/core/config/MucangConfig;->A(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "IP\u5b9a\u4f4d"

    .line 4
    invoke-static {v3, v0, v1}, Lcn/mucang/android/core/location/LocationUtils;->b(Ljava/lang/String;J)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IP\u5b9a\u4f4d\u8017\u65f6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms,\u7ed3\u679c\uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hadeslee"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 7
    invoke-static {v2, v0}, Lcn/mucang/android/core/location/LocationUtils;->p(Ljava/lang/String;Z)V

    const-string v0, "null"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u83b7\u53d6IP\u8f6cCityCode\u4e3a\'null\'"

    .line 9
    invoke-static {v0}, Lf/a/a/a/c;->l(Ljava/lang/String;)V

    :cond_1
    const-string v0, "\u83b7\u53d6IP\u8f6cCityCode\u6210\u529f"

    .line 10
    invoke-static {v0}, Lf/a/a/a/c;->l(Ljava/lang/String;)V

    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_2
    const-string v0, "\u83b7\u53d6IP\u8f6cCityCode\u4e3a\u7a7a"

    .line 12
    invoke-static {v0}, Lf/a/a/a/c;->l(Ljava/lang/String;)V

    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/location/LocationUtils$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
