.class public Lcn/mucang/android/account/g/r/c;
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result p1

    const/16 p2, 0x193

    if-ne p1, p2, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/AccountManager;->m()V

    :cond_0
    return-void
.end method
