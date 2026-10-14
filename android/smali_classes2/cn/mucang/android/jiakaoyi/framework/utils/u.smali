.class public Lcn/mucang/android/jiakaoyi/framework/utils/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/u;->a:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/u;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/u;->a:Z

    return-void
.end method
