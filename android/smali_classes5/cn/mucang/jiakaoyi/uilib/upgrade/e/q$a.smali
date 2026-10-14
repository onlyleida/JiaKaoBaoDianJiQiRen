.class final Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->q(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;->b:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_2

    .line 2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->c()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;->b:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;

    invoke-direct {v2, p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;-><init>(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
