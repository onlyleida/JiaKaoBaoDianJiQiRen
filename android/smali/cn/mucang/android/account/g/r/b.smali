.class public Lcn/mucang/android/account/g/r/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/request/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/core/api/ApiResponse;Lcn/mucang/android/core/api/request/MucangRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result p2

    const/16 v0, 0x7530

    if-ne p2, v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Lcn/mucang/android/account/g/r/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/account/g/r/b$a;-><init>(Lcn/mucang/android/account/g/r/b;Lcn/mucang/android/core/api/ApiResponse;Landroid/app/Activity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
