.class public final synthetic Lcn/mucang/jiakaoyi/uilib/sso/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/sso/c;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/sso/c;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;->b(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V

    return-void
.end method
