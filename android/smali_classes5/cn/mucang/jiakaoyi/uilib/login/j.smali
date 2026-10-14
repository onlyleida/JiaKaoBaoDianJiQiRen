.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/j;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/j;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->x(Landroid/app/Activity;)V

    return-void
.end method
