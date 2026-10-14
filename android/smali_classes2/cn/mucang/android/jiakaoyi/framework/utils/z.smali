.class public Lcn/mucang/android/jiakaoyi/framework/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/z;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "keyK2GpsToGear"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/z;->a:Ljava/lang/Boolean;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/z;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
