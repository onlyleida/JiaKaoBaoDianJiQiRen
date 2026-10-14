.class public final Lcom/unity3d/splash/UnityAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/UnityAds$UnityAdsError;,
        Lcom/unity3d/splash/UnityAds$PlacementState;,
        Lcom/unity3d/splash/UnityAds$FinishState;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/unity3d/splash/services/b/a;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/a;ZZ)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/splash/UnityAds;->a:Z

    return v0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/unity3d/splash/UnityAds;->a:Z

    return-void
.end method
