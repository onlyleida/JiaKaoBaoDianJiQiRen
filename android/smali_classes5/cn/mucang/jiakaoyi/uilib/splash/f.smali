.class public final synthetic Lcn/mucang/jiakaoyi/uilib/splash/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/f;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/f;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->x(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;)V

    return-void
.end method
