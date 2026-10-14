.class public Lcn/mucang/android/jiakaoyi/signal/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/d/i;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "gps_speed_type"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/signal/d/i;->a:Z

    .line 3
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/signal/d/i;->b:Z

    .line 4
    :cond_0
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/d/i;->a:Z

    return v0
.end method

.method public static b(Z)V
    .locals 1

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/d/i;->a:Z

    const-string v0, "gps_speed_type"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    instance-of p0, p0, Lcn/mucang/android/jiakaoyi/framework/a;

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/a;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/a;->g()V

    :cond_0
    return-void
.end method
