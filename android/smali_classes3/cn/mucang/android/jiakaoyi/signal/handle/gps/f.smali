.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gps_exam_type_use_5"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a:Z

    return-void
.end method

.method public static a(I)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    if-eq p0, v3, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-eq p0, v3, :cond_3

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static b(Z)V
    .locals 1

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a:Z

    const-string v0, "gps_exam_type_use_5"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    return-void
.end method
