.class public final synthetic Lcn/mucang/jiakaoyi/uilib/splash/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/a;->a:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/a;->b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/a;->a:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/a;->b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->d(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Landroid/view/View;)V

    return-void
.end method
