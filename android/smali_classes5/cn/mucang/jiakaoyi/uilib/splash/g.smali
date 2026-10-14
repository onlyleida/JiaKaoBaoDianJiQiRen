.class public final synthetic Lcn/mucang/jiakaoyi/uilib/splash/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/n/c/a;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/g;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/g;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/g;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/g;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->y(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/app/Activity;Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method
