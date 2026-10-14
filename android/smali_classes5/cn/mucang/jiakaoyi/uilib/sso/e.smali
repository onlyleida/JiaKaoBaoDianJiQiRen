.class public final synthetic Lcn/mucang/jiakaoyi/uilib/sso/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/e;->a:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/e;->a:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->p(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V

    return-void
.end method
