.class public Lcom/unity3d/splash/services/UnityServices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/UnityServices$UnityServicesError;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/services/a;ZZ)V
    .locals 4

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->d()V

    sget-boolean v0, Lcom/unity3d/splash/services/UnityServices;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "You are trying to re-initialize with a different gameId"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->j(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/splash/services/UnityServices;->a:Z

    invoke-static {}, Lcom/unity3d/splash/services/UnityServices;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Error while initializing Unity Services: device is not supported"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application start initializing at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->h(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/c/b/b;->l(J)V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    if-nez p0, :cond_5

    const-string p0, "Error while initializing Unity Services: null activity, halting Unity Ads init"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    sget-object p0, Lcom/unity3d/splash/services/UnityServices$UnityServicesError;->INVALID_ARGUMENT:Lcom/unity3d/splash/services/UnityServices$UnityServicesError;

    const-string p1, "Null activity"

    invoke-interface {p2, p0, p1}, Lcom/unity3d/splash/services/a;->a(Lcom/unity3d/splash/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, ") with game id "

    const-string v1, " ("

    const-string v2, "Initializing Unity Services "

    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_6

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->h()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in test mode"

    goto :goto_0

    :cond_6
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->h()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in production mode"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/c/b/b;->k(Z)V

    invoke-static {p2}, Lcom/unity3d/splash/services/c/b/b;->n(Lcom/unity3d/splash/services/a;)V

    invoke-static {p1}, Lcom/unity3d/splash/services/c/b/a;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/splash/services/c/b/a;->e(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/splash/services/c/b/a;->d(Landroid/app/Application;)V

    invoke-static {p4}, Lcom/unity3d/splash/services/c/b/b;->o(Z)V

    invoke-static {p3}, Lcom/unity3d/splash/services/c/b/b;->p(Z)V

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/b;->b()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Unity Services environment check OK"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->h(Ljava/lang/String;)V

    new-instance p0, Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {p0}, Lcom/unity3d/splash/services/core/configuration/a;-><init>()V

    invoke-static {p0}, Lcom/unity3d/splash/services/core/configuration/d;->a(Lcom/unity3d/splash/services/core/configuration/a;)V

    return-void

    :cond_7
    const-string p0, "Error during Unity Services environment check, halting Unity Services init"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    sget-object p0, Lcom/unity3d/splash/services/UnityServices$UnityServicesError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/splash/services/UnityServices$UnityServicesError;

    const-string p1, "Unity Services init environment check failed"

    invoke-interface {p2, p0, p1}, Lcom/unity3d/splash/services/a;->a(Lcom/unity3d/splash/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    :goto_1
    const-string p0, "Error while initializing Unity Services: empty game ID, halting Unity Ads init"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    sget-object p0, Lcom/unity3d/splash/services/UnityServices$UnityServicesError;->INVALID_ARGUMENT:Lcom/unity3d/splash/services/UnityServices$UnityServicesError;

    const-string p1, "Empty game ID"

    invoke-interface {p2, p0, p1}, Lcom/unity3d/splash/services/a;->a(Lcom/unity3d/splash/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
