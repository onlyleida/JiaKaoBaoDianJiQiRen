.class Lf/a/a/a/i/g$b;
.super Lcn/mucang/android/core/api/verify/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/i/g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->launch(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
