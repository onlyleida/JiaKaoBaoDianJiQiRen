.class Lcn/mucang/android/core/api/verify/geetest/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/geetest/b$d;->gtReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/verify/geetest/b$d;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/geetest/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$d$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$d$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$d;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$d;->a:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->e(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
