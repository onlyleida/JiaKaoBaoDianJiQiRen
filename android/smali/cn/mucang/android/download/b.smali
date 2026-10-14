.class public Lcn/mucang/android/download/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/mucang/android/core/config/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/s;->h()Lcn/mucang/android/core/config/s;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/download/b;->a:Lcn/mucang/android/core/config/s;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/download/b;->a:Lcn/mucang/android/core/config/s;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/core/config/s;->d(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
