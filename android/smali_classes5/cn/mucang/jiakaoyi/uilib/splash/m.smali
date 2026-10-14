.class public final synthetic Lcn/mucang/jiakaoyi/uilib/splash/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/m;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/m;->b:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/m;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/m;->b:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->b(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;)V

    return-void
.end method
