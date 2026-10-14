.class public interface abstract Lcn/mucang/jiakaoyi/uilib/login/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/login/m$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J4\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0011H\u0017J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0017J\u0008\u0010\u0015\u001a\u00020\u0003H\u0017J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H\'J \u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/LoginListener;",
        "",
        "beforeLoginStart",
        "",
        "data",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;",
        "getDeviceType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;",
        "getPrivacyViews",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;",
        "loginType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "interceptLogin",
        "user",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "next",
        "Lkotlin/Function0;",
        "back",
        "notifyBusiness",
        "",
        "onRefusePrivacy",
        "onSsoLogin",
        "activity",
        "Landroid/app/Activity;",
        "onUserLogin",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
.end method

.method public abstract b()V
.end method

.method public abstract c(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;
.end method

.method public abstract f(Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
.end method

.method public abstract g(Landroid/app/Activity;)V
.end method

.method public abstract h(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)Z
.end method
