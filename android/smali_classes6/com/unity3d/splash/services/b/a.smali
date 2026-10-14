.class public final Lcom/unity3d/splash/services/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/unity3d/splash/a;)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/splash/services/b/b/a;->a(Lcom/unity3d/splash/a;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/a;ZZ)V
    .locals 1

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->d()V

    invoke-static {p2}, Lcom/unity3d/splash/services/b/a;->a(Lcom/unity3d/splash/a;)V

    new-instance v0, Lcom/unity3d/splash/services/b/a$a;

    invoke-direct {v0, p2}, Lcom/unity3d/splash/services/b/a$a;-><init>(Lcom/unity3d/splash/a;)V

    invoke-static {p0, p1, v0, p3, p4}, Lcom/unity3d/splash/services/UnityServices;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/services/a;ZZ)V

    return-void
.end method
