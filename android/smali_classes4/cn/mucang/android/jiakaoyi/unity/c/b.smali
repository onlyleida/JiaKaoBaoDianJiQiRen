.class public Lcn/mucang/android/jiakaoyi/unity/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "robot_is_android_version"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/unity/c/b;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/unity/c/b;->a:Z

    return v0
.end method
