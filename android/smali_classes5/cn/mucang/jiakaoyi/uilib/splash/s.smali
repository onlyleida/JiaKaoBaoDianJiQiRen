.class public final synthetic Lcn/mucang/jiakaoyi/uilib/splash/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/s;->a:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/s;->a:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->y(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Landroid/view/View;)V

    return-void
.end method
