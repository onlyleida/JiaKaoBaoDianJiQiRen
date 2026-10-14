.class Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/geetest/b$c$a;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/geetest/b$c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->a(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;-><init>(Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
