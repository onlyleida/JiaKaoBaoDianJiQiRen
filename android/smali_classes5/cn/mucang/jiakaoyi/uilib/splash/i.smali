.class public final synthetic Lcn/mucang/jiakaoyi/uilib/splash/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/i;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/i;->b:Z

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/splash/i;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/i;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/i;->b:Z

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/i;->c:Z

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->A(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;ZZ)V

    return-void
.end method
