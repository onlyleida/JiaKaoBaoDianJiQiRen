.class public Lcom/mobile/auth/gatewayauth/manager/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5080a7d9

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x5a9b9ec

    if-eq v1, v2, :cond_1

    const v2, 0x347d2738

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "cm_zyhl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "cu_xw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "ct_sjl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_4
    const-wide/32 v0, 0x927c0

    return-wide v0

    :cond_5
    const-wide/16 v0, 0x4e20

    return-wide v0

    :catchall_0
    move-exception p0

    const-wide/16 v0, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-wide v0
.end method
