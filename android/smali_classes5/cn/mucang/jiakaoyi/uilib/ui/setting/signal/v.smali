.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/v;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/v;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/v;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/v;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;Landroid/view/View;)V

    return-void
.end method
