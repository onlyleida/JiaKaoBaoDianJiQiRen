.class public Lcn/mucang/android/jiakaoyi/framework/utils/n;
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
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "debugKeyBlueTooth"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a:Ljava/lang/Boolean;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b(Z)V
    .locals 0

    return-void
.end method

.method public static c(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a:Ljava/lang/Boolean;

    const-string v0, "debugKeyBlueTooth"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    return-void
.end method
