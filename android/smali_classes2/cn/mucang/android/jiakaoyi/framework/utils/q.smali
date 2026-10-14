.class public Lcn/mucang/android/jiakaoyi/framework/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "V600"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/q;->a:Z

    const-string v0, "YT576"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/q;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
