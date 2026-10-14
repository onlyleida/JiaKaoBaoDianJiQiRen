.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/check/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/f;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/f;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/f;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/f;->c:Landroid/app/Activity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method
